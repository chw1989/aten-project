/**
 * 
 */
package org.eapp.oa.flow.handler.travel;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eapp.oa.system.config.SysConstants;
import org.eapp.oa.travel.blo.IBusTripApplyBiz;
import org.eapp.util.spring.SpringHelper;
import org.eapp.workflow.exe.ContextVariable;
import org.eapp.workflow.exe.Execution;
import org.eapp.workflow.handler.IActionHandler;

/**
 * 作废
 * @author zsy
 * @version Nov 30, 2008
 */
public class CancellationEvent implements IActionHandler {
	private static final Log log = LogFactory.getLog(CancellationEvent.class);
	/**
	 * 
	 */
	private static final long serialVersionUID = 5609321207037277719L;

	@Override
	public void execute(Execution exe) throws Exception {
		ContextVariable var = exe.getFlowInstance().getVariable(SysConstants.FLOW_VARNAME_FORMID);
		String formId = var.getValue();//报销单号
		
		IBusTripApplyBiz busTripApplyBiz = (IBusTripApplyBiz) SpringHelper.getSpringContext().getBean("busTripApplyBiz");
		
		//更新报销单
		busTripApplyBiz.txModifyTravel(formId, false);
		
		log.info("CancellationEvent..");
	}

}
