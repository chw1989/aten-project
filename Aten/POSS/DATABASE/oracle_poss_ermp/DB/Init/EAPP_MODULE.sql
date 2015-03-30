--EAPP_MODULE 模块配置

--参数设置
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '4028bc814614fa3d014615075c350001';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
	values ('4028bc814614fa3d014615075c350001', null, 'PARAM_SETTING', '参数设置', 1, null, 1, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '4028bc814614fa3d01461508d9f40002';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
	values ('4028bc814614fa3d01461508d9f40002', '4028bc814614fa3d014615075c350001', 'PROD_TYPE', '产品分类', 1, 'm/prod_type/initquery', 2, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '7f7e0dc02bb241d789784fecef65901c';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
	values ('7f7e0dc02bb241d789784fecef65901c', '4028bc814614fa3d014615075c350001', 'SUPPLIER', '供应商', 2, 'page/ParaConf/query_supplier.jsp', 2, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

--产品管理
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '40285c81462e94bc01462e96b30b0001';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
	values ('40285c81462e94bc01462e96b30b0001', null, 'PROD_MANAGE', '产品管理', 2, null, 1, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '40285c81462e94bc01462e9717530002';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
	values ('40285c81462e94bc01462e9717530002', '40285c81462e94bc01462e96b30b0001', 'PROD_INFO', '产品信息', 1, 'page/ProdInfoManage/prodInfo/prodInfoList.jsp', 2, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '40285c814652f4c2014652f9113b0001';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
	values ('40285c814652f4c2014652f9113b0001', '40285c81462e94bc01462e9717530002', 'PROD_INFO_DETAIL', '产品详情', 1, null, 3, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '40285c814652f4c2014652f9847d0002';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
	values ('40285c814652f4c2014652f9847d0002', '40285c81462e94bc01462e9717530002', 'PROD_INFO_FAQ', '产品问答', 2, null, 3, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '40285c81462e94bc01462e97c0090003';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
	values ('40285c81462e94bc01462e97c0090003', '40285c81462e94bc01462e96b30b0001', 'PROD_FAQ', '产品问答', 2, 'page/ProdInfoManage/prodFaq/prodFaqList.jsp', 2, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

--运营管理
----退款须知
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '402881e5462ec6d301462ee65e310001';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
	values ('402881e5462ec6d301462ee65e310001', null, 'OPERATIONS_MANAGE', '运营管理', 2, null, 1, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '402881e5462ec6d301462ee849e60002';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
	values ('402881e5462ec6d301462ee849e60002', '402881e5462ec6d301462ee65e310001', 'REFUNC_APPLICATION', '退款申请', 1, 'page/operationsManage/refuncApplication/refuncApplicationFrame.jsp', 2, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '402881e546a562680146a57c24600001';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
	values ('402881e546a562680146a57c24600001', '402881e5462ec6d301462ee65e310001', 'REFUND_NOTICE', '退款须知', 3, 'page/operationsManage/refuncApplication/refuncApplicationFrame.jsp', 2, null, '402881e5462ec6d301462ee849e60002', (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '8a29824246481c660146487b696d0001';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
	values ('8a29824246481c660146487b696d0001', '402881e5462ec6d301462ee65e310001', 'PAYMENT_REGISTER', '划款登记', 2, 'page/operationsManage/paymentRegister/paymentRegisterFrame.jsp', 2, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '8a298242467a71bd01467acaf9de0002';
IF V_COUNT  = 0  THEN 
   insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('8a298242467a71bd01467acaf9de0002', '8a29824246481c660146487b696d0001', 'CUST_PAYMENT', '客户划款', 1, 'page/operationsManage/paymentRegister/paymentToDoList.jsp', 3, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '8a298242467a71bd01467ace0cce0004';
IF V_COUNT  = 0  THEN 
  insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('8a298242467a71bd01467ace0cce0004', '8a298242467a71bd01467acaf9de0002', 'CUST_PAY_TODO', '客户划款待办', 1, 'page/operationsManage/paymentRegister/paymentToDoList.jsp', 4, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));

END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '8a298242467a71bd01467acf0b430006';
IF V_COUNT  = 0  THEN 
   insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('8a298242467a71bd01467acf0b430006', '8a298242467a71bd01467acaf9de0002', 'CUST_PAY_TRACK', '客户划款跟踪', 2, 'page/operationsManage/paymentRegister/paymentTrackList.jsp', 4, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));

END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '8a298242467a71bd01467acfb2f50007';
IF V_COUNT  = 0  THEN 
  insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('8a298242467a71bd01467acfb2f50007', '8a298242467a71bd01467acaf9de0002', 'CUST_PAY_ARCH', '客户划款归档', 3, 'page/operationsManage/paymentRegister/paymentArchList.jsp', 4, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '8a298242467a71bd01467acc584f0003';
IF V_COUNT  = 0  THEN 
  insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('8a298242467a71bd01467acc584f0003', '8a29824246481c660146487b696d0001', 'FBYY', '非标预约', 2, 'page/operationsManage/paymentRegister/paymentToDoList.jsp', 3, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '8a298242467a71bd01467ad012f60008';
IF V_COUNT  = 0  THEN 
  insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('8a298242467a71bd01467ad012f60008', '8a298242467a71bd01467acc584f0003', 'FBYY_TODO', '非标预约待办', 1, 'page/operationsManage/paymentRegister/paymentToDoList.jsp', 4, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '8a298242467a71bd01467ad062d60009';
IF V_COUNT  = 0  THEN 
  insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('8a298242467a71bd01467ad062d60009', '8a298242467a71bd01467acc584f0003', 'FBYY_TRACK', '非标预约跟踪', 2, 'page/operationsManage/paymentRegister/paymentTrackList.jsp', 4, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '8a298242467a71bd01467ad0a6d6000a';
IF V_COUNT  = 0  THEN 
  insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('8a298242467a71bd01467ad0a6d6000a', '8a298242467a71bd01467acc584f0003', 'FBYY_ARCH', '非标预约归档', 3, 'page/operationsManage/paymentRegister/paymentArchList.jsp', 4, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

--短信管理
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = 'a326390749b54f588204ed8e422c06dd';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
	values ('a326390749b54f588204ed8e422c06dd', null, 'MESSAGE', '短信管理', 4, null, 1, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '46f8254e5eed47e9b4a59f766cc53031';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
	values ('46f8254e5eed47e9b4a59f766cc53031', 'a326390749b54f588204ed8e422c06dd', 'MY_MESSAGE', '我的短信', 1, 'page/messagemanage/query_message.jsp', 2, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/

--提成比例
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE where MODULE_ID_ = '8a29822646cc49480146cc4b45590001';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
	values ('8a29822646cc49480146cc4b45590001', '40285c81462e94bc01462e9717530002', 'issue_plan', '发行方案', 4, null, 3, null, null, (SELECT T.SUB_SYSTEM_ID_ FROM EAPP_SUB_SYSTEM T WHERE T.SERVER_NAME_ = 'poss'));
END IF;
END;
/


--划款流程查询
insert into eapp_module (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('402881e64767f095014767f2eb010001', '8a298242467a71bd01467acaf9de0002', 'CUST_PAY_QUERY', '查询', 4, '', 4, '', '', '4028bc814614baee014614f2c8e30004');

insert into eapp_module (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('402881e64767f095014767f39a0e0004', '8a298242467a71bd01467acc584f0003', 'FBYY_QUERY', '查询', 4, '', 4, '', '', '4028bc814614baee014614f2c8e30004');



	
insert into eapp_module (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('402881e94822093f0148220b7c380001', null, 'contract', '合同管理', 7, null, 1, null, null, '4028bc814614baee014614f2c8e30004');

insert into eapp_module (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('402881e94822093f0148220d42ff0002', '402881e94822093f0148220b7c380001', 'cont_blank', '空白合同登记', 1, 'm/cont_blank/initquery', 2, null, null, '4028bc814614baee014614f2c8e30004');

insert into eapp_module (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('402881e94822093f0148220e37c80003', '402881e94822093f0148220b7c380001', 'cont_request', '本机构合同需求', 2, 'page/contract/request/menu_req.jsp', 2, null, null, '4028bc814614baee014614f2c8e30004');

insert into eapp_module (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('402881e94822093f0148221066d00004', '402881e94822093f0148220b7c380001', 'cont_hand', '本机构合同上交', 3, 'page/contract/hand/menu_hand.jsp', 2, null, null, '4028bc814614baee014614f2c8e30004');

insert into eapp_module (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('402881e948262d190148263cdbe30001', '402881e94822093f0148220e37c80003', 'request_reg', '需求登记', 1, null, 3, null, null, '4028bc814614baee014614f2c8e30004');

insert into eapp_module (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('402881e948262d190148263e066f0002', '402881e94822093f0148220e37c80003', 'send_check', '发放审核', 2, null, 3, null, null, '4028bc814614baee014614f2c8e30004');

insert into eapp_module (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('402881e948262d190148263eee570003', '402881e94822093f0148221066d00004', 'hand_reg', '上交登记', 1, null, 3, null, null, '4028bc814614baee014614f2c8e30004');

insert into eapp_module (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('402881e948262d190148263f99980004', '402881e94822093f0148221066d00004', 'hand_check', '上交审核', 2, null, 3, null, null, '4028bc814614baee014614f2c8e30004');

insert into eapp_module (MODULE_ID_, PARENT_MODULE_ID_, MODULE_KEY_, NAME_, DISPLAY_ORDER_, URL_, TREE_LEVEL_, DESCRIPTION_, QUOTE_MODULE_ID_, SUB_SYSTEM_ID_)
values ('8a2982264843b02b014843dcfda90001', '402881e94822093f0148220b7c380001', 'confirm_ext', '确认书发放', 4, 'm/confirm_ext/initquery', 2, '', '', '4028bc814614baee014614f2c8e30004');


