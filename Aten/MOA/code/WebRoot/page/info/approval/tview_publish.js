﻿var mainFrame = $.getMainFrame();
var isIE = !!window.ActiveXObject;
var useWordEdit;
$(initModify);
var NTKO_ATTACH_OCX,NTKO_OFFICE_OCX;
var flag = true;
var inforId;
function initModify(){
	//添加权限约束
	$.handleRights({
		 "commitBut" : $.OaConstants.DISPOSE
	});
	//提交
  	$("#commitBut").find(".allBtn").each(function(){
  		$(this).click(function(){
  			$("#transitionName").val($(this).val());
  			showConfirm("确认是否" + $(this).val() + "？", function(){
  				submitInfo();
  			});
  			
//  			if (confirm("确认是否" + $(this).val() + "？")) {
//  				submitInfo();
//  			} else {
//  				return;
//  			}
  		});
  	});
  
	//日志展开
	$("#costsLog a").toggle(function(){
		$("#costsLog").find(".mb").hide();
		$("#costsLog h1").removeClass("logArrow");
	},function(){
		$("#costsLog").find(".mb").show();
		$("#costsLog h1").addClass("logArrow");
		
	});
	
	inforId = $("#infoFormId").val();
	//初始化附件
  	initNTKOAttach();
  	
	useWordEdit = ($("#displayMode").val() == "0");//0是内容地址形式，即用Word编辑
	if (useWordEdit) {
  		initNTKOWrod();
  	} else {
  		initHTMLEdit();
  	}
  
	$("#fullScrean").click(function(){
		NTKO_OFFICE_OCX.showFullWindow();	
	});

};
//初始化附件控件
function initNTKOAttach(){
	//附件控件
  	NTKO_ATTACH_OCX = $.getNewAttachmentControl("NTKO_AttachmentCtrl");
	NTKO_ATTACH_OCX.setPermission({view:true,add:true,update:false,del:true,saveas:false});
	NTKO_ATTACH_OCX.setSaveURL(BASE_PATH + "m/info_draft?act=upload");
	NTKO_ATTACH_OCX.setBasePath(BASE_PATH);
	NTKO_ATTACH_OCX.init();
	if (inforId != "") {
		//加载文件列表
		$.ajax({
	       type : "POST",
	       cache: false,
	       async: false,
	       url  : "m/info_draft",
	       data : "act=getfiles&referid=" + inforId,
	       success : function(xml){
	           var messageCode = $("message",xml).attr("code");
	           var msg = $("message",xml).text();
	           if(messageCode == "1"){
	               NTKO_ATTACH_OCX.setFileList($("content",xml)[0]);
	           } else {
	               showAlert($("message",xml).text());
	           }
	       }
	   	});
	}
}

//初始化正文控件
function initNTKOWrod(){
	//OFFIC控件
	NTKO_OFFICE_OCX = new NTKOOfficeControl();
	NTKO_OFFICE_OCX.setSaveURL(BASE_PATH + "m/info_draft?act=uploadcontent");
	NTKO_OFFICE_OCX.setPublishURL(BASE_PATH + "m/info_draft?act=uploadhtml");
	NTKO_OFFICE_OCX.setBasePath(BASE_PATH);
	NTKO_OFFICE_OCX.setOperator($("#userId").val());
	NTKO_OFFICE_OCX.init("NTKO_OfficeCtrl");
	if( inforId != ""){
		NTKO_OFFICE_OCX.openOfficeFile(BASE_PATH + $("#contentDocUrl").val(),"draft");
	}else{
		NTKO_OFFICE_OCX.openOfficeFile(BASE_PATH + "page/template/emptyDocTemplate.doc","approve");
	}
};

