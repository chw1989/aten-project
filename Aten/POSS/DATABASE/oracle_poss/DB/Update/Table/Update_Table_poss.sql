WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK;
SET ECHO ON;

--添加字段：身份证号
DECLARE
    VN_FLAG NUMBER;
BEGIN
    SELECT COUNT(1)
      INTO VN_FLAG
      FROM ALL_TAB_COLUMNS T
     WHERE T.TABLE_NAME = 'POSS_CUST_PAYMENT'
       AND T.COLUMN_NAME = 'IDENTITY_NUM';
    IF VN_FLAG = 0 THEN
        EXECUTE IMMEDIATE 'alter table POSS_CUST_PAYMENT add IDENTITY_NUM VARCHAR2(36)';
    END IF;
END;
/

--问题一次关闭率标识注释
comment on column POSS_CUST_PAYMENT.IDENTITY_NUM is '身份证号';
/

DECLARE
    VN_FLAG NUMBER;
BEGIN
    SELECT COUNT(1)
      INTO VN_FLAG
      FROM ALL_TAB_COLUMNS T
     WHERE T.TABLE_NAME = 'POSS_PROD_INFO'
       AND T.COLUMN_NAME = 'TO_ACCOUNT_SMALL_AMOUNT_';
    IF VN_FLAG <> 0 THEN
        EXECUTE IMMEDIATE 'alter table POSS_PROD_INFO modify(TO_ACCOUNT_SMALL_AMOUNT_ varchar(128))';
    END IF;
END;
/