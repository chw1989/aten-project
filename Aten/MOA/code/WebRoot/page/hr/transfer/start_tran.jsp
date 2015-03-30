<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/eapp.tld" prefix="oa" %>
<!--工具栏-->
<input id="hidModuleRights" type="hidden" value="<oa:right key='tran_start'/>"/>
<div class="addTool sortLine">
	<div class="t01 t_f01">
		<input id="toAdd" type="button" class="add_btn"/>
		<input id="refresh" type="button" class="flash_btn"/>
	</div>
</div>
<!--工具栏 end-->
<!--列表-->
<div class="allList">
<table id="DeviceList" width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:auto">
  <thead>
    <tr>
		<th width="15%">异动员工</th>
		<th width="20%">调出部门</th>
		<th width="20%">调入部门</th>
		<th width="15%">调动日期</th>
		<th width="20%">申请时间</th>
		<th width="10%">操作</th>
	</tr>
  </thead>
  <tbody id="infoDraftList">
  </tbody>
</table>
</div>
<!--列表 end-->
<!--翻页-->
<input type="hidden" id="hidNumPage" value="1"/>
<input type="hidden" id="hidPageCount" value="15"/> 
<div class="pageNext">
</div>
<!--翻页 end-->
<script type="text/javascript" src="page/hr/transfer/start_tran.js"></script>
