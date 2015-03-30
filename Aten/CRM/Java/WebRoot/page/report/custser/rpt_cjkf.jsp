﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/eapp.tld" prefix="eapp" %>
<script type="text/javascript" src="page/report/custser/rpt_cjkf.js"></script>
<script type="text/javascript" src="${ermpPath}jqueryui/datepicker/ui.datepicker.js"></script>
<input id="hidModuleRights" type="hidden" value="<eapp:right key='CJKF'/>" />
<!--工具栏-->
<div class="addTool sortLine">
  <div class="t01 t_f01">
	  <input type="button" class="queryAssign_btn"  id="queryAssign"/>
  </div>
</div>
<!--工具栏 end-->
<div class="blank3"></div>
<div class="soso" style="height:50px;">
<input id="currentUser" type="hidden" value="${sessionUser.accountID}"/>
  <div class="t01">
    <table cellspacing="0" cellpadding="0" border="0" >
      <tbody>
        <tr>
		  <td>客户名称：</td>
		  <td><input id="custName" type="text" class="ipt01" style="width:120px"/>&nbsp;&nbsp;</td>
          <td>成交产品：</td>
          <td><div id="prodInfoDiv" name="prodInfoSel"></div>&nbsp;&nbsp;</td>
		  <td>划款时间：<input readonly id="bgnTransferDate" type="text" class="invokeBoth" style="width:70px"/>
			到<input readonly  id="endTransferDate" type="text" class="invokeBoth" style="width:70px"/>&nbsp;&nbsp;</td>
          <td>
          	<input type="button" value="查询" class="allBtn" id="query">&nbsp;
          	<input id="exportExcel" class="allBtn" type="button" value="导出"/>&nbsp;
          	<div id="fullViewDiv" style="float:right;width:16px;padding:2px 2px 0 0;cursor:pointer;display:none"><input type="image" src="themes/comm/images/fullSscreen.png" id="fullView" title="全屏查看"/></div>
          </td>
        </tr>
        <tr style="height:26px">
          <td>所属团队：</td>
		  <td><input id="deptName" readonly type="text" class="ipt01" style="width:110px"/>
	       <button id="showGroup" class="selBtn"></button>&nbsp;&nbsp;</td>
		  <td>投资顾问：</td>
		  <td><div id="userIdDiv" name="userIdSel"></div>&nbsp;&nbsp;</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>

<!--列表-->
<iframe id="rptFrame" name="rptFrame" frameborder="0" width="100%" ></iframe>
<!--列表 end-->
