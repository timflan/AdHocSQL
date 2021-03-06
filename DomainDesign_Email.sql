--Simple domains...10/6

--SELECT DISTINCT [email_delivery]
--SELECT DISTINCT [email_server]
--SELECT DISTINCT [host]
	--SELECT DISTINCT [email_delivery]
		,[email_server]
		,[host]

FROM [Spiceworks Email Files].[csv].[msft_deliver_email_2017_08]
Order by 2,3
SELECT DISTINCT indicatorname as [Product]
	--,indicatorvalue as [Count]    --SELECT TOP 1000 *
FROM [Spiceworks Email Files].[csv].[msft_deliver_email_2017_08]
unpivot
(
  indicatorvalue
  for indicatorname in (  --These are the column names that serve to "label" the data)
       [exchange_2000]
      ,[exchange_2003]
      ,[exchange_2007]
      ,[exchange_2007_60516]
      ,[exchange_2007_68525]
      ,[exchange_2010]
      ,[exchange_2013]
      ,[exchange_2016]
      ,[exchange_5_0]
      ,[exchange_5_5]
      ,[exchange_1_0]
      ,[exchange_2_1]
      ,[exchange_other]
      ,[sbs]
      ,[microsoft_ebs]
      ,[lotus_notes_v1]
      ,[lotus_notes_v2]
      ,[lotus_notes_v3]
      ,[lotus_notes_v4]
      ,[lotus_notes_v5]
      ,[lotus_notes_v6]
      ,[lotus_notes_v7]
      ,[lotus_notes_v8]
      ,[lotus_notes_v9]
      ,[groupwise]
	)
) unpiv
WHERE indicatorvalue>0


--New work Sep 18, just the [Product] domain for the Email dataset
--Tim Flanagan
--Server: capengsql2\MTS,57974

SELECT  DISTINCT
	[email_delivery] + ':' + COALESCE([email_server],[host],'unknown') + ':' + indicatorname COLLATE DATABASE_DEFAULT as [ProductName]
	,[email_delivery] AS [EmailDelivery]
	,COALESCE([email_server],'') AS [EmailServer]
	,COALESCE([host],'') AS [Host]
	,indicatorname as [DataColName]
	--,indicatorvalue as [Count]    --SELECT TOP 1000 *
FROM [Spiceworks Email Files].[csv].[msft_deliver_email_2017_08]
unpivot
(
  indicatorvalue
  for indicatorname in (  --These are the column names that serve to "label" the data)
       [exchange_2000]
      ,[exchange_2003]
      ,[exchange_2007]
      ,[exchange_2007_60516]
      ,[exchange_2007_68525]
      ,[exchange_2010]
      ,[exchange_2013]
      ,[exchange_2016]
      ,[exchange_5_0]
      ,[exchange_5_5]
      ,[exchange_1_0]
      ,[exchange_2_1]
      ,[exchange_other]
      ,[sbs]
      ,[microsoft_ebs]
      ,[lotus_notes_v1]
      ,[lotus_notes_v2]
      ,[lotus_notes_v3]
      ,[lotus_notes_v4]
      ,[lotus_notes_v5]
      ,[lotus_notes_v6]
      ,[lotus_notes_v7]
      ,[lotus_notes_v8]
      ,[lotus_notes_v9]
      ,[groupwise]
	)
) unpiv
WHERE indicatorvalue>0

Order By 4
;



