package org.meveo.admin.job;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.inject.Inject;
import javax.interceptor.Interceptors;

import org.meveo.admin.exception.BusinessException;
import org.meveo.admin.job.logging.JobLoggingInterceptor;
import org.meveo.commons.utils.FileUtils;
import org.meveo.commons.utils.ParamBean;
import org.meveo.interceptor.PerformanceInterceptor;
import org.meveo.model.crm.Provider;
import org.meveo.model.jobs.JobExecutionResultImpl;
import org.meveo.model.mediation.CDRRejectionCauseEnum;
import org.meveo.model.rating.EDR;
import org.meveo.service.billing.impl.EdrService;
import org.meveo.service.medina.impl.CDRParsingException;
import org.meveo.service.medina.impl.CDRParsingService;
import org.meveo.util.ApplicationProvider;
import org.slf4j.Logger;

/**
 * @author Edward P. Legaspi
 **/
@Stateless
public class MediationJobBean {

	@Inject
	private EdrService edrService;

	@Inject
	private CDRParsingService cdrParser;

	@Inject
	private Logger log;
	
    @Inject
    @ApplicationProvider
    protected Provider appProvider;

	String cdrFileName;
	File cdrFile;
	String inputDir;
	String outputDir;
	PrintWriter outputFileWriter;
	String rejectDir;
	PrintWriter rejectFileWriter;
	String report;

	@Interceptors({ JobLoggingInterceptor.class, PerformanceInterceptor.class })
	@TransactionAttribute(TransactionAttributeType.NEVER)
	public void execute(JobExecutionResultImpl result, String parameter,File file) {
		log.debug("Running with parameter={}", parameter);
		report="";

		ParamBean parambean = ParamBean.getInstance();
		String meteringDir = parambean.getProperty("providers.rootDir", "./opencelldata/") + File.separator + appProvider.getCode() + File.separator + "imports" + File.separator
				+ "metering" + File.separator;

		outputDir = meteringDir + "output";
		rejectDir = meteringDir + "reject";
		
		File f = new File(outputDir);
		if (!f.exists()) {
			f.mkdirs();
		}
		f = new File(rejectDir);
		if (!f.exists()) {
			f.mkdirs();
		}

		if (file != null) {
			
			cdrFileName = file.getAbsolutePath();
			log.info("InputFiles job {} in progress...", file.getName());

			cdrFileName = file.getName();
			File currentFile = FileUtils.addExtension(file, ".processing");
			BufferedReader cdrReader = null;
			try {
				addReport("File = " + file.getName() );
				cdrReader = new BufferedReader(new InputStreamReader(new FileInputStream(currentFile)));
				cdrParser.init(file);
				String line = null;
				int processed = 0;

				while ((line = cdrReader.readLine()) != null) {
					processed++;
					try {
						createEdr(line);
						outputCDR(line);
						result.registerSucces();
                    } catch (CDRParsingException e) {
                    	addReport("Line=" + processed ,e.getClass().getSimpleName(),e.getMessage());
                        log.warn("error while parsing cdr {} {}", e.getClass().getSimpleName(), e.getMessage());
						result.registerError("file=" + file.getName() + ", line=" + processed + ": " + e.getRejectionCause().name());
						rejectCDR(line, e.getRejectionCause());
					} catch (Exception e) {
						addReport("Line=" + processed ,e.getMessage());
						log.warn("error on reject cdr ",e);
						result.registerError("file=" + file.getName() + ", line=" + processed + ": " + e.getMessage());
						rejectCDR(line, CDRRejectionCauseEnum.TECH_ERR);
					}
				}

				if (processed == 0) {
					addReport("file is empty ");
				}
				result.setNbItemsToProcess(result.getNbItemsToProcess() + processed);
				log.info("InputFiles job {} done.", file.getName());
			} catch (Exception e) {
				log.error("Failed to process CDR file {}", file.getName(), e);
				result.registerError(e.getMessage());
				FileUtils.moveFile(rejectDir, currentFile, file.getName());

			} finally {

				try {
					if (cdrReader != null) {
						cdrReader.close();
					}
				} catch (Exception e) {
					log.error("Failed to close CDR reader for file {}", file.getName(), e);
				}

				try {
					if (currentFile != null) {
						currentFile.delete();
					}
				} catch (Exception e) {
					addReport("cannot delete " + cdrFileName);
				}

				try {
					if (rejectFileWriter != null) {
						rejectFileWriter.close();
						rejectFileWriter = null;
					}
				} catch (Exception e) {
					log.error("Failed to close rejected CDR writer for file {}", file.getName(), e);
				}

				try {
					if (outputFileWriter != null) {
						outputFileWriter.close();
						outputFileWriter = null;
					}
				} catch (Exception e) {
					log.error("Failed to close output file writer for file {}", file.getName(), e);
				}
			}


			result.addReport(report);
		} else {
			log.info("no file to process");
		}

	}

	private void addReport(String... strings) {
		report+= "\r\n";
		for(String smallReport : strings){
	        report+= smallReport+". ";
	    }	
	}

	@TransactionAttribute(TransactionAttributeType.REQUIRES_NEW)
	private void createEdr(String line) throws CDRParsingException, BusinessException {
		List<EDR> edrs = cdrParser.getEDRList(line, CDRParsingService.CDR_ORIGIN_JOB);
		if (edrs != null && edrs.size() > 0) {
			for (EDR edr : edrs) {
				createEdr(edr);
			}
		}
	}

	private void outputCDR(String line) throws FileNotFoundException {
		if (outputFileWriter == null) {
			File outputFile = new File(outputDir + File.separator + cdrFileName + ".processed");
			outputFileWriter = new PrintWriter(outputFile);
		}
		outputFileWriter.println(line);
	}

	private void rejectCDR(String line, CDRRejectionCauseEnum reason) {

		if (rejectFileWriter == null) {
			File rejectFile = new File(rejectDir + File.separator + cdrFileName + ".rejected");
			try {
				rejectFileWriter = new PrintWriter(rejectFile);
			} catch (FileNotFoundException e) {
				log.error("Failed to create a rejection file {}", rejectFile.getAbsolutePath());
			}
		}
		
		rejectFileWriter.println(line + "\t" + reason.name());
		

	}

	@TransactionAttribute(TransactionAttributeType.REQUIRES_NEW)
	public void createEdr(EDR edr) throws BusinessException {
		edrService.create(edr);
	}
}