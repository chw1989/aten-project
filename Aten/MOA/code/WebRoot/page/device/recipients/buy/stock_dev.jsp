<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="../../../base_path.jsp"></jsp:include>
<title>设备库存</title>
<script type="text/javascript" src="${ermpPath}jqueryui/select/jquery.select.js"></script>
<script type="text/javascript" src="${ermpPath}jqueryui/datepicker/ui.datepicker.js"></script>
<script type="text/javascript" src="page/device/recipients/buy/stock_dev.js"></script>
<style>
html {
	overflow:hidden
}
</style>
</head>
<body class="oppBd">
<input type="hidden" id="deviceClass" value=""/>
<div class="oppConScroll" style="height:340px">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td><div class="soso">
          <div class="t01" style="height:auto">
            <table border="0" cellpadding="0" cellspacing="0"  style="table-layout:fixed">
              <tr>
                <td width="60"></td>
                <td width="131"></td>
                <td width="66"></td>
                <td width="111"></td>
                <td width="66"></td>
              </tr>
              <tr>
                <td class="soPaddLeft">设备类别：</td>
                <td><div style="width:139px">
                    <div id="deviceClassSel">
                    </div>
                  </div></td>
                <td class="soPaddLeft">设备名称：</td>
                <td><input id="deviceName" type="text" maxlength="50" class="ipt05"  style="width:99px"/></td>
                <td><input id="btnQueryDevices" class="allBtn" type="button" value="搜索"/></td>
              </tr>
            </table>
          </div>
        </div></td>
    </tr>
    <tr>
      <td><div class="allList">
          <table id="" width="100%" border="0" cellspacing="0" cellpadding="0">
            <thead>
              <tr>
                <th width="60">设备编号</th>
                <th width="100">设备名称</th>
                <th width="70">设备类别</th>
                <th width="60">设备型号</th>
                <th width="">配置信息</th>
                <th width="80"><div style="width:80px">购买日期</div></th>
              </tr>
            </thead>
            <tbody id="devicesBody">
            </tbody>
          </table>
          <!-- 翻页 -->
			<div class="pageNext"></div>		
			<input id="hidNumPage" type="hidden" value="1"/>
			<input id="hidPageCount" type="hidden" value="10"/>
		  <!-- 翻页 结束-->
      </div></td>
    </tr>
  </table>
</div>
<div style="text-align:center">
  <input id="closeBtn" type="button" value="关 闭" class="allBtn" onclick="doclose()"/>
</div>
</body>
