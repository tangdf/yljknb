package com.wondersgroup.local.k3.f10301001.action;

import com.wondersgroup.framework.core.web.struts2.action.BaseAjaxAction;
import com.wondersgroup.framework.core.web.vo.VOUtils;
import com.wondersgroup.local.k3.f10301001.vo.AuditProblemVO;
import com.wondersgroup.local.k3.f10301001.vs.F10301001VS;

public class DeleteAuditProblemAction extends BaseAjaxAction{
	
	private static final String prefix = "{\"success\":true,\"result\":[";

	private static final String suffex = "]}";
	
	private static final long serialVersionUID = 1L;
	
	private F10301001VS f10301001VS;

	public F10301001VS getF10301001VS() {
		return f10301001VS;
	}

	public void setF10301001VS(F10301001VS f10301001vs) {
		f10301001VS = f10301001vs;
	}
	
	@Override
	protected String operate(){
		
		String aaz281s = this.getServletRequest().getParameter("submitIds");
		
		String result = "";
		
		if(aaz281s != null){
			
			AuditProblemVO resultVO = this.getF10301001VS().deleteAuditProblemByIds(aaz281s);
			
			result = prefix + VOUtils.getJsonData(resultVO) + suffex;
		}
		
		return result;
	}

}
