--MDS INSERT to Staging Table query
	--Import Types 
		--Type Name Description 
		--0 Merge Optimistic Insert and Update records with only values that are provided. Ignore any columns with nulls 
		--1 Insert Inserts any new records into the entity.  If the code already exists an error is given for the member record. 
		--2 Merge Overwrite Inserts and update records with all values in the table.  All null values in staging will be updated into the MDS entity.  Only used for entire record update. 
		--3 Delete Standard soft delete of the member in MDS.  History for the member is retained and the member delete can be reversed in the transaction log. 
		--4 Purge New! Purges the record completely from the selected version 
		--5 Delete Automatic New soft delete process that will remove any dba dependencies for the member to allow a soft delete of the member from the system 
		--6 Purge Automatic Extended purge functionality that will remove any dba dependencies for the member to allow immediate removal of the member from the system 
--Server: CAPENGSQL1

--INSERT Email Product consolidated domain
--SELECT * FROM [MDSDB].[stg].[DomainConsolidated_Email_Product_Leaf]
INSERT [MDSDB].[stg].[DomainConsolidated_Email_Product_Leaf]
(
      [ImportType]
      ,[BatchTag]
      ,[Name]
	  ,[EmailDelivery]
	  ,[EmailServer]
	  ,[Host]	
	  ,[Column]
)
SELECT 
	  1 AS [ImportType] --1 Insert, 2 Merge overwrite, 3 Delete, 4 Purge, 5 Delete Automatic, 6 Purge Automatic
      ,'Initial load from 2017_08 datadrop' AS [BatchTag]
      ,LL.ProductName AS [Name]
	  ,ED.Code AS [EmailDelivery]
	  ,ES.Code AS [EmailServer]
	  ,H.Code AS [Host]	
	  ,C.Code AS [Column]
		  --,ED.Name AS [EmailDeliveryN]
		  --,ES.Name AS [EmailServerN]
		  --,H.Name AS [HostN]	
		  --,C.Name AS [ColumnN]   --SELECT *
FROM [mdm].[svw_TAPP_Email_LiteralLashups] LL
JOIN [mdm].[svw_TAPP_Email_DC_Column] C
	ON LL.Source_DataColName = C.Name
JOIN [mdm].[svw_TAPP_Email_DC_EmailDelivery]  ED
	ON LL.Source_EmailDelivery = ED.Name
JOIN [mdm].[svw_TAPP_Email_DC_EmailServer]  ES
	ON COALESCE(LL.Source_EmailServer,'') = COALESCE(ES.Name,'')
JOIN[mdm].[svw_TAPP_Email_DC_Host]  H
	ON COALESCE(LL.Source_Host,'') = COALESCE(H.Name,'')

--Run batch in MDS Web Portal>>Integration Management>> Import Data : http://capengsql1/MDS
--Verify success:
SELECT * FROM [mdm].[svw_TAPP_Email_D_Product]
