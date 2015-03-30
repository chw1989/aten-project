<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/eapp.tld" prefix="eapp" %>

<script type="text/javascript" src="page/contract/request/query_check.js"></script>

<input id="r_userActionKeys1" type="hidden" value="<eapp:right key='send_check'/>" />
<div class="blank3"></div>
<div class="soso">
  <div class="t01">
  <table border="0" cellspacing="0" cellpadding="0">
	  <tr>
		<td>产品项目：</td>
		<td><input id="prodName" type="text" maxlength="40" class="ipt01" style="width:200px" />&nbsp;&nbsp;</td>
		<td>
			<input id="searchInfo" type="button" value="搜索" class="allBtn" r-action="query"/>
		</td>
	  </tr>
  </table>
  </div>
</div>
<!--列表-->
<div class="allList">
<table id="informationTab" width="100%" border="0" cellspacing="0" cellpadding="0">
  <thead>
	<tr>
		<th width="36%">产品项目</th>
		<th width="12%">所属机构</th>
		<th width="7%">所需合同数</th>
		<th width="8%">登记人</th>
		<th width="9%">登记时间</th>
		<th width="17%">需求备注</th>
		<th width="6%">首次登记</th>
		<th width="5%">操作</th>
	</tr>
  </thead>
 <tbody id="data_list">
 </tbody>
</table>
</div>
<!--翻页-->
<input type="hidden" id="hidNumPage" value="1"/>
<input type="hidden" id="hidPageCount" value="10"/> 
<div class="pageNext">
</div>
<!--翻页 end-->
<!--列表 end-->
