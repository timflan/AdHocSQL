/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [sic1]
      ,[SIC]
      ,[SIC2]
      ,[Primary Vertical Market]
      ,[Vertical Sector]
  FROM [MTS_Inputs].[dbo].[MAP:SicToVertical]

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [vertical]
      ,[industry]
  FROM [MTS_Inputs].[dbo].[MAP:IndustryOverride]

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [verticalid]
      ,[vertical]
      ,[verticalmap]
  FROM [MTS_Inputs].[dbo].[DIM:Vertical]

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Primary Vertical Market]
      ,[Vertical Sector]
  FROM [MTS_Inputs].[dbo].[MAP:VerticalMarketToSector]