//初始化HTML编辑器
function initHTMLEdit() {
	$("#NTKO_OfficeCtrl").html("<textarea rows='57' id='wysiwyg' style='width:100%'></textarea>");
	var conVal = $.trim($("#contentVal").html());
	if (conVal != "") {
		$("#wysiwyg").val(conVal);
	}
	$('#wysiwyg').wysiwyg({
		getImg:getContentImg,
		html:'<html><head><base href="'+ BASE_PATH +'" /><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />STYLE_SHEET</head><body>INITIAL_CONTENT</body></html>',
	    controls : {
	        separator06 : { visible : false }
	    }
	});
	
	$("#fullScrean").hide();
	$("#contentSet").html("");
}

function getContentImg() {
	
}

function submitInfo() {
	flag = true;

	if (useWordEdit) {//使用Word编辑才要保存内容文件
		//保存OFFIC内容
		saveOfficContent();
		if (!flag) {
			return;
		}
		saveContentHtml();
		if (!flag) {
			return;
		}
	} else {
		saveHtmlContent();
	}
	
	NTKO_ATTACH_OCX.setAfterSaveEvent("saveAttachmentEvent");
	//保存附件
	saveAttachment();

}


function saveContentHtml(){
	var obj = NTKO_OFFICE_OCX.saveAsHTML(inforId);
	if(obj == null){
		showAlert("OFFICE控件未正确安装，文件发布失败！");
		flag = false;
	}else{
		if (obj.code == 0){
			flag = false ;
			showAlert(obj.message);
		}
	}
}

function saveOfficContent(){
	var obj = NTKO_OFFICE_OCX.saveOffice(inforId);
	if(obj != null && obj.code == 0){
		flag = false ;
		showAlert(obj.message);
	}
};

function saveAttachment(){
	NTKO_ATTACH_OCX.saveAttachments(inforId);
}


function saveAttachmentEvent(code,message){
	if(code == 0){
		flag = false ;
		showAlert(message);
	}else{
		commitDispose();
	}
}

function saveHtmlContent() {
	var content =$.trim($("#wysiwyg").val());
	$.ajax({
        type : "POST",
        cache: false,
        async: false,
		url  : "m/info_draft",
        data : {act:"savehtmlcontent",
        		id:inforId,
        		content:content
        		},
        success : function(xml){
            var message = $("message",xml);
            if (message.attr("code") == "1") {
            	
            }else{
                flag = false ;
                showAlert(message.text());
            } 
        },
        error : $.ermpAjaxError
	});
}

function commitDispose(){
	
	var transition = $("#transitionName").val();//获得转向的名称
	if (transition == "") {
		showAlert("请选择转向");
		return;
	}
	var taskid = $("#taskInstanceID").val();//任务ID,未测试有没有值
	var comment = $("#comment").val();//填写的意见
	var result = $.validChar(comment,"<>");
	if (result){
		showAlert("意见审批中不能输入非法字符："+ result);
		return ;
	}
	//设置按钮不可用
	$("#commitBut").find(".allBtn").attr("disabled","true");
	
	$.ajax({
       type : "POST",
       cache: false,
       async: false,
       url  : "m/info_deal",
       data : {act:"deal_approve",
       			tiid:taskid,
       			transition:transition,
       			comment:comment},
       success : function(xml){
           var messageCode = $("message",xml).attr("code");
           var msg = $("message",xml).text();
           if(messageCode == "1"){
				showAlert($("message",xml).text(), function(){
					//执行回调函数，刷新父列表
					mainFrame.getCurrentTab().doCallback();
					//关闭自己
					mainFrame.getCurrentTab().close();
				});
           } else {
               showAlert($("message",xml).text());
           }
       },
       error : $.ermpAjaxError
   	});
};

function showAlert(info, fun) {
	if (isIE) {
		alert(info);//控件只能作系统提示，否则会被挡住
		if (fun) {
			fun();
		}
	} else {
		$.alert(info, fun);
	}
}

function showConfirm(info, fun) {
	if (isIE) {
		if (confirm(info)) {
			fun();
		}
	} else {
		$.confirm(info, function(r){
			if(r) {
				fun();
			}
		});
	}
}