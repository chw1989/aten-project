--ϵͳ�ֵ��������
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '8a29824245b075790145b07e1f0d0004';
IF V_COUNT  = 0  THEN 
    insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('8a29824245b075790145b07e1f0d0004', null, (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), '�ͻ�����', 'CUSTOMER_NATURE', null, null, 2, 'CUSTOMER_NATURE', 1, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '8a29824245b075790145b07c644d0001';
IF V_COUNT  = 0  THEN 
    insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('8a29824245b075790145b07c644d0001', null, (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), '�Ա�', 'SEX', null, null, 1, 'SEX', 1, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '8a29824245b075790145b09e39f50007';
IF V_COUNT  = 0  THEN 
   insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('8a29824245b075790145b09e39f50007', null, (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), '��ͨ����', 'COMM_TYPE', null, null, 3, 'COMM_TYPE', 1, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '402881e545f65fa90145f688e4630007';
IF V_COUNT  = 0  THEN 
    insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('402881e545f65fa90145f688e4630007', null, (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), '��������', 'APPOINTMENT_TYPE', null, null, 4, 'APPOINTMENT_TYPE', 1, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '402881e545f65fa90145f68957bd0008';
IF V_COUNT  = 0  THEN 
    insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('402881e545f65fa90145f68957bd0008', '402881e545f65fa90145f688e4630007', (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), '����֪ͨ', 'SM_MESSAGE', null, null, 1, 'APPOINTMENT_TYPE', 2, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '402881e545f65fa90145f689b5630009';
IF V_COUNT  = 0  THEN 
    insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('402881e545f65fa90145f689b5630009', '402881e545f65fa90145f688e4630007', (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), '�ʼ�֪ͨ', 'MAIL_MESSAGE', null, null, 2, 'APPOINTMENT_TYPE', 2, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '402881e545f65fa90145f68a02e8000a';
IF V_COUNT  = 0  THEN 
    insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('402881e545f65fa90145f68a02e8000a', '402881e545f65fa90145f688e4630007', (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), 'ϵͳ��Ϣ��', 'SYS_MESSAGE', null, null, 3, 'APPOINTMENT_TYPE', 2, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '8a29824245b075790145b09d33090006';
IF V_COUNT  = 0  THEN 
    insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('8a29824245b075790145b09d33090006', '8a29824245b075790145b07e1f0d0004', (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), '����', '1', null, null, 2, 'CUSTOMER_NATURE', 2, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '8a29824245b075790145b09eaa800008';
IF V_COUNT  = 0  THEN 
   insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('8a29824245b075790145b09eaa800008', '8a29824245b075790145b09e39f50007', (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), '�绰', 'TEL', null, null, 1, 'COMM_TYPE', 2, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '8a29824245b075790145b09f59a50009';
IF V_COUNT  = 0  THEN 
    insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('8a29824245b075790145b09f59a50009', '8a29824245b075790145b09e39f50007', (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), '��̸', 'INTERVIEWS', null, null, 2, 'COMM_TYPE', 2, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '8a29824245b075790145b09fce8f000a';
IF V_COUNT  = 0  THEN 
   insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('8a29824245b075790145b09fce8f000a', '8a29824245b075790145b09e39f50007', (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), 'ת����', 'REFERRALS', null, null, 3, 'COMM_TYPE', 2, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '8a29824245b075790145b07cbef60002';
IF V_COUNT  = 0  THEN 
    insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('8a29824245b075790145b07cbef60002', '8a29824245b075790145b07c644d0001', (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), '��', 'M', null, null, 1, 'SEX', 2, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '8a29824245b075790145b07d17f70003';
IF V_COUNT  = 0  THEN 
  insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('8a29824245b075790145b07d17f70003', '8a29824245b075790145b07c644d0001', (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), 'Ů', 'F', null, null, 2, 'SEX', 2, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '8a29824245b075790145b07f50600005';
IF V_COUNT  = 0  THEN 
    insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('8a29824245b075790145b07f50600005', '8a29824245b075790145b07e1f0d0004', (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), '����', '0', null, null, 1, 'CUSTOMER_NATURE', 2, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '4028bc8145a2105b0145a22ab34e0001';
IF V_COUNT  = 0  THEN 
    insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('4028bc8145a2105b0145a22ab34e0001', null, (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), '����ҵ������', 'BUSINESS_TYPES', null, null, 1, 'BUSINESS_TYPES', 1, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '4028bc8145a2105b0145a22b50640002';
IF V_COUNT  = 0  THEN 
    insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('4028bc8145a2105b0145a22b50640002', '4028bc8145a2105b0145a22ab34e0001', (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), '����', 'S', null, null, 1, 'BUSINESS_TYPES', 2, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '4028bc8145a2105b0145a22c240c0003';
IF V_COUNT  = 0  THEN 
    insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('4028bc8145a2105b0145a22c240c0003', '4028bc8145a2105b0145a22ab34e0001', (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), '�ͷ�', 'C', null, null, 2, 'BUSINESS_TYPES', 2, null);
END IF;
END;
/

DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_DATA_DICTIONART where dict_id_ = '4028bc8145a2105b0145a22c4e090004';
IF V_COUNT  = 0  THEN 
    insert into EAPP_DATA_DICTIONART (DICT_ID_, PARENT_DICT_ID_, SUB_SYSTEM_ID_, DICT_NAME_, DICT_CODE_, CEIL_VALUE_, FLOOR_VALUE_, DISPLAY_SORT_, DICT_TYPE_, TREE_LEVEL_, DESCRIPTION_)
values ('4028bc8145a2105b0145a22c4e090004', '4028bc8145a2105b0145a22ab34e0001', (select t.sub_system_id_ from EAPP_SUB_SYSTEM t where t.server_name_='crm'), '��Ӫ', 'R', null, null, 3, 'BUSINESS_TYPES', 2, null);
END IF;
END;
/
--ϵͳ�ֵ��������end