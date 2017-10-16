--RDR for Email dataset: Browsing
--Tim Flanagan
--Sep. 19, 2017

--COLUMN domain
SELECT TOP (1000) [ID]
      ,[MUID]
      ,[VersionName]
      ,[VersionNumber]
      ,[Version_ID]
      ,[VersionFlag]
      ,[Name]
      ,[Code]
      ,[ChangeTrackingMask]
      ,[EnterDateTime]
      ,[EnterUserName]
      ,[EnterVersionNumber]
      ,[LastChgDateTime]
      ,[LastChgUserName]
      ,[LastChgVersionNumber]
      ,[ValidationStatus]
  FROM [MDSDB].[mdm].[svw_TAPP_Email_DC_Column]

--HOST domain
SELECT TOP (1000) [ID]
      ,[MUID]
      ,[VersionName]
      ,[VersionNumber]
      ,[Version_ID]
      ,[VersionFlag]
      ,[Name]
      ,[Code]
      ,[ChangeTrackingMask]
      ,[EnterDateTime]
      ,[EnterUserName]
      ,[EnterVersionNumber]
      ,[LastChgDateTime]
      ,[LastChgUserName]
      ,[LastChgVersionNumber]
      ,[ValidationStatus]
  FROM [MDSDB].[mdm].[svw_TAPP_Email_DC_Host]