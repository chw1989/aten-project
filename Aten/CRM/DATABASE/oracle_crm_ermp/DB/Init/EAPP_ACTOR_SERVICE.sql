--EAPP_ACTOR_SERVICE 接口账号绑定服务配置
DECLARE
	V_COUNT int;
BEGIN
	SELECT count(1) INTO V_COUNT FROM EAPP_ACTOR_SERVICE where ACTOR_ID_ = '8a29823e44fdc95f0144fdcb67680001' AND SERVICE_ID_ = '40285c8144fed1410144fed4ef7e0001';
IF V_COUNT  = 0  THEN 
    insert into EAPP_ACTOR_SERVICE (ACTOR_ID_, SERVICE_ID_)
	values ('8a29823e44fdc95f0144fdcb67680001', '40285c8144fed1410144fed4ef7e0001');
END IF;
END;
/