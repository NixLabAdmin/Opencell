package org.meveocrm.model.dwh;

public enum LegendPositionEnum {
	n, s, e, w;

	public String getLabel() {
		return "enum.legendPosition." + this;
	}
}
