<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-Transitional.dtd">
<script type="text/javascript" src="${ermpPath}jqueryui/select/jquery.select.js"></script>
<script type="text/javascript" src="page/MyCustomer/CustomerInfo/consultRecordList.js"></script>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<!--工具栏-->
			<div id="consultRecord_add" class="addTool sortLine"><div class="t01">
				<input type="button" class="add_btn" />
			</div></div>
			<!--工具栏 end-->
			<div class="blank2"></div>
		</td>
	</tr>
</table>
<!--列表-->
<div class="allList">
<table id="consultRecordTab" width="100%" border="0" cellspacing="0" cellpadding="0">
  <thead>
	<tr>
		<th width="10%">登记人</th>
		<th width="20%">登记时间</th>
		<th width="60%">咨询内容</th>
		<th width="10%">操作</th>
	</tr>
  </thead>
 <tbody id="consultRecordList">
 </tbody>
</table>
</div>
<!--翻页-->
<input type="hidden" id="hidNumPage" value="1"/>
<input type="hidden" id="hidPageCount" value="15"/> 
<div class="pageNext">
</div>
<!--翻页 end-->
<!--列表 end-->