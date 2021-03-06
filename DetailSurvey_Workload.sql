SELECT distinct --TOP (1000) 
		month
		--W.[id]
      --,W.[uuid]
  --    ,W.[server_roles_uuid]
--      ,W.[server_roles_flag]  --MEANS WHAT?
--	  ,SR.*
      --,[month]
      --,[flag_64_gb]
      --,[flag_sql_server_update]
      --,[flag_new_db]
      --,[flag_sql_2014_update]
      ,[server_count]
      --,[cpu_class]
      --,[form_factor]
      --,[oem]
      --,[cpu_manu]
      --,[memory]
      --,[physical_cpu]
      --,[cores_per_cpu]
      --,[storage_gb]
      --,[virt_flag]
      ----,[data_type]
      ----,[device_os]
      --,W.[host_id]
      --,[virt_provider]
      --,[old_vid_virt_software]
      ,[db_boolean]
      ,[db_sql_server_2000_standard]
      ,[db_sql_server_2000_enterprise]
      ,[db_sql_server_2000_express]
      ,[db_sql_server_2000_other]
      ,[db_sql_server_2005_standard]
      ,[db_sql_server_2005_enterprise]
      ,[db_sql_server_2005_express]
      ,[db_sql_server_2005_other]
      ,[db_sql_server_2005_old]
      ,[db_sql_server_2012_standard]
      ,[db_sql_server_2012_enterprise]
      ,[db_sql_server_2012_express]
      ,[db_sql_server_2012_other]
      ,[db_sql_server_2008_standard_revised]
      ,[db_sql_server_2008_enterprise_revised]
      ,[db_sql_server_2008_express_revised]
      ,[db_sql_server_2008_other_revised]
      ,[db_sql_server_2008_old_revised]
      ,[db_sql_server_2008_r2_standard_revised]
      ,[db_sql_server_2008_r2_enterprise_revised]
      ,[db_sql_server_2008_r2_express_revised]
      ,[db_sql_server_2008_r2_other_revised]
      ,[db_sql_server_2008_r2_old_revised]
      ,[db_sql_server_2014_standard]
      ,[db_sql_server_2014_enterprise]
      ,[db_sql_server_2014_express]
      ,[db_sql_server_2014_other]
      ,[db_postgres_revised]
      ,[db_mysql_revised]
      ,[db_oracle_revised]
      ,[db_postgres_old]
      ,[db_mysql_old]
      ,[db_oracle_old]
      ,[app_dev_deployment]
      ,[authoring_publishing]
      ,[collaborative_apps]
      ,[crm]
      ,[other_db_and_bi]
      ,[engineering]
      ,[erp]
      ,[os_and_storage_sw]
      ,[ops_and_manufacturing]
      ,[security]
      ,[system_infrastructure_network_mgmt]
      ,[msft_exchange]
      ,[msft_sharepoint]
      ,[msft_lync]
      ,[msft_dynamics]
      ,[db_oracle_12c_revised]
      ,[db_oracle_11g_revised]
      ,[db_oracle_10g_revised]
      ,[db_oracle_9_older_revised]
      ,[db_oracle_other_revised]
      ,[db_ibm_db2_101_revised]
      ,[db_ibm_db2_98_revised]
      ,[db_ibm_db2_97_revised]
      ,[db_ibm_db2_95_older_revised]
      ,[db_ibm_db2_other_revised]
      ,[db_mysql_56_revised]
      ,[db_mysql_55_revised]
      ,[db_mysql_54_revised]
      ,[db_mysql_51_older_revised]
      ,[db_mysql_other_revised]
      ,[db_postgresql_7_revised]
      ,[db_postgresql_8_revised]
      ,[db_postgresql_9_revised]
      --,[wl_boolean]
	  --,V.*
  FROM [Spiceworks Workload Files].[csv].[msft_deliver_final_instances_2017_07] W
	--WHERE W.[server_roles_flag]   = 0 and W.[server_roles_uuid] IS NOT NULL
	--WHERE W.server_roles_uuid COLLATE DATABASE_DEFAULT  IN (SELECT SR.server_roles_uuid FROM [Spiceworks Server Roles Files].[csv].[msft_deliver_server_roles_2017_07] SR)
  --JOIN [Spiceworks Server Roles Files].[csv].[msft_deliver_server_roles_2017_07] SR
	--ON W.server_roles_uuid = SR.server_roles_uuid COLLATE DATABASE_DEFAULT
  --WHERE server_roles_flag <> 1
