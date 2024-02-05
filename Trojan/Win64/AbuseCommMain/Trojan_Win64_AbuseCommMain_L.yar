
rule Trojan_Win64_AbuseCommMain_L{
	meta:
		description = "Trojan:Win64/AbuseCommMain.L,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 38 00 39 00 31 00 31 00 37 00 36 00 44 00 43 00 33 00 41 00 31 00 35 00 32 00 33 00 46 00 39 00 39 00 37 00 44 00 38 00 34 00 30 00 36 00 39 00 37 00 34 00 38 00 33 00 36 00 34 00 42 00 44 00 36 00 38 00 35 00 30 00 35 00 44 00 41 00 34 00 32 00 31 00 35 00 33 00 42 00 31 00 44 00 31 00 42 00 46 00 37 00 38 00 34 00 41 00 46 00 42 00 39 00 44 00 41 00 44 00 42 00 45 00 35 00 31 00 } //01 00 
		$a_02_1 = {38 39 31 31 37 36 44 43 33 41 31 35 32 33 46 39 39 37 44 38 34 30 36 39 37 34 38 33 36 34 42 44 36 38 35 30 35 44 41 34 32 31 35 33 42 31 44 31 42 46 37 38 34 41 46 42 39 44 41 44 42 45 35 31 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {38 39 31 31 37 36 44 43 33 41 31 35 32 33 46 39 39 37 44 38 34 30 36 39 37 34 38 33 36 34 42 44 36 38 35 30 35 44 41 34 32 31 35 33 42 31 44 31 42 46 37 38 34 41 46 42 39 44 41 44 42 45 35 31 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 38 39 31 31 37 36 44 43 33 41 31 35 32 33 46 39 39 37 44 38 34 30 36 39 37 34 38 33 36 34 42 44 36 38 35 30 35 44 41 34 32 31 35 33 42 31 44 31 42 46 37 38 34 41 46 42 39 44 41 44 42 45 35 31 2e 68 73 74 72 } //00 00 
	condition:
		any of ($a_*)
 
}