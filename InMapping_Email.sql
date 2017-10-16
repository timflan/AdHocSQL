--
--Tim Flanagan
--Server: capengsql2\MTS,57974

SELECT  DISTINCT
--	[email_delivery] + ':' + COALESCE([email_server],[host],'unknown') + ':' + indicatorname COLLATE DATABASE_DEFAULT as [ProductName]
	[email_delivery] AS [EmailDelivery]
	,COALESCE([email_server],'') AS [EmailServer]
--	,COALESCE([host],'') AS [EmailHost]
	,indicatorname as EmailProduct
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
AND email_delivery = 'onsite'

Order By 1,2,3