/*
SELECT TOP (1000) [uuid]
      ,[sw_flag]
      ,[email_delivery]
      ,[email_server]
      ,[host]
      ,[exchange_2000]
      ,[exchange_2003]
      ,[exchange_2007]
      ,[exchange_2007_60516]
      ,[exchange_2007_68525]
      ,[exchange_2010]
      ,[exchange_2013]
      ,[exchange_2016]
      ,[exchange_5_0]
      ,[exchange_5_5]
      ,[exchange_1_0]
      ,[exchange_2_1]
      ,[exchange_other]
      ,[sbs]
      ,[microsoft_ebs]
      ,[lotus_notes_v1]
      ,[lotus_notes_v2]
      ,[lotus_notes_v3]
      ,[lotus_notes_v4]
      ,[lotus_notes_v5]
      ,[lotus_notes_v6]
      ,[lotus_notes_v7]
      ,[lotus_notes_v8]
      ,[lotus_notes_v9]
      ,[groupwise]
  FROM [Spiceworks Email Files].[csv].[msft_deliver_email_2017_07]

  --Email App domain
--SELECT DISTINCT [sw_flag],[email_delivery],[email_server],[host]
SELECT DISTINCT 
	[email_delivery] AS [EmailServiceType]
      ,COALESCE([email_server],[host]) AS [Provider]
--SELECT DISTINCT [sw_flag],[email_delivery],[email_server],[host]
--select count(*)  --499,534
FROM [Spiceworks Email Files].[csv].[msft_deliver_email_2017_07]
  ORDER BY 1,2--2,4,1,3

--A sample of everything   --TOTAL ROWS: 499,534
SELECT TOP (25000) * FROM [Spiceworks Email Files].[csv].[msft_deliver_email_2017_07]

--Tall and Thin!
SELECT  --TOP (25000) --TOTAL ROWS: 414,341
	[uuid]
      --,[sw_flag]  --Not needed, since 0 = all zero [indicatorvalue]
	,[email_delivery] AS [EmailServiceType]
      ,COALESCE([email_server],[host]) AS [Provider]
	,indicatorname
	,indicatorvalue
FROM [Spiceworks Email Files].[csv].[msft_deliver_email_2017_07]
unpivot
(
  indicatorvalue
  for indicatorname in (
       [exchange_2000]
      ,[exchange_2003]
      ,[exchange_2007]
      ,[exchange_2007_60516]
      ,[exchange_2007_68525]
      ,[exchange_2010]
      ,[exchange_2013]
      ,[exchange_2016]
      ,[exchange_5_0]
      ,[exchange_5_5]
      ,[exchange_1_0]
      ,[exchange_2_1]
      ,[exchange_other]
      ,[sbs]
      ,[microsoft_ebs]
      ,[lotus_notes_v1]
      ,[lotus_notes_v2]
      ,[lotus_notes_v3]
      ,[lotus_notes_v4]
      ,[lotus_notes_v5]
      ,[lotus_notes_v6]
      ,[lotus_notes_v7]
      ,[lotus_notes_v8]
      ,[lotus_notes_v9]
      ,[groupwise]
	)
) unpiv
WHERE indicatorvalue>0
;
*/
/*
--Taller! Thinner!
SELECT  TOP (25000) --TOTAL ROWS: 414,341
	[uuid] as [UUID]
    ,NULL AS [Platform]
	,[email_delivery] + ':' + COALESCE([email_server],[host],'unknown') + ':' + indicatorname as [Product]
	,indicatorvalue as [Count]
FROM [Spiceworks Email Files].[csv].[msft_deliver_email_2017_07]
unpivot
(
  indicatorvalue
  for indicatorname in (
       [exchange_2000]
      ,[exchange_2003]
      ,[exchange_2007]
      ,[exchange_2007_60516]
      ,[exchange_2007_68525]
      ,[exchange_2010]
      ,[exchange_2013]
      ,[exchange_2016]
      ,[exchange_5_0]
      ,[exchange_5_5]
      ,[exchange_1_0]
      ,[exchange_2_1]
      ,[exchange_other]
      ,[sbs]
      ,[microsoft_ebs]
      ,[lotus_notes_v1]
      ,[lotus_notes_v2]
      ,[lotus_notes_v3]
      ,[lotus_notes_v4]
      ,[lotus_notes_v5]
      ,[lotus_notes_v6]
      ,[lotus_notes_v7]
      ,[lotus_notes_v8]
      ,[lotus_notes_v9]
      ,[groupwise]
	)
) unpiv
WHERE indicatorvalue>0
;
*/
/*
SELECT  DISTINCT [email_delivery] + ': ' + COALESCE([email_server],[host],'unknown') + ': ' + indicatorname as [Product]
	--,indicatorvalue
FROM [Spiceworks Email Files].[csv].[msft_deliver_email_2017_07]
unpivot
(
  indicatorvalue
  for indicatorname in (
       [exchange_2000]
      ,[exchange_2003]
      ,[exchange_2007]
      ,[exchange_2007_60516]
      ,[exchange_2007_68525]
      ,[exchange_2010]
      ,[exchange_2013]
      ,[exchange_2016]
      ,[exchange_5_0]
      ,[exchange_5_5]
      ,[exchange_1_0]
      ,[exchange_2_1]
      ,[exchange_other]
      ,[sbs]
      ,[microsoft_ebs]
      ,[lotus_notes_v1]
      ,[lotus_notes_v2]
      ,[lotus_notes_v3]
      ,[lotus_notes_v4]
      ,[lotus_notes_v5]
      ,[lotus_notes_v6]
      ,[lotus_notes_v7]
      ,[lotus_notes_v8]
      ,[lotus_notes_v9]
      ,[groupwise]
	)
) unpiv
WHERE indicatorvalue>0
;

*/