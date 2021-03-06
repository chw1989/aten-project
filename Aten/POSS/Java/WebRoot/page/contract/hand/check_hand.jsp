<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-Transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<jsp:include page="../../base_path.jsp"></jsp:include>
<meta http-equiv="Content-Language" content="en" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${ermpPath}jqueryui/datepicker/ui.datepicker.js"></script>
<script type="text/javascript" src="page/contract/hand/check_hand.js"></script>
<title></title>
</head>
<body class="bdDia">
<input type="hidden" id="reqId"  value="${contractHand.id}" />
<div class="dialogBk">
  <div class="addCon">
  <table width="100%" border="0" cellpadding="0"  cellspacing="1" align="center">
    <tr>
		<td class="tit">产品项目： </td>
		<td><a href="javascript:void(0);"  onclick="viewProdInfo('${contractHand.prodId}')">${contractHand.prodName}</a></td>	
		<td class="tit">所属机构：</td>
		<td>${contractHand.orgName}</td>
	</tr>
	<tr>
    	<td class="tit">上交备注：</td>
		<td>${contractHand.handRemark}</td>
		<td class="tit">上交时间：</td>
		<td><fmt:formatDate value="${contractHand.handDate}" pattern="yyyy-MM-dd"/></td>
	</tr>
	<tr>
		<td class="tit"><span class="cRed">*</span>签署合同数：</td>
		<td><input id="signNums" type="text" maxlength="10" class="ipt01" value="${contractHand.signNums}"/></td>
    	<td class="tit"><span class="cRed">*</span>空白合同数：</td>
		<td><input id="blankNums" type="text" maxlength="10" class="ipt01" value="${contractHand.blankNums}"/></td>
	</tr>
	<tr>
		<td class="tit"><span class="cRed">*</span>签废合同数：</td>
		<td><input id="invalidNums" type="text" maxlength="10" class="ipt01" value="${contractHand.invalidNums}"/></td>
    	<td class="tit"><span class="cRed">*</span>不通过合同数：</td>
		<td><input id="unPassNums" type="text" maxlength="10" class="ipt01"/></td>
	</tr>
	
	<tr>
    	<td class="tit">审核备注：</td>
		<td colspan="3"><textarea id="checkRemark" class="area01"></textarea></td>
	</tr>
  </table>
  </div>
</div>
<!--新增客户资料 end-->
<div class="addTool2" style="margin-top:5px;">
  <input type="button" id="save"  class="allBtn" value="保存"/>&nbsp;&nbsp;
  <input type="button" id="close" class="allBtn" value="关闭"/>
</div>
</body>