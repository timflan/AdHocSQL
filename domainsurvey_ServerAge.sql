/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
--SELECT DISTINCT [uuid]  --ID:ID
--SELECT DISTINCT [server_roles_uuid]  --ID:ID
--SELECT DISTINCT [server_count]  --ID:ID
--SELECT DISTINCT [classification]  --47 ints:
--SELECT DISTINCT [oem]  --3 strings:in_previous_month, new_arrival, unknown:Label
--SELECT DISTINCT [vid_host]  --13 strings:Label
--SELECT DISTINCT [memory]  --2 strings: host, not_host:Flag
--SELECT DISTINCT [born_on_year]  --5 strings: 17 - 32,1to8,33 - 64,64+,9to16:Label
--SELECT DISTINCT [operating_system]  --41 years in format YYYY-01-01:Label
--SELECT DISTINCT [db_workload]  --402 strings varying sensibility:Label
--SELECT DISTINCT [other_db_and_bi_workload]  --bit:Flag
--SELECT DISTINCT [app_dev_workload]  --bit:Flag
--SELECT DISTINCT [other_workload]  --bit:Flag
FROM [Spiceworks Server Age Files].[csv].[msft_deliver_server_age_2017_07]