--  JOIN [Spiceworks VID Files].[csv].[msft_deliver_old_vid_2017_07] V
--	ON W.host_id = V.host_id
--	AND W.[uuid] = V.[uuid]
----	and W.old_vid_virt_software <> V.virtualization_software

WHERE db_boolean = 1 AND 
--[other_db_and_bi] >0
(
--	db_sql_server_2000_standard=0   --All 0
--	db_sql_server_2000_enterprise=0   --NOT All 0
--AND db_sql_server_2000_express=0   --All 0
	db_sql_server_2000_other=0 
AND db_sql_server_2005_standard=0 
AND db_sql_server_2005_enterprise=0 
AND db_sql_server_2005_express=0 
AND db_sql_server_2005_other=0 
AND db_sql_server_2005_old=0 
AND db_sql_server_2012_standard=0 
AND db_sql_server_2012_enterprise=0 
AND db_sql_server_2012_express=0 
AND db_sql_server_2012_other=0 
AND db_sql_server_2008_standard_revised=0 
AND db_sql_server_2008_enterprise_revised=0 
AND db_sql_server_2008_express_revised=0 
AND db_sql_server_2008_other_revised=0 
AND db_sql_server_2008_old_revised=0 
AND db_sql_server_2008_r2_standard_revised=0 
AND db_sql_server_2008_r2_enterprise_revised=0 
AND db_sql_server_2008_r2_express_revised=0 
AND db_sql_server_2008_r2_other_revised=0 
AND db_sql_server_2008_r2_old_revised=0 
AND db_sql_server_2014_standard=0 
AND db_sql_server_2014_enterprise=0 
AND db_sql_server_2014_express=0 
AND db_sql_server_2014_other=0 
AND db_postgres_revised=0 
AND db_mysql_revised=0 
AND db_oracle_revised=0 
AND db_postgres_old=0 
AND db_mysql_old=0 
AND db_oracle_old = 0
--AND [other_db_and_bi] = 0  --NOT All 0, covers more than just DB
--AND [db_oracle_12c_revised]=0   --All 0
--AND [db_oracle_11g_revised]=0   --NOT All 0
--AND [db_oracle_10g_revised]=0   --NOT All 0
--AND [db_oracle_9_older_revised]=0   --All 0
--AND [db_oracle_other_revised]=0   --All 0
AND [db_ibm_db2_101_revised]=0 
--AND [db_ibm_db2_98_revised]=0   --All 0
AND [db_ibm_db2_97_revised]=0 
AND [db_ibm_db2_95_older_revised]=0 
--AND [db_ibm_db2_other_revised]=0   --All 0
--AND [db_mysql_56_revised]=0   --NOT All 0
--AND [db_mysql_55_revised]=0   --NOT All 0
--AND [db_mysql_54_revised]=0   --NOT All 0
--AND [db_mysql_51_older_revised]=0   --All 0
--AND [db_mysql_other_revised]=0   --NOT All 0
--AND [db_postgresql_7_revised]=0   --NOT All 0
--AND [db_postgresql_8_revised]=0   --NOT All 0
--AND [db_postgresql_9_revised]=0  --NOT All 0
)

--2878 rows below
/*
(
db_sql_server_2000_standard=1 
OR db_sql_server_2000_enterprise=1 
OR db_sql_server_2000_express=1 
OR db_sql_server_2000_other=1 
OR db_sql_server_2005_standard=1 
OR db_sql_server_2005_enterprise=1 
OR db_sql_server_2005_express=1 
OR db_sql_server_2005_other=1 
OR db_sql_server_2005_old=1 
OR db_sql_server_2012_standard=1 
OR db_sql_server_2012_enterprise=1 
OR db_sql_server_2012_express=1 
OR db_sql_server_2012_other=1 
OR db_sql_server_2008_standard_revised=1 
OR db_sql_server_2008_enterprise_revised=1 
OR db_sql_server_2008_express_revised=1 
OR db_sql_server_2008_other_revised=1 
OR db_sql_server_2008_old_revised=1 
OR db_sql_server_2008_r2_standard_revised=1 
OR db_sql_server_2008_r2_enterprise_revised=1 
OR db_sql_server_2008_r2_express_revised=1 
OR db_sql_server_2008_r2_other_revised=1 
OR db_sql_server_2008_r2_old_revised=1 
OR db_sql_server_2014_standard=1 
OR db_sql_server_2014_enterprise=1 
OR db_sql_server_2014_express=1 
OR db_sql_server_2014_other=1 
OR db_postgres_revised=1 
OR db_mysql_revised=1 
OR db_oracle_revised=1 
OR db_postgres_old=1 
OR db_mysql_old=1 
OR db_oracle_old = 1
)*/