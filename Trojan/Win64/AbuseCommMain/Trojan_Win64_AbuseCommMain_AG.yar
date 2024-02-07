
rule Trojan_Win64_AbuseCommMain_AG{
	meta:
		description = "Trojan:Win64/AbuseCommMain.AG,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 31 00 46 00 32 00 46 00 38 00 33 00 41 00 41 00 36 00 33 00 34 00 34 00 35 00 35 00 44 00 45 00 32 00 46 00 46 00 32 00 31 00 44 00 45 00 31 00 43 00 46 00 42 00 46 00 33 00 44 00 35 00 39 00 36 00 33 00 45 00 36 00 36 00 36 00 46 00 43 00 46 00 44 00 44 00 41 00 31 00 38 00 44 00 33 00 30 00 37 00 31 00 44 00 32 00 42 00 35 00 46 00 32 00 37 00 30 00 31 00 32 00 46 00 37 00 45 00 } //01 00  tox:1F2F83AA634455DE2FF21DE1CFBF3D5963E666FCFDDA18D3071D2B5F27012F7E
		$a_02_1 = {31 46 32 46 38 33 41 41 36 33 34 34 35 35 44 45 32 46 46 32 31 44 45 31 43 46 42 46 33 44 35 39 36 33 45 36 36 36 46 43 46 44 44 41 31 38 44 33 30 37 31 44 32 42 35 46 32 37 30 31 32 46 37 45 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {31 46 32 46 38 33 41 41 36 33 34 34 35 35 44 45 32 46 46 32 31 44 45 31 43 46 42 46 33 44 35 39 36 33 45 36 36 36 46 43 46 44 44 41 31 38 44 33 30 37 31 44 32 42 35 46 32 37 30 31 32 46 37 45 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 31 46 32 46 38 33 41 41 36 33 34 34 35 35 44 45 32 46 46 32 31 44 45 31 43 46 42 46 33 44 35 39 36 33 45 36 36 36 46 43 46 44 44 41 31 38 44 33 30 37 31 44 32 42 35 46 32 37 30 31 32 46 37 45 2e 68 73 74 72 } //00 00  \tox\1F2F83AA634455DE2FF21DE1CFBF3D5963E666FCFDDA18D3071D2B5F27012F7E.hstr
	condition:
		any of ($a_*)
 
}