SELECT --*,
    c.name 'Column Name',
    t.Name 'Data type',
    c.max_length 'Max Length',
    c.precision ,
    c.scale ,
    c.is_nullable,
    ISNULL(i.is_primary_key, 0) 'Primary Key'
			--,c.*
FROM    
    sys.columns c
INNER JOIN 
    sys.types t ON c.user_type_id = t.user_type_id
LEFT OUTER JOIN 
    sys.index_columns ic ON ic.object_id = c.object_id AND ic.column_id = c.column_id
LEFT OUTER JOIN 
    sys.indexes i ON ic.object_id = i.object_id AND ic.index_id = i.index_id
WHERE
--    c.object_id = OBJECT_ID('[csv].[msft_deliver_pcworkloads_2017_07]')  --Client
--    c.object_id = OBJECT_ID('[csv].[msft_deliver_server_virtual_2017_07]')  --Network
--    c.object_id = OBJECT_ID('[csv].[msft_deliver_profile_demographics_2017_07]')  --Demogs
--    c.object_id = OBJECT_ID('[csv].[msft_deliver_email_2017_07]')  --Email
--    c.object_id = OBJECT_ID('[csv].[msft_deliver_final_instances_2017_07]') --Workload
--    c.object_id = OBJECT_ID('[csv].[msft_deliver_ccm_cost_2017_07]')
--    c.object_id = OBJECT_ID('[csv].[msft_deliver_ccm_usage_2017_07]')
--    c.object_id = OBJECT_ID('[csv].[msft_deliver_cloud_revised_2017_07]')
--    c.object_id = OBJECT_ID('[csv].[msft_deliver_cloud_software_2017_07]')
--    c.object_id = OBJECT_ID('[csv].[msft_deliver_old_cloud_2017_07]')
--    c.object_id = OBJECT_ID('[csv].[msft_deliver_online_services_devices_2017_07]')
--    c.object_id = OBJECT_ID('[csv].[msft_deliver_server_age_2017_07]')
--    c.object_id = OBJECT_ID('[csv].[msft_deliver_server_roles_2017_07]')
--    c.object_id = OBJECT_ID('[csv].[msft_deliver_old_vid_2017_07]')
--    c.object_id = OBJECT_ID('[Cube].[DIM_Date]')
--    c.object_id = OBJECT_ID('[Cube].[DIM_Operating_System]')
--    c.object_id = OBJECT_ID('[Cube].[DIM_FilterPrevMonth]')
--    c.object_id = OBJECT_ID('[Cube].[DIM_Generation]')
--    c.object_id = OBJECT_ID('[Cube].[DIM_Geography]')
--    c.object_id = OBJECT_ID('[Cube].[DIM_ModelType]')
--    c.object_id = OBJECT_ID('[Cube].[DIM_ModelVersion]')
--    c.object_id = OBJECT_ID('[Cube].[DIM_Product]')
--    c.object_id = OBJECT_ID('[Cube].[DIM_Segment]')
--    c.object_id = OBJECT_ID('[Cube].[DIM_Source]')
--    c.object_id = OBJECT_ID('[Cube].[FilterPrevQuarter]')
--    c.object_id = OBJECT_ID('[OSCubeInputReview].[Source_Review]')
--    c.object_id = OBJECT_ID('[OSCubeInputReview].[Sources Targets]')
--    c.object_id = OBJECT_ID('[OSCubeProd].[OS_Model_Prod]')
--    c.object_id = OBJECT_ID('[PS Diva].[JD Special Cube]')
--    c.object_id = OBJECT_ID('[PS Diva].[MAP_DSSTSourcesInfluenceMap]')
--    c.object_id = OBJECT_ID('[PS Diva].[SegmentOrder]')
--    c.object_id = OBJECT_ID('[PS Diva].[Source_type]')
--    c.object_id = OBJECT_ID('[PSCube].[PS_Model_Eng]')
--    c.object_id = OBJECT_ID('[PSCube].[PS_Model_Pre_Prod]')
--    c.object_id = OBJECT_ID('[PSCube].[PS_Model_Prod]')
--    c.object_id = OBJECT_ID('[PSCubeInputReview].[Dim:Display]')
--    c.object_id = OBJECT_ID('[PSCubeInputReview].[View:Fact PS]')
--    c.object_id = OBJECT_ID('[PSCubeInputReview].[View:KPI Targets]')
--    c.object_id = OBJECT_ID('[PSTOPLINE].[control]')
--    c.object_id = OBJECT_ID('[PSTOPLINE].[PS_Topline]')
--    c.object_id = OBJECT_ID('[CTool].[Source Tables]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:Device_Type]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:Employees]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:Generation]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:Geo_Detail]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:Hypervisor]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:Hypervisor_Detail]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:MachineType_detail]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:Memory]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:Metric]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:Mobile_Workload]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:Model]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:OEM]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:Org]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:OS]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:OS_Detail]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:PCs]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:Segment]')
--    c.object_id = OBJECT_ID('[dbo].[DIM:Storage]')
    c.object_id = OBJECT_ID('[dbo].[DIM:Vertical]')
--    c.object_id = OBJECT_ID('')
--    c.object_id = OBJECT_ID('')
--    c.object_id = OBJECT_ID('')
--    c.object_id = OBJECT_ID('')

sp_spaceused 'DIM:Vertical'