/**********************
 客户资料管理
 *********************/
$(initCustomerInfo);
function initCustomerInfo() {
	//添加权限约束
	$.handleRights({
        "consultRecord" : $.SysConstants.VIEW,
        "visitRecord" : $.SysConstants.VIEW,
        "reservationRecord" : $.CrmConstants.APPOINT,
        "messageRecord" : $.CrmConstants.MESSAGE
    },"hidModuleRights");
	
	/*左边导航*/
	$("#crmSubNav li:first").addClass("current");
	$("#crmSubNav li").hover(function(){
	   		$(this).addClass("over");
		},function(){
	   		$(this).removeClass("over");
	}).click(function(){
	    $(this).addClass("current").siblings().removeClass("current");
		$("#crmFrameHead").text($(this).text());
	});
	$("#menuList").find("li").each(function(i){								
		$(this).click(function(){
			if($(this).attr("class")=="current over"){
	       		$("#refresh").click();
	         	return;
	       	}else{
	         	$.ajax({
			        type : "POST",
					cache: false,
					url  : $(this).attr("url"),
			        success : function(txt){
			        	$("#costsCon").html(txt);
			     	}
        		});
	       	}
	    });
	});
	
	$("#menuList").find("li").eq(0).click();
	
//	//初始化CALLCENTER控件
//	initCallCenter();
//	//关闭时注销
//	$.getMainFrame().getCurrentTab().onClose=function(){
//		exitCallCenter();
//	};
};

