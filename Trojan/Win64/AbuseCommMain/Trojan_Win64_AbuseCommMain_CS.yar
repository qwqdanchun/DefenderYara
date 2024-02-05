
rule Trojan_Win64_AbuseCommMain_CS{
	meta:
		description = "Trojan:Win64/AbuseCommMain.CS,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 39 00 46 00 36 00 35 00 33 00 31 00 30 00 39 00 45 00 36 00 43 00 46 00 41 00 31 00 38 00 39 00 30 00 39 00 39 00 39 00 43 00 31 00 43 00 35 00 38 00 31 00 35 00 30 00 30 00 36 00 31 00 38 00 30 00 30 00 35 00 46 00 36 00 37 00 38 00 39 00 44 00 39 00 37 00 34 00 46 00 42 00 36 00 37 00 45 00 44 00 36 00 36 00 42 00 39 00 38 00 41 00 42 00 46 00 37 00 44 00 30 00 37 00 33 00 32 00 } //01 00 
		$a_02_1 = {39 46 36 35 33 31 30 39 45 36 43 46 41 31 38 39 30 39 39 39 43 31 43 35 38 31 35 30 30 36 31 38 30 30 35 46 36 37 38 39 44 39 37 34 46 42 36 37 45 44 36 36 42 39 38 41 42 46 37 44 30 37 33 32 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {39 46 36 35 33 31 30 39 45 36 43 46 41 31 38 39 30 39 39 39 43 31 43 35 38 31 35 30 30 36 31 38 30 30 35 46 36 37 38 39 44 39 37 34 46 42 36 37 45 44 36 36 42 39 38 41 42 46 37 44 30 37 33 32 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 39 46 36 35 33 31 30 39 45 36 43 46 41 31 38 39 30 39 39 39 43 31 43 35 38 31 35 30 30 36 31 38 30 30 35 46 36 37 38 39 44 39 37 34 46 42 36 37 45 44 36 36 42 39 38 41 42 46 37 44 30 37 33 32 2e 68 73 74 72 } //00 00 
	condition:
		any of ($a_*)
 
}