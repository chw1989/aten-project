WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK;
SET ECHO ON;

@@EAPP_SUB_SYSTEM.sql;
@@EAPP_SERVICE.sql;
@@EAPP_SERVICE_RIGHT.sql;
@@EAPP_ACTOR_ACCOUNT.sql;
@@EAPP_ACTOR_SERVICE.sql;
@@EAPP_ACTION.sql;
@@EAPP_MODULE.sql;
@@EAPP_MODULE_ACTION.sql;
@@EAPP_DATA_DICTIONART.sql;
@@EAPP_PORTLET.sql;