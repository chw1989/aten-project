/**
 * 
 */
package org.eapp.workflow.expression;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.List;
import java.util.Set;
import java.util.Collection;
import javax.script.Invocable;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 表达式执行器
 * @author zsy
 * @version 2012.3.8
 */
public final class ExpressionEngine {
	/**
	 * 日志
	 */
	private static Logger logger = LoggerFactory.getLogger(ExpressionEngine.class);
	/**
	 * SCRIPT引擎管理类
	 */
	private static ScriptEngineManager mgr;
	
	/**
	 * 禁止创建对象
	 */
	private ExpressionEngine() {
		
	}
	
	static {
		//加载JavaScript引擎
		mgr = new ScriptEngineManager();
	}
	
	/**
	 * 添加表达式的函数，
	 * 被添加对象的方法可以直接在表过式中调用
	 * 如:添加Map内容为{key:$,value:obj}，
	 * 其中obj对象有test()方法返回类型为Int
	 * 则表过式：$.test() + 1,表示test()返回值加1
	 * 
	 * @param funcs 表达式的函数信息
	 */
	public static void setFunctions(Map<String, Object> funcs) {
		if (funcs == null || funcs.isEmpty()) {
			return;
		}
		for (String key : funcs.keySet()) {
			//逐个添加到Script引擎中
			//全局环境变量
			mgr.put(key, funcs.get(key));
		}
	}
	
	public static Object evalFun(String script, Map<String, Object> vars, String funName) {
		try {
			//通过名称取得实例
			ScriptEngine scriptEngine = mgr.getEngineByName("JavaScript");
			//添加上下文变量
			if (vars != null && !vars.isEmpty()) {
				for (String key : vars.keySet()) {
					scriptEngine.put(key, vars.get(key));
				}
			}
			
			//组装成JS函数来执行
			scriptEngine.eval(script);
			//获取执行结果
			Invocable inv = (Invocable) scriptEngine;   
			return inv.invokeFunction(funName);  
		} catch (ScriptException e) {
			logger.error("执行表达式出错", e);
			throw new IllegalArgumentException(e);
		} catch (NoSuchMethodException e) {
			logger.error("找不到表达式中方法", e);
			throw new IllegalArgumentException(e);
		}
	}
	
	/**
	 * 执行表达式
	 * @param exp 表达式
	 * @param vars 表达式执行的上下文变量
	 * @return 表达式执行结果
	 */
	public static Object eval(String exp, Map<String, Object> vars) {
		return evalFun("function evalExp(){return " + exp + ";}", vars, "evalExp");
	}
	
	/**
	 * 执行表达式
	 * 并将结果转为指定类型
	 * @param exp 表达式
	 * @param vars 表达式执行的上下文变量
	 * @param returnType 执行结果的目录类型
	 * @param <T> 结果类型
	 * @return 表达式执行结果
	 */
	@SuppressWarnings("unchecked")
	public static <T> T eval(String exp, Map<String, Object> vars, Class<T> returnType) {
		Object obj = eval(exp, vars);
		if (obj == null) {
			return null;
		} else if (returnType.equals(String.class)) {
			//任何对象都可以转为String类型
			return (T) getStringValue(obj);
		} else if (returnType.isInstance(obj)) {
			//是指定类型的子类可以直接转换
			return (T) obj;
		} else if (Number.class.isAssignableFrom(returnType)) {
			//如果要转为数字类型
			if (obj instanceof Number) {
				//如果结果值是数字类型
				Number n = (Number) obj;
				return getNumberValue(n, returnType);
			} else if (obj instanceof String) {
				//如果结果值是String类型，尝试格式化
				Number n = (Number) Double.parseDouble((String) obj);
				return getNumberValue(n, returnType);
			}
		} else if (sun.org.mozilla.javascript.internal.ScriptableObject.class.isInstance(obj)) {
			//如果是数组类型，转为集合
			sun.org.mozilla.javascript.internal.ScriptableObject arr = (sun.org.mozilla.javascript.internal.ScriptableObject)obj;
			return getCollectionValue(arr, returnType);
		}
		
		//否则都认为不兼容的转换关系
		throw new ClassCastException("结果类型转换出错");
	}
	
	/**
	 * 报表条件配置里的内容都是在HTML页面上生成条件界面
	 * 所以表达式最终值都要转为String类型（HTTP转参都是字符串）
	 * 其中DOUBLE或FLOAD类型自动去掉无小数值
	 * 如：123.00，返加结果为123，
	 * 123.12返回结果为123.12
	 * @param value 表达式执行结果值
	 * @return String
	 */
	protected static String getStringValue(Object value) {
		if (value == null) {
			return "";
		} else if (value instanceof Number) {
			//ScriptEngine执行运算表达式都是返回Double类型，
			//如果是整型要去掉小数点
			Number val = (Number) value;
			
			if (val.longValue() == val.doubleValue()) { 
				//说明无小数点
				//去掉后面的.00，再转String
				return Long.toString(val.longValue());
			} else {
				//直接转为String
				return val.toString();
			}
		} else {
			//其它类型直接转为String
			return value.toString();
		}
	}
	
	/**
	 * 数据类型的转换关系
	 * @param value Number类型结果值
	 * @param returnType 执行结果的目录类型
	 * @param <T> 结果类型
	 * @return 转换结果
	 */
	@SuppressWarnings("unchecked")
	protected static <T> T getNumberValue(Number value, Class<T> returnType) {
		if (returnType.equals(Integer.class)) {
			//要转为Integer类型
			return (T) new Integer(value.intValue());
		} else if (returnType.equals(Long.class)) {
			//要转为Long类型
			return (T) new Long(value.longValue());
		} else if (returnType.equals(Float.class)) {
			//要转为Float类型
			return (T) new Float(value.floatValue());
		} else if (returnType.equals(Short.class)) {
			//要转为Short类型
			return (T) new Short(value.shortValue());
		} else if (returnType.equals(Byte.class)) {
			//要转为Byte类型
			return (T) new Byte(value.byteValue());
		} else {
			//其余都转为Double类型
			return (T) new Double(value.doubleValue());
		}
	}
	
	/**
	 * 数组与集合转换
	 * @param <T>
	 * @param arrs
	 * @param returnType
	 * @return
	 */
	@SuppressWarnings("unchecked")
	protected static <T> T getCollectionValue(sun.org.mozilla.javascript.internal.ScriptableObject arrs, Class<T> returnType) {
		Object[] ids = arrs.getIds();
		if (returnType.equals(Map.class)) {
			Map<String, Object> map = new HashMap<String, Object>();
			for (Object id : ids) {
				String key = id.toString();
				map.put(key, arrs.get(key, null));
			}
			return (T)map;
		}
		Collection<Object> col = null;
		if (returnType.equals(List.class)) {
			col = new ArrayList<Object>();
		} else if (returnType.equals(Set.class)) {
			col = new HashSet<Object>();
		} else {
			throw new ClassCastException("集合类型转换出错");
		}
		for (Object id : ids) {
			col.add(arrs.get(Integer.parseInt(id.toString()), null));
		}
		return (T)col;
	}
}
