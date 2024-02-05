
rule Trojan_Win64_AbuseCommMain_G{
	meta:
		description = "Trojan:Win64/AbuseCommMain.G,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 36 00 43 00 35 00 41 00 44 00 34 00 30 00 35 00 37 00 45 00 35 00 39 00 34 00 45 00 30 00 39 00 30 00 45 00 30 00 43 00 39 00 38 00 37 00 42 00 33 00 30 00 38 00 39 00 46 00 37 00 34 00 33 00 33 00 35 00 44 00 41 00 37 00 35 00 46 00 30 00 34 00 42 00 37 00 34 00 30 00 33 00 45 00 30 00 35 00 37 00 35 00 36 00 36 00 33 00 43 00 32 00 36 00 31 00 33 00 34 00 39 00 35 00 36 00 39 00 } //01 00 
		$a_02_1 = {36 43 35 41 44 34 30 35 37 45 35 39 34 45 30 39 30 45 30 43 39 38 37 42 33 30 38 39 46 37 34 33 33 35 44 41 37 35 46 30 34 42 37 34 30 33 45 30 35 37 35 36 36 33 43 32 36 31 33 34 39 35 36 39 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {36 43 35 41 44 34 30 35 37 45 35 39 34 45 30 39 30 45 30 43 39 38 37 42 33 30 38 39 46 37 34 33 33 35 44 41 37 35 46 30 34 42 37 34 30 33 45 30 35 37 35 36 36 33 43 32 36 31 33 34 39 35 36 39 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 36 43 35 41 44 34 30 35 37 45 35 39 34 45 30 39 30 45 30 43 39 38 37 42 33 30 38 39 46 37 34 33 33 35 44 41 37 35 46 30 34 42 37 34 30 33 45 30 35 37 35 36 36 33 43 32 36 31 33 34 39 35 36 39 2e 68 73 74 72 } //00 00 
	condition:
		any of ($a_*)
 
}