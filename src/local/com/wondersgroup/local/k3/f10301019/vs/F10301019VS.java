package com.wondersgroup.local.k3.f10301019.vs;

import java.util.List;

import com.wondersgroup.local.k3.f10301019.vo.QueryApprovalVo;


public interface F10301019VS {

	/**审批列表查询*/
	List<QueryApprovalVo> queryData(String aaz318);

	QueryApprovalVo operateApproval(QueryApprovalVo approvalVo);
	
}
