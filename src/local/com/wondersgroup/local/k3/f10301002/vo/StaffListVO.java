package com.wondersgroup.local.k3.f10301002.vo;

import com.wondersgroup.bc.auditadministrativedisposal.admindis.model.dto.StaffListDto;
import com.wondersgroup.framework.core5.model.vo.ValueObject;

public class StaffListVO extends StaffListDto implements ValueObject {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String apa701;

	private String _state;

	private String aaz077;

	public String get_state() {
		return _state;
	}

	public void set_state(String _state) {
		this._state = _state;
	}

	public String getApa701() {
		return apa701;
	}

	public void setApa701(String apa701) {
		this.apa701 = apa701;
	}

	public String getAaz077() {
		return aaz077;
	}

	public void setAaz077(String aaz077) {
		this.aaz077 = aaz077;
	}

}
