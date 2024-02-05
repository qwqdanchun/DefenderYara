
rule Trojan_Win64_AbuseCommMain_E{
	meta:
		description = "Trojan:Win64/AbuseCommMain.E,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 36 00 46 00 35 00 34 00 38 00 46 00 32 00 31 00 37 00 38 00 39 00 37 00 41 00 41 00 34 00 31 00 34 00 30 00 46 00 42 00 34 00 43 00 35 00 31 00 34 00 43 00 38 00 31 00 38 00 37 00 46 00 32 00 46 00 46 00 44 00 42 00 41 00 33 00 43 00 41 00 46 00 43 00 38 00 33 00 37 00 39 00 35 00 44 00 45 00 45 00 32 00 46 00 42 00 43 00 41 00 33 00 36 00 39 00 45 00 36 00 38 00 39 00 30 00 30 00 } //01 00 
		$a_02_1 = {36 46 35 34 38 46 32 31 37 38 39 37 41 41 34 31 34 30 46 42 34 43 35 31 34 43 38 31 38 37 46 32 46 46 44 42 41 33 43 41 46 43 38 33 37 39 35 44 45 45 32 46 42 43 41 33 36 39 45 36 38 39 30 30 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {36 46 35 34 38 46 32 31 37 38 39 37 41 41 34 31 34 30 46 42 34 43 35 31 34 43 38 31 38 37 46 32 46 46 44 42 41 33 43 41 46 43 38 33 37 39 35 44 45 45 32 46 42 43 41 33 36 39 45 36 38 39 30 30 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 36 46 35 34 38 46 32 31 37 38 39 37 41 41 34 31 34 30 46 42 34 43 35 31 34 43 38 31 38 37 46 32 46 46 44 42 41 33 43 41 46 43 38 33 37 39 35 44 45 45 32 46 42 43 41 33 36 39 45 36 38 39 30 30 2e 68 73 74 72 } //00 00 
	condition:
		any of ($a_*)
 
}