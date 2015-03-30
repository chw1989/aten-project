--EAPP_MODULE_ACTION 模块动作配置

-- 导入与分配
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29824245f4ad230145f4b0bd3e0001';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29824245f4ad230145f4b0bd3e0001', '8a29823e44f41861014593caabb50002', '2410e029-e674-4108-a524-e1555cdd3509', 'IMPORT_ALLOCATE', 'query', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29824245f4ad230145f4b0bd3e0002';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29824245f4ad230145f4b0bd3e0002', '8a29823e44f41861014593caabb50002', '83523f2e-a57c-4eda-8948-d196afee898b', 'IMPORT_ALLOCATE', 'modify', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '40285c8146527be10146528077610003';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('40285c8146527be10146528077610003', '8a29823e44f41861014593caabb50002', '40285c8146527be1014652803c320002', 'IMPORT_ALLOCATE', 'allot', 1, 0, 1);
END IF;
END;
/

--历史分配查询
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '402881e545f65fa90145f66667be0001';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e545f65fa90145f66667be0001', '8a29823e44f41861014593cb79740003', '2410e029-e674-4108-a524-e1555cdd3509', 'HIS_ALLOCATE_QUERY', 'query', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29824245f4ad230145f4b0bd3e0002';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29824245f4ad230145f4b0bd3e0002', '8a29823e44f41861014593cb79740003', '83523f2e-a57c-4eda-8948-d196afee898b', 'HIS_ALLOCATE_QUERY', 'modify', 1, 0, 1);
END IF;
END;
/

-- 数据转移
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29824245f5077a0145f50b4aef0001';
IF V_COUNT  = 0  THEN 
   insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29824245f5077a0145f50b4aef0001', '8a29823e44f41861014593d0c1480008', '2410e029-e674-4108-a524-e1555cdd3509', 'DATA_SHIFT', 'query', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29824245f5077a0145f50b4aef0002';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29824245f5077a0145f50b4aef0002', '8a29823e44f41861014593d0c1480008', '7a173067-7ca6-4330-a0d6-d486bf3cdf28', 'DATA_SHIFT', 'delete', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29824245f5077a0145f50b4aef0003';
IF V_COUNT  = 0  THEN 
   insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29824245f5077a0145f50b4aef0003', '8a29823e44f41861014593d0c1480008', '83523f2e-a57c-4eda-8948-d196afee898b', 'DATA_SHIFT', 'modify', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29824245f5077a0145f50b4aef0004';
IF V_COUNT  = 0  THEN 
	insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29824245f5077a0145f50b4aef0004', '8a29823e44f41861014593d0c1480008', 'b75aa44c-0bcb-47a8-8896-339efc018497', 'DATA_SHIFT', 'add', 1, 0, 1);
END IF;
END;
/

