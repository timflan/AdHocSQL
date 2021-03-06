--SELECT DISTINCT [country]  --238 familiar country names + NULL
--SELECT DISTINCT [industry]  --24 familiar industries + NULL
--SELECT DISTINCT [sic1]  --1033 four-digit ... SIC codes? Some dupes (0111 & 111, for instance)
--SELECT DISTINCT [metro_code]  --212 three-digit numbers 500-881, plus NULL & 0...not area codes. US-only
	--See https://www.census.gov/population/estimates/metro-city/99mfips.txt
--SELECT DISTINCT [employees]  --6 size buckets + NULL: 1000+ 100-499 10to49 1to9 500-999 50-99
--SELECT DISTINCT [pcs]  --8 rows, size buckets + NULL: 1to4 250-499 25-49 500+ 50-249 5to24 unknown
		--select count(*)
FROM [Spiceworks Demogs Files].[csv].[msft_deliver_profile_demographics_2017_07]
Order by 1







/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT TOP (1000) [uuid]
--SELECT DISTINCT [country]  --238 familiar country names + NULL
--SELECT DISTINCT [industry]  --24 familiar industries + NULL
--SELECT DISTINCT [sic1]  --1033 four-digit ... SIC codes? Some dupes (0111 & 111, for instance)
--SELECT DISTINCT [metro_code]  --212 three-digit numbers 500-881, plus NULL & 0...not area codes. US-only
	--See https://www.census.gov/population/estimates/metro-city/99mfips.txt
--SELECT DISTINCT [employees]  --6 size buckets + NULL: 1000+ 100-499 10to49 1to9 500-999 50-99
SELECT DISTINCT [pcs]  --8 rows, size buckets + NULL: 1to4 250-499 25-49 500+ 50-249 5to24 unknown
--SELECT DISTINCT [pc_count]  --2426 ints, 14-6579
--SELECT DISTINCT [physical_server_count]  --426 int + NULL: 1-3284
--SELECT DISTINCT [post_62_workload]  --bit-like, but only 1 & NULL
--SELECT DISTINCT [server_age]  --bit-like, but only 1 & NULL
--SELECT DISTINCT [server_roles]  --bit-like, but only 1 & NULL
--SELECT DISTINCT [virt_os]  --bit-like, but only 1 & NULL
--SELECT DISTINCT [old_vid]  --bit-like, but only 1 & NULL
--SELECT DISTINCT [email]  --bit-like, but only 1 & NULL
--SELECT DISTINCT [old_cloud]  --bit-like, but only 1 & NULL
--SELECT DISTINCT [new_cloud]  --bit-like, but only 1 & NULL
--SELECT DISTINCT [software_cloud]  --bit-like, but only 1 & NULL
--SELECT DISTINCT [online_pc]  --bit-like, but only 1 & NULL
--SELECT DISTINCT [pc_workload]  --bit-like, but only 1 & NULL
--SELECT DISTINCT [mobile]  --bit-like, but only 1 & NULL
--SELECT DISTINCT [social]  --bit-like, but only 1 & NULL
--SELECT DISTINCT [ad_impressions]  --bit-like, but only 1 & NULL
--SELECT DISTINCT [cloud_cost_monitor]  --bit-like, but only 1 & NULL
		--select count(*)
FROM [Spiceworks Demogs Files].[csv].[msft_deliver_profile_demographics_2017_07]
Order by 1
--where email = 1  --499,534

--Geo 
SELECT DISTINCT [country]  --238 familiar country names + NULL
	,[metro_code]  --212 three-digit numbers 500-881, plus NULL & 0...US Census 
FROM [Spiceworks Demogs Files].[csv].[msft_deliver_profile_demographics_2017_07]
Order by 2,1
--Definitely two separate domain entities here

--Industry
SELECT DISTINCT [industry]  --24 familiar industries + NULL
	,[sic1]  --1033 four-digit ... SIC codes? Some dupes (0111 & 111, for instance)
FROM [Spiceworks Demogs Files].[csv].[msft_deliver_profile_demographics_2017_07]
--Definitely two separate domain entities here

--OrgSize
SELECT DISTINCT --[employees]  --6 size buckets + NULL: 1000+ 100-499 10to49 1to9 500-999 50-99
	[pcs]  --8 rows, size buckets + NULL: 1to4 250-499 25-49 500+ 50-249 5to24 unknown
FROM [Spiceworks Demogs Files].[csv].[msft_deliver_profile_demographics_2017_07]
--Definitely two separate domain entities here

--SELECT DISTINCT [pc_count]  --2426 ints, 14-6579
--SELECT DISTINCT [physical_server_count]  --426 int + NULL: 1-3284
--No domain entities for these quantities.

--BitMask for all these bit columns?
SELECT DISTINCT [post_62_workload]  --bit-like, but only 1 & NULL
     ,[server_age]  --bit-like, but only 1 & NULL
     ,[server_roles]  --bit-like, but only 1 & NULL
     ,[virt_os]  --bit-like, but only 1 & NULL
     ,[old_vid]  --bit-like, but only 1 & NULL
     ,[email]  --bit-like, but only 1 & NULL
     ,[old_cloud]  --bit-like, but only 1 & NULL
     ,[new_cloud]  --bit-like, but only 1 & NULL
     ,[software_cloud]  --bit-like, but only 1 & NULL
     ,[online_pc]  --bit-like, but only 1 & NULL
     ,[pc_workload]  --bit-like, but only 1 & NULL
     ,[mobile]  --bit-like, but only 1 & NULL
     ,[social]  --bit-like, but only 1 & NULL
     ,[ad_impressions]  --bit-like, but only 1 & NULL
     ,[cloud_cost_monitor]  --bit-like, but only 1 & NULL
FROM [Spiceworks Demogs Files].[csv].[msft_deliver_profile_demographics_2017_07]
--max possible permutations: 2^16: 65,536
--Actual: 843
