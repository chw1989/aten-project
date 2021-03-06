package org.eapp.oa.device.dto;

import java.util.Collection;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.eapp.oa.device.hbean.DevRepairForm;
import org.eapp.oa.system.util.web.XMLResponse;
import org.eapp.util.web.DataFormatUtil;

import org.eapp.oa.system.config.SysConstants;


public class DevRepairFormListDTO {
	private Collection<DevRepairForm> devRepairFormLists;

	public DevRepairFormListDTO(Collection<DevRepairForm> devRepairFormLists){
		this.devRepairFormLists = devRepairFormLists;
	}

	public Collection<DevRepairForm> getDevRepairFormLists() {
		return devRepairFormLists;
	}

	public void setDevRepairFormLists(Collection<DevRepairForm> devRepairFormLists) {
		this.devRepairFormLists = devRepairFormLists;
	}
	
	/**
	 * <?xml version="1.0" encoding="utf-8" ?> 
	 * <root>
	 *   <message code="1" /> 
	 *   <content>
	 *     <document id="ID">
	 *       <device-id>设备id</device-id> 
	 *       <repairForm-no>维修单号</repairForm-no>
	 *       <account-id></account-id>
	 *       <account-name>设备名称</account-name>
	 *       <group-name>设备型号</group-name>
	 *       <status>设备描述</status>
	 *       <create-time>当前状态</create-time>
	 *       <budget-money>购买时间</budget-money>
	 *       <reason>购买方式</reason>
	 *       <remark>购买方式</remark>
	 *     </repairForm-config>
	 *   </content>
	 * </root>
	 * @return
	 */
	
	public Document toDocument() {
		Document doc = DocumentHelper.createDocument();
		doc.setXMLEncoding(XMLResponse.DEFAULT_ENCODING);
		Element root = doc.addElement("root");
		if (devRepairFormLists == null) {
			root.addElement("message").addAttribute("code", "0");
			return doc;
		}
		root.addElement("message").addAttribute("code", "1");
		Element contentEle = root.addElement("content");
		Element proEle = null;
		for (DevRepairForm r : devRepairFormLists) {
			proEle = contentEle.addElement("document");				
			proEle.addAttribute("id", r.getId());
			proEle.addElement("applicant-display-name").setText(DataFormatUtil.noNullValue(r.getAccountDisplayName()));		
			proEle.addElement("apply-group-name").setText(DataFormatUtil.noNullValue(r.getGroupName()));
			proEle.addElement("apply-date").setText(DataFormatUtil.noNullValue(r.getApplyTime(),SysConstants.STANDARD_DATE_PATTERN));		
			proEle.addElement("budget-money").setText(DataFormatUtil.noNullValue(r.getBudgetMoney()));		
		}
		return doc;
	}
}