--我的客户
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = 'c47460fb84944b3196935c0b3e64915d';
IF V_COUNT  = 0  THEN 
   insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('c47460fb84944b3196935c0b3e64915d', '8a29823e44f41861014593d1cb11000b', '22708456-b358-4084-a1ba-3b17015f63f7', 'MY_CUST', 'view', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '877523233def4b8fa2cf81511a279c7d';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('877523233def4b8fa2cf81511a279c7d', '8a29823e44f41861014593d1cb11000b', '83523f2e-a57c-4eda-8948-d196afee898b', 'MY_CUST', 'modify', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '94fb2800c6c5407a8720597775e36997';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('94fb2800c6c5407a8720597775e36997', '8a29823e44f41861014593d1cb11000b', '9ec6f1b3e5184df5abd4b6e769a7d7dd', 'MY_CUST', 'returnvisit', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '330414d8b43e4f9e8a2995102f9764c8';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('330414d8b43e4f9e8a2995102f9764c8', '8a29823e44f41861014593d1cb11000b', 'f4a9676ae41449fa8ecfe4ee7f02b28b', 'MY_CUST', 'appoint', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = 'b34d5056f90d41d5b6e470f9b67aaab0';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('b34d5056f90d41d5b6e470f9b67aaab0', '8a29823e44f41861014593d1cb11000b', '832006b2885743d3b6add076fccf733b', 'MY_CUST', 'request', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '0d3e9420286a4b499140b924c4f0c8ce';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('0d3e9420286a4b499140b924c4f0c8ce', '8a29823e44f41861014593d1cb11000b', '0fb966912d6b4bf084c8f6be9bef668f', 'MY_CUST', 'message', 1, 0, 1);
END IF;
END;
/

--未分配客户>公司分配
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29823e45e4ed510145e5024a5b0001';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29823e45e4ed510145e5024a5b0001', '40285c8145dc67770145dcaf8df7000c', '22708456-b358-4084-a1ba-3b17015f63f7', 'COMPANY_ALLOT', 'view', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29823e45e4ed510145e5024a5b0002';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29823e45e4ed510145e5024a5b0002', '40285c8145dc67770145dcaf8df7000c', '2410e029-e674-4108-a524-e1555cdd3509', 'COMPANY_ALLOT', 'query', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29823e45ff1db50145ff20cbc20001';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29823e45ff1db50145ff20cbc20001', '40285c8145dc67770145dcaf8df7000c', '7a173067-7ca6-4330-a0d6-d486bf3cdf28', 'COMPANY_ALLOT', 'delete', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '40285c8146529300014652d6b6250002';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('40285c8146529300014652d6b6250002', '40285c8145dc67770145dcaf8df7000c', '40285c8146529300014652d572ef0001', 'COMPANY_ALLOT', 'import', 1, 0, 1);
END IF;
END;
/

--未分配客户>我的草稿
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29823e45e4ed510145e502790d0003';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29823e45e4ed510145e502790d0003', '40285c8145dc67770145dcb0505f000d', '2410e029-e674-4108-a524-e1555cdd3509', 'MY_DRAFT_CUST', 'query', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29823e45e4ed510145e502790d0004';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29823e45e4ed510145e502790d0004', '40285c8145dc67770145dcb0505f000d', '22708456-b358-4084-a1ba-3b17015f63f7', 'MY_DRAFT_CUST', 'view', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29823e45ff1db50145ff2124c20002';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29823e45ff1db50145ff2124c20002', '40285c8145dc67770145dcb0505f000d', '7a173067-7ca6-4330-a0d6-d486bf3cdf28', 'MY_DRAFT_CUST', 'delete', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '40285c8146529300014652e1af850003';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('40285c8146529300014652e1af850003', '40285c8145dc67770145dcb0505f000d', 'b75aa44c-0bcb-47a8-8896-339efc018497', 'MY_DRAFT_CUST', 'add', 1, 0, 1);
END IF;
END;
/

--潜在客户>潜在客户
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '402881e545f65fa90145f66bbb030003';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e545f65fa90145f66bbb030003', '40285c8145dc67770145dcb14b30000e', '2410e029-e674-4108-a524-e1555cdd3509', 'S_POTENTIAL_CUST', 'query', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29824245f4ad230145f4b0bd3e0002';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29824245f4ad230145f4b0bd3e0002', '8a29823e44f41861014593cb79740003', '83523f2e-a57c-4eda-8948-d196afee898b', 'S_POTENTIAL_CUST', 'modify', 1, 0, 1);
END IF;
END;
/

--潜在客户>审批中客户
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '402881e545f65fa90145f66de27d0005';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e545f65fa90145f66de27d0005', '40285c8145dc67770145dcb1fcc7000f', '2410e029-e674-4108-a524-e1555cdd3509', 'APPROVE_CUST', 'query', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '402881e545f65fa90145f66de27d0006';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e545f65fa90145f66de27d0006', '40285c8145dc67770145dcb1fcc7000f', '83523f2e-a57c-4eda-8948-d196afee898b', 'APPROVE_CUST', 'modify', 1, 0, 1);
END IF;
END;
/

-- 待完善客户
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29824245f5077a0145f50c01720005';
IF V_COUNT  = 0  THEN 
   insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29824245f5077a0145f50c01720005', '40285c8145dc67770145dca3eb900002', '2410e029-e674-4108-a524-e1555cdd3509', 'UN_IMPROVE_CUST', 'query', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29824245f5077a0145f50c01720006';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29824245f5077a0145f50c01720006', '40285c8145dc67770145dca3eb900002', '22708456-b358-4084-a1ba-3b17015f63f7', 'UN_IMPROVE_CUST', 'view', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29824245f5077a0145f50c01720007';
IF V_COUNT  = 0  THEN 
  insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29824245f5077a0145f50c01720007', '40285c8145dc67770145dca3eb900002', '7a173067-7ca6-4330-a0d6-d486bf3cdf28', 'UN_IMPROVE_CUST', 'delete', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29824245f5077a0145f50c01720008';
IF V_COUNT  = 0  THEN 
	insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29824245f5077a0145f50c01720008', '40285c8145dc67770145dca3eb900002', '83523f2e-a57c-4eda-8948-d196afee898b', 'UN_IMPROVE_CUST', 'modify', 1, 0, 1);
END IF;
END;
/

-- 客户回访
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29824245f5077a0145f50c8ba10009';
IF V_COUNT  = 0  THEN 
   insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29824245f5077a0145f50c8ba10009', '40285c8145dc67770145dca757cc0005', '22708456-b358-4084-a1ba-3b17015f63f7', 'CUST_VISIT', 'view', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '8a29824245f5077a0145f50c8ba1000a';
IF V_COUNT  = 0  THEN 
    insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('8a29824245f5077a0145f50c8ba1000a', '40285c8145dc67770145dca757cc0005', '2410e029-e674-4108-a524-e1555cdd3509', 'CUST_VISIT', 'query', 1, 0, 1);
END IF;
END;
/

--正式客户
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = 'e0c2bf87ec1d40afafcd6bc1db1adec5';
IF V_COUNT  = 0  THEN 
   insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('e0c2bf87ec1d40afafcd6bc1db1adec5', '40285c8145dc67770145dca54b7b0003', '2410e029-e674-4108-a524-e1555cdd3509', 'FORMAL_CUST', 'query', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = 'ccf6023bf02b4587bf94fa836656d5f3';
IF V_COUNT  = 0  THEN 
   insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('ccf6023bf02b4587bf94fa836656d5f3', '40285c8145dc67770145dca54b7b0003', '22708456-b358-4084-a1ba-3b17015f63f7', 'FORMAL_CUST', 'view', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = 'bdfb12c5ca974716b07860f82491734d';
IF V_COUNT  = 0  THEN 
  insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('bdfb12c5ca974716b07860f82491734d', '40285c8145dc67770145dca54b7b0003', '7a173067-7ca6-4330-a0d6-d486bf3cdf28', 'FORMAL_CUST', 'delete', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '16eac584e6474519b83a1403729df7f2';
IF V_COUNT  = 0  THEN 
	insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('16eac584e6474519b83a1403729df7f2', '40285c8145dc67770145dca54b7b0003', '83523f2e-a57c-4eda-8948-d196afee898b', 'FORMAL_CUST', 'modify', 1, 0, 1);
END IF;
END;
/

--参数设置
----部门业务类型配置

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '4028bc8145fb2e930145fb3f8875000c';
IF V_COUNT  = 0  THEN 
	insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('4028bc8145fb2e930145fb3f8875000c', '40285c8145dc67770145dcaa79a90008', '2410e029-e674-4108-a524-e1555cdd3509', 'GROUP_TYPE_SETTING', 'query', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '4028bc8145fb2e930145fb3f8875000d';
IF V_COUNT  = 0  THEN 
	insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('4028bc8145fb2e930145fb3f8875000d', '40285c8145dc67770145dcaa79a90008', '83523f2e-a57c-4eda-8948-d196afee898b', 'GROUP_TYPE_SETTING', 'modify', 1, 0, 1);
END IF;
END;
/

----销售对应客服

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '4028bc8145fb2e930145fb3f2c7a000a';
IF V_COUNT  = 0  THEN 
	insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('4028bc8145fb2e930145fb3f2c7a000a', '40285c8145dc67770145dca9cd7d0007', '2410e029-e674-4108-a524-e1555cdd3509', 'C_SERVICE_TO_SALE', 'query', 1, 0, 1);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_MODULE_ACTION where MODULE_ACTION_ID_ = '4028bc8145fb2e930145fb3f2c7a000b';
IF V_COUNT  = 0  THEN 
	insert into EAPP_MODULE_ACTION (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('4028bc8145fb2e930145fb3f2c7a000b', '40285c8145dc67770145dca9cd7d0007', '83523f2e-a57c-4eda-8948-d196afee898b', 'C_SERVICE_TO_SALE', 'modify', 1, 0, 1);
END IF;
END;
/

----查询统计
insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e6476313a601476328c62a000f', '402881e6476313a60147631f08750003', '8a298226409a988001409aaf083b0010', 'YJCX', 'assign', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e6476d377501476d39b46e0001', '402881e6476313a60147631f08750003', '2410e029-e674-4108-a524-e1555cdd3509', 'YJCX', 'query', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e6476d377501476d39b46e0002', '402881e6476313a60147631f08750003', 'd1ad0437-717f-4421-8b64-66c797dabf04', 'YJCX', 'export', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc701477209a9de000f', '402881e6476313a6014763217d2c0005', '8a298226409a988001409aaf083b0010', 'GRTJ', 'assign', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc7014771ff0ea20003', '402881e6476313a6014763217d2c0005', '2410e029-e674-4108-a524-e1555cdd3509', 'GRTJ', 'query', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc7014771ff0ea20004', '402881e6476313a6014763217d2c0005', 'd1ad0437-717f-4421-8b64-66c797dabf04', 'GRTJ', 'export', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc701477209c2160010', '402881e6476313a601476321cb640006', '8a298226409a988001409aaf083b0010', 'YXRL', 'assign', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc7014771ff32890005', '402881e6476313a601476321cb640006', '2410e029-e674-4108-a524-e1555cdd3509', 'YXRL', 'query', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc7014771ff32890006', '402881e6476313a601476321cb640006', 'd1ad0437-717f-4421-8b64-66c797dabf04', 'YXRL', 'export', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc701477210674d0014', '402881e6476313a601476321cb640006', '40288a8646f6e6130146faf41beb0029', 'YXRL', 'confnorm', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc70147720c18350013', '402881e6476313a60147632335040007', '8a298226409a988001409aaf083b0010', 'KFQK', 'assign', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc7014771ff83510009', '402881e6476313a60147632335040007', '2410e029-e674-4108-a524-e1555cdd3509', 'KFQK', 'query', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc7014771ff8352000a', '402881e6476313a60147632335040007', 'd1ad0437-717f-4421-8b64-66c797dabf04', 'KFQK', 'export', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc7014771ffa411000b', '402881e6476313a601476325abf40008', '2410e029-e674-4108-a524-e1555cdd3509', 'QKXQ', 'query', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc70147720bf1950011', '402881e6476313a601476325abf40008', '8a298226409a988001409aaf083b0010', 'QKXQ', 'assign', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc7014771ffa411000c', '402881e6476313a601476325abf40008', 'd1ad0437-717f-4421-8b64-66c797dabf04', 'QKXQ', 'export', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc70147720c051d0012', '402881e6476313a601476326760d0009', '8a298226409a988001409aaf083b0010', 'CJKF', 'assign', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc7014771ffca21000d', '402881e6476313a601476326760d0009', '2410e029-e674-4108-a524-e1555cdd3509', 'CJKF', 'query', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc7014771ffca21000e', '402881e6476313a601476326760d0009', 'd1ad0437-717f-4421-8b64-66c797dabf04', 'CJKF', 'export', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc7014771ff57520007', '8a29822646ef8a6d0146ef8f9c730023', '2410e029-e674-4108-a524-e1555cdd3509', 'TDYXRL', 'query', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc7014771ff57520008', '8a29822646ef8a6d0146ef8f9c730023', 'd1ad0437-717f-4421-8b64-66c797dabf04', 'TDYXRL', 'export', 1, 0, 1);

insert into eapp_module_action (MODULE_ACTION_ID_, MODULE_ID_, ACTION_ID_, MODULE_KEY_, ACTION_KEY_, IS_VALID_, IS_RPC_, IS_HTTP_)
values ('402881e64770fdc70147721092950015', '8a29822646ef8a6d0146ef8f9c730023', '40288a8646f6e6130146faf41beb0029', 'TDYXRL', 'confnorm', 1, 0, 1);