/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]  --ID
--SELECT DISTINCT [uuid]  --ID
--SELECT DISTINCT [host_id]  --ID
--SELECT DISTINCT [vm_id]  --ID
--SELECT DISTINCT [oem]  --220 strings	Label
--SELECT DISTINCT [virtualization_software]  --124 strings	Label
--SELECT DISTINCT [operating_system]  --307 strings	Label
  FROM [Spiceworks VID Files].[csv].[msft_deliver_old_vid_2017_07]