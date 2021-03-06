/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [uuid]
--SELECT DISTINCT [sw_flag]  -- bit . DataClass:  Flag
--SELECT DISTINCT [email_delivery]  -- 3 vals: antispam,hosted,onsite . DataClass:  Label
--SELECT DISTINCT [email_server]  -- 93 strings . DataClass:  Label
--SELECT DISTINCT [host]  -- 87 strings . DataClass:  Label
--SELECT DISTINCT [exchange_2000]  -- 18 ints . DataClass:  Quantity
--SELECT DISTINCT [exchange_2003]  -- 43 ints . DataClass:  Quantity
--SELECT DISTINCT [exchange_2007]  -- 58 ints . DataClass:  Quantity
--SELECT DISTINCT [exchange_2007_60516]  -- 3 vals: 0,1,2 . DataClass:  Unknown
--SELECT DISTINCT [exchange_2007_68525]  -- 14 ints, range 0-48 . DataClass:  Quantity
--SELECT DISTINCT [exchange_2010]  -- 118 ints . DataClass:  Quantity
--SELECT DISTINCT [exchange_2013]  -- 199 ints . DataClass:  Quantity
--SELECT DISTINCT [exchange_2016]  -- 21 ints . DataClass:  Quantity
--SELECT DISTINCT [exchange_5_0]  -- 4 ints . DataClass:  Quantity
--SELECT DISTINCT [exchange_5_5]  -- 3 vals: 0,1,2 . DataClass:  Unknown
--SELECT DISTINCT [exchange_1_0]  -- 97 ints . DataClass:  Quantity
--SELECT DISTINCT [exchange_2_1]  -- 87 ints . DataClass:  Quantity
--SELECT DISTINCT [exchange_other]  -- 105 ints . DataClass:  Quantity
--SELECT DISTINCT [sbs]  -- 7 ints . DataClass:  Quantity
--SELECT DISTINCT [microsoft_ebs]  -- 22 ints . DataClass:  Quantity
--SELECT DISTINCT [lotus_notes_v1]  -- 95 ints . DataClass:  Quantity
--SELECT DISTINCT [lotus_notes_v2]  -- 28 ints . DataClass:  Quantity
--SELECT DISTINCT [lotus_notes_v3]  -- 12 ints, range 0-16 . DataClass:  Quantity
--SELECT DISTINCT [lotus_notes_v4]  -- 13 ints . DataClass:  Quantity
--SELECT DISTINCT [lotus_notes_v5]  -- 15 ints . DataClass:  Quantity
--SELECT DISTINCT [lotus_notes_v6]  -- 305 ints . DataClass:  Quantity
--SELECT DISTINCT [lotus_notes_v7]  -- 327 ints . DataClass:  Quantity
--SELECT DISTINCT [lotus_notes_v8]  -- 629 ints . DataClass:  Quantity
--SELECT DISTINCT [lotus_notes_v9]  -- 5 ints . DataClass:  Quantity
--SELECT DISTINCT [groupwise]  -- all 0 . DataClass:  Unused


  FROM [Spiceworks Email Files].[csv].[msft_deliver_email_2017_07]