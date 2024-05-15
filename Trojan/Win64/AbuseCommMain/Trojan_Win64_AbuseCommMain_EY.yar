
rule Trojan_Win64_AbuseCommMain_EY{
	meta:
		description = "Trojan:Win64/AbuseCommMain.EY,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 33 00 35 00 38 00 41 00 43 00 30 00 46 00 36 00 43 00 38 00 31 00 33 00 44 00 44 00 34 00 46 00 44 00 32 00 34 00 33 00 35 00 32 00 34 00 46 00 30 00 34 00 30 00 45 00 32 00 46 00 37 00 37 00 39 00 36 00 39 00 32 00 37 00 38 00 32 00 37 00 34 00 42 00 44 00 38 00 41 00 38 00 39 00 34 00 35 00 42 00 35 00 30 00 34 00 31 00 41 00 32 00 34 00 39 00 37 00 38 00 36 00 45 00 33 00 32 00 } //01 00  tox:358AC0F6C813DD4FD243524F040E2F77969278274BD8A8945B5041A249786E32
		$a_02_1 = {33 35 38 41 43 30 46 36 43 38 31 33 44 44 34 46 44 32 34 33 35 32 34 46 30 34 30 45 32 46 37 37 39 36 39 32 37 38 32 37 34 42 44 38 41 38 39 34 35 42 35 30 34 31 41 32 34 39 37 38 36 45 33 32 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {33 35 38 41 43 30 46 36 43 38 31 33 44 44 34 46 44 32 34 33 35 32 34 46 30 34 30 45 32 46 37 37 39 36 39 32 37 38 32 37 34 42 44 38 41 38 39 34 35 42 35 30 34 31 41 32 34 39 37 38 36 45 33 32 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 33 35 38 41 43 30 46 36 43 38 31 33 44 44 34 46 44 32 34 33 35 32 34 46 30 34 30 45 32 46 37 37 39 36 39 32 37 38 32 37 34 42 44 38 41 38 39 34 35 42 35 30 34 31 41 32 34 39 37 38 36 45 33 32 2e 68 73 74 72 } //00 00  \tox\358AC0F6C813DD4FD243524F040E2F77969278274BD8A8945B5041A249786E32.hstr
	condition:
		any of ($a_*)
 
}