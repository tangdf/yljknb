/** 
 * @(#)ColumnDetailModel.java May 20, 2009
 * 
 * Copyright (c) 1995-2009 Wonders Information Co.,Ltd. 
 * 1518 Lianhang Rd,Shanghai 201112.P.R.C.
 * All Rights Reserved.
 * 
 * This software is the confidential and proprietary information of Wonders Group.
 * (Social Security Department). You shall not disclose such
 * Confidential Information and shall use it only in accordance with 
 * the terms of the license agreement you entered into with Wonders Group. 
 *
 * Distributable under GNU LGPL license by gnu.org
 */

package com.wondersgroup.bc.sqapplydis.sqlapply.mapping;

/**
 * @author suhualin
 * @version $Revision: 15901 $ May 20, 2009
 * @author (lastest modification by $Author: Suhl $)
 * @since 1.0
 */
public interface ColumnDetailModel extends ColumnIndexModel {
	/**
	 * 映射键
	 */
	String getMapKey();

	/**
	 * 设置映射键
	 * 
	 * @param mapKey
	 */
	void setMapKey(String mapKey);
}
