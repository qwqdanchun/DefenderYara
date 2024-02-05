
rule Trojan_Win64_AbuseCommMain_BN{
	meta:
		description = "Trojan:Win64/AbuseCommMain.BN,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 41 00 37 00 42 00 39 00 41 00 44 00 32 00 33 00 46 00 35 00 41 00 43 00 34 00 41 00 42 00 35 00 34 00 30 00 34 00 42 00 46 00 44 00 45 00 31 00 45 00 36 00 37 00 43 00 45 00 30 00 37 00 39 00 37 00 46 00 34 00 46 00 46 00 44 00 31 00 43 00 37 00 39 00 44 00 38 00 41 00 35 00 33 00 39 00 45 00 31 00 37 00 34 00 30 00 36 00 41 00 35 00 35 00 44 00 35 00 45 00 44 00 39 00 33 00 42 00 } //01 00 
		$a_02_1 = {41 37 42 39 41 44 32 33 46 35 41 43 34 41 42 35 34 30 34 42 46 44 45 31 45 36 37 43 45 30 37 39 37 46 34 46 46 44 31 43 37 39 44 38 41 35 33 39 45 31 37 34 30 36 41 35 35 44 35 45 44 39 33 42 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {41 37 42 39 41 44 32 33 46 35 41 43 34 41 42 35 34 30 34 42 46 44 45 31 45 36 37 43 45 30 37 39 37 46 34 46 46 44 31 43 37 39 44 38 41 35 33 39 45 31 37 34 30 36 41 35 35 44 35 45 44 39 33 42 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 41 37 42 39 41 44 32 33 46 35 41 43 34 41 42 35 34 30 34 42 46 44 45 31 45 36 37 43 45 30 37 39 37 46 34 46 46 44 31 43 37 39 44 38 41 35 33 39 45 31 37 34 30 36 41 35 35 44 35 45 44 39 33 42 2e 68 73 74 72 } //00 00 
	condition:
		any of ($a_*)
 
}