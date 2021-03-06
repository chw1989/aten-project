package org.eapp.oa.hr.ctrl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eapp.comobj.SessionAccount;
import org.eapp.comobj.SessionAccount.Name;
import org.eapp.oa.flow.blo.ITaskBiz;
import org.eapp.oa.flow.ctrl.TaskDealCtrl;
import org.eapp.oa.flow.hbean.Task;
import org.eapp.oa.hr.blo.IHolidayApplyBiz;
import org.eapp.oa.hr.dto.HolidayApplyList;
import org.eapp.oa.hr.hbean.HolidayApply;
import org.eapp.oa.system.config.SysCodeDictLoader;
import org.eapp.oa.system.config.SysConstants;
import org.eapp.oa.system.exception.OaException;
import org.eapp.oa.system.util.web.HttpRequestHelper;
import org.eapp.oa.system.util.web.XMLResponse;
import org.eapp.util.spring.SpringHelper;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;


/**
 * 处理请假单的待办
 * @version
 */
public class HolidaysDealCtrl extends HttpServlet {

	
	private static final long serialVersionUID = -5572557105969757507L;
	
	private IHolidayApplyBiz holidayApplyBiz;
	private ITaskBiz taskBiz;
	private TaskDealCtrl taskDealCtrl;
	/**
	 * Constructor of the object.
	 */
	public HolidaysDealCtrl() {
		super();
	}

	/**
	 * 
	 */
	public void init() throws ServletException {
		holidayApplyBiz = (IHolidayApplyBiz) SpringHelper.getSpringContext().getBean("holidayApplyBiz");
		taskBiz = (ITaskBiz) SpringHelper.getSpringContext().getBean("taskBiz");
		taskDealCtrl = new TaskDealCtrl();
		taskDealCtrl.init();
	}

	/**
	 * 
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * 
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("act");
		if (SysConstants.QUERY.equalsIgnoreCase(action)) {
			//查询待处理的请假单
			queryDealingHolidayApply(request, response);
			return;
		} else if (SysConstants.DISPOSE.equalsIgnoreCase(action)) {
			//转到任务绑定的URL,并认领
			turnViewPage(request, response);
		} else if ("view_approve".equalsIgnoreCase(action)) {
			//任务处理页面——审批
			initHolidayApprove(request, response);
		} else if ("deal_approve".equalsIgnoreCase(action)) {
			//处理审批任务
			dealTaskApprove(request, response);
			return;
		} else if ("deal_modify".equalsIgnoreCase(action)) {
			//申请人处理修改报销单任务
			dealModifyHolidayApply(request, response);
			return;
		} 
		
	}
	
	
	private void queryDealingHolidayApply(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		SessionAccount user = (SessionAccount)request.getSession().getAttribute(SysConstants.SESSION_USER_KEY);
		if (user == null) {
			XMLResponse.outputStandardResponse(response, 0, "请先登录");
			return;
		}
		List<String> userRoles = new ArrayList<String>();
		List<Name> roles = user.getRoles();
		if (roles != null && !roles.isEmpty()) {
			for (Name role : roles) {
				userRoles.add(role.getName());
			}
		}
		List<HolidayApply> holidayApply = holidayApplyBiz.getDealingHolidayApply(user.getAccountID(), userRoles);
		XMLResponse.outputXML(response, new HolidayApplyList(holidayApply).toDocument());
	}
	
	
	public void turnViewPage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		taskDealCtrl.turnToViewPage(request, response);		
	}
	
	private void initHolidayApprove(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		SessionAccount user = (SessionAccount)request.getSession().getAttribute(SysConstants.SESSION_USER_KEY);
		if (user == null) {
			XMLResponse.outputStandardResponse(response, 0, "请先登录");
			return;
		}
		try {
			
			String id = HttpRequestHelper.getParameter(request, "id");//报销单号
			String taskInstanceId = HttpRequestHelper.getParameter(request, "tiid");//任务ID,从上一个地址转过来的参数
			String flag = HttpRequestHelper.getParameter(request, "type");
			if (id == null || taskInstanceId == null) {
				throw new OaException("参数不能为空");
			}
			HolidayApply holidayApply = holidayApplyBiz.getHolidayApplyById(id);
			if (holidayApply == null) {
				throw new OaException("请假单不存在！");
			}
			
			request.setAttribute("holidayApply", holidayApply);
			List<Task> tasks = holidayApplyBiz.getEndedTasks(id);
			request.setAttribute("tasks", tasks);
			List<String> transitions = taskBiz.getTaskTransitions(taskInstanceId);
			request.setAttribute("transitions", transitions);
			request.setAttribute("areas", SysCodeDictLoader.getInstance().getAreaMap().values());
			request.setAttribute("holiJson", JSON.toJSONStringWithDateFormat(holidayApply, "yyyy-MM-dd", SerializerFeature.WriteDateUseDateFormat));
			Map<String, Double> holidayInfos = holidayApplyBiz.getUserHolidayStat(user.getAccountID());
			request.setAttribute("holidayInfos", holidayInfos);
			String pageUrl = null;
			if ("m".equals(flag)) {//发起人导修改
				pageUrl = "/page/hr/holidays/tview_modify.jsp";
			} else {
				pageUrl = "/page/hr/holidays/tview_dispose.jsp";
			}
			
			request.getRequestDispatcher(pageUrl).forward(request, response);
			
		} catch (OaException e1) {
			request.setAttribute(SysConstants.REQUEST_ERROR_MSG, e1.getMessage());
			request.getRequestDispatcher("/page/error.jsp").forward(request, response);
		} catch(Exception e) {
			e.printStackTrace();
			request.setAttribute(SysConstants.REQUEST_ERROR_MSG, "系统出错");
			request.getRequestDispatcher("/page/error.jsp").forward(request, response);
		}
	}

	
	public void dealTaskApprove(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		taskDealCtrl.dealApprove(request, response);
	}
	

	private void dealModifyHolidayApply(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String taskInstanceId = HttpRequestHelper.getParameter(request, "tiid");//任务ID
		String comment = HttpRequestHelper.getParameter(request, "comment");//意见
		String transitionName = HttpRequestHelper.getParameter(request, "transition");//转向
		if (taskInstanceId == null || transitionName == null) {
			XMLResponse.outputStandardResponse(response, 0, "参数不能为空");
			return;
		}
		if (comment != null) {
			comment = transitionName + "，" + comment;
		} else {
			comment = transitionName;
		}
		String json = HttpRequestHelper.getParameter(request, "json");
		HolidayApply reDraft = JSON.parseObject(json, HolidayApply.class);
		if (reDraft == null) {
			XMLResponse.outputStandardResponse(response, 0, "请填写请假单！");
			return;
		}
		try {
			holidayApplyBiz.txDealApproveTask(taskInstanceId, comment, transitionName, reDraft);
			XMLResponse.outputStandardResponse(response, 1, "提交成功");
		} catch(NumberFormatException e) {
			XMLResponse.outputStandardResponse(response, 0, "数字格式出错");
			return;
		} catch(OaException e) {
			XMLResponse.outputStandardResponse(response, 0, e.getMessage());
			return;
		}catch(Exception e) {
			e.printStackTrace();
			XMLResponse.outputStandardResponse(response, 0, "提交失败");
			return;
		}
	}
	
}
