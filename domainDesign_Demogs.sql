
--Geo    --Definitely Just one domain entities we care about
SELECT DISTINCT [country]  --238 familiar country names + NULL
	--,[metro_code]  --212 three-digit numbers 500-881, plus NULL & 0...US Census 
FROM [Spiceworks Demogs Files].[csv].[msft_deliver_profile_demographics_2017_07]
--Definitely two separate domain entities here

--Industry   --Definitely two separate domain entities here. Map both.
SELECT DISTINCT [industry]  --24 familiar industries + NULL
FROM [Spiceworks Demogs Files].[csv].[msft_deliver_profile_demographics_2017_07]

SELECT DISTINCT [sic1]  --1033 four-digit ... SIC codes? Some dupes (0111 & 111, for instance)
FROM [Spiceworks Demogs Files].[csv].[msft_deliver_profile_demographics_2017_07]

--OrgSize   --Definitely two separate domain entities here, but only need to map one, I think.
SELECT DISTINCT [employees]  --6 size buckets + NULL: 1000+ 100-499 10to49 1to9 500-999 50-99
FROM [Spiceworks Demogs Files].[csv].[msft_deliver_profile_demographics_2017_07]

SELECT DISTINCT [pcs]  --8 rows, size buckets + NULL: 1to4 250-499 25-49 500+ 50-249 5to24 unknown
FROM [Spiceworks Demogs Files].[csv].[msft_deliver_profile_demographics_2017_07]

--SELECT DISTINCT [pc_count]  --2426 ints, 14-6579
--SELECT DISTINCT [physical_server_count]  --426 int + NULL: 1-3284
--No domain entities for these quantities.


--BitMask for all these bit columns? Doesn't seem to be needed yet.
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
