package org.eapp.poss.flow.handler;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eapp.poss.blo.ITaskBiz;
import org.eapp.util.spring.SpringHelper;
import org.eapp.workflow.exe.Execution;
import org.eapp.workflow.exe.TaskInstance;
import org.eapp.workflow.handler.IActionHandler;


/**
 * 任务实例开始事件
 * 
 * 
 * <pre>
 * 修改日期    修改人    修改原因
 * 2013-7-17    fang    新建
 * </pre>
 */
public class TaskStartEvent implements IActionHandler {
    /**
     * 
     */
    private static final long serialVersionUID = -649302482662195764L;
    /**
     * 日志
     */
    private static final Log log = LogFactory.getLog(TaskStartEvent.class);

    /*
     * (non-Javadoc)
     * 
     */
    @Override
    public void execute(Execution exe) throws Exception {

        TaskInstance ti = exe.getTaskInstance();
        ITaskBiz taskBiz = (ITaskBiz) SpringHelper.getSpringContext().getBean("taskBiz");
        taskBiz.txStartTask(ti.getId(), ti.getProcessState(), ti.getStartTime(), ti.getActorId());

        log.info("任务开始TaskStartEvent:" + ti.getTaskName());
    }

}
