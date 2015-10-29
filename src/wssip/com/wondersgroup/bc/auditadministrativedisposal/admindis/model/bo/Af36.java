package com.wondersgroup.bc.auditadministrativedisposal.admindis.model.bo;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.wondersgroup.bc.auditadministrativedisposal.admindis.model.BaseAf36;

/**
 * 延期审批表
 * @author ltt
 * @version $Revision$ 2012-12-10
 * @author ($Date$ modification by $Author$)
 * @since 1.0
 */
@Entity
@org.hibernate.annotations.Entity (dynamicUpdate = true)
@Table( name = "AF36")
public class Af36 extends BaseAf36{

}
