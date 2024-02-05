
rule Trojan_Win64_AbuseCommMain_AB{
	meta:
		description = "Trojan:Win64/AbuseCommMain.AB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 30 00 45 00 44 00 43 00 34 00 36 00 41 00 31 00 43 00 37 00 46 00 34 00 34 00 39 00 46 00 45 00 31 00 42 00 30 00 35 00 36 00 36 00 33 00 33 00 46 00 33 00 33 00 41 00 36 00 36 00 35 00 45 00 30 00 37 00 30 00 39 00 36 00 38 00 46 00 45 00 37 00 30 00 38 00 38 00 34 00 35 00 42 00 39 00 43 00 43 00 37 00 46 00 30 00 45 00 41 00 44 00 43 00 43 00 34 00 39 00 39 00 32 00 31 00 44 00 } //01 00 
		$a_02_1 = {30 45 44 43 34 36 41 31 43 37 46 34 34 39 46 45 31 42 30 35 36 36 33 33 46 33 33 41 36 36 35 45 30 37 30 39 36 38 46 45 37 30 38 38 34 35 42 39 43 43 37 46 30 45 41 44 43 43 34 39 39 32 31 44 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {30 45 44 43 34 36 41 31 43 37 46 34 34 39 46 45 31 42 30 35 36 36 33 33 46 33 33 41 36 36 35 45 30 37 30 39 36 38 46 45 37 30 38 38 34 35 42 39 43 43 37 46 30 45 41 44 43 43 34 39 39 32 31 44 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 30 45 44 43 34 36 41 31 43 37 46 34 34 39 46 45 31 42 30 35 36 36 33 33 46 33 33 41 36 36 35 45 30 37 30 39 36 38 46 45 37 30 38 38 34 35 42 39 43 43 37 46 30 45 41 44 43 43 34 39 39 32 31 44 2e 68 73 74 72 } //00 00 
	condition:
		any of ($a_*)
 
}