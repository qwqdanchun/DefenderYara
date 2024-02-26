
rule Trojan_Win64_AbuseCommMain_DL{
	meta:
		description = "Trojan:Win64/AbuseCommMain.DL,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 43 00 35 00 38 00 39 00 46 00 35 00 44 00 30 00 41 00 46 00 32 00 44 00 46 00 31 00 34 00 45 00 41 00 46 00 46 00 35 00 44 00 41 00 41 00 34 00 39 00 34 00 43 00 38 00 46 00 42 00 35 00 39 00 46 00 31 00 34 00 44 00 33 00 32 00 30 00 42 00 42 00 33 00 31 00 43 00 46 00 36 00 35 00 45 00 38 00 44 00 32 00 42 00 45 00 34 00 43 00 38 00 42 00 39 00 38 00 45 00 37 00 36 00 34 00 41 00 } //01 00  tox:C589F5D0AF2DF14EAFF5DAA494C8FB59F14D320BB31CF65E8D2BE4C8B98E764A
		$a_02_1 = {43 35 38 39 46 35 44 30 41 46 32 44 46 31 34 45 41 46 46 35 44 41 41 34 39 34 43 38 46 42 35 39 46 31 34 44 33 32 30 42 42 33 31 43 46 36 35 45 38 44 32 42 45 34 43 38 42 39 38 45 37 36 34 41 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {43 35 38 39 46 35 44 30 41 46 32 44 46 31 34 45 41 46 46 35 44 41 41 34 39 34 43 38 46 42 35 39 46 31 34 44 33 32 30 42 42 33 31 43 46 36 35 45 38 44 32 42 45 34 43 38 42 39 38 45 37 36 34 41 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 43 35 38 39 46 35 44 30 41 46 32 44 46 31 34 45 41 46 46 35 44 41 41 34 39 34 43 38 46 42 35 39 46 31 34 44 33 32 30 42 42 33 31 43 46 36 35 45 38 44 32 42 45 34 43 38 42 39 38 45 37 36 34 41 2e 68 73 74 72 } //00 00  \tox\C589F5D0AF2DF14EAFF5DAA494C8FB59F14D320BB31CF65E8D2BE4C8B98E764A.hstr
	condition:
		any of ($a_*)
 
}