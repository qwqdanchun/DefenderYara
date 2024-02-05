
rule Trojan_Win64_AbuseCommMain_CE{
	meta:
		description = "Trojan:Win64/AbuseCommMain.CE,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 32 00 37 00 34 00 44 00 38 00 44 00 35 00 35 00 34 00 33 00 37 00 37 00 30 00 44 00 41 00 44 00 45 00 45 00 45 00 45 00 38 00 38 00 45 00 32 00 42 00 37 00 31 00 39 00 43 00 31 00 34 00 39 00 34 00 36 00 32 00 42 00 46 00 37 00 31 00 41 00 42 00 30 00 33 00 39 00 34 00 45 00 45 00 35 00 46 00 46 00 37 00 46 00 45 00 42 00 46 00 32 00 32 00 35 00 36 00 39 00 45 00 41 00 36 00 34 00 } //01 00 
		$a_02_1 = {32 37 34 44 38 44 35 35 34 33 37 37 30 44 41 44 45 45 45 45 38 38 45 32 42 37 31 39 43 31 34 39 34 36 32 42 46 37 31 41 42 30 33 39 34 45 45 35 46 46 37 46 45 42 46 32 32 35 36 39 45 41 36 34 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {32 37 34 44 38 44 35 35 34 33 37 37 30 44 41 44 45 45 45 45 38 38 45 32 42 37 31 39 43 31 34 39 34 36 32 42 46 37 31 41 42 30 33 39 34 45 45 35 46 46 37 46 45 42 46 32 32 35 36 39 45 41 36 34 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 32 37 34 44 38 44 35 35 34 33 37 37 30 44 41 44 45 45 45 45 38 38 45 32 42 37 31 39 43 31 34 39 34 36 32 42 46 37 31 41 42 30 33 39 34 45 45 35 46 46 37 46 45 42 46 32 32 35 36 39 45 41 36 34 2e 68 73 74 72 } //00 00 
	condition:
		any of ($a_*)
 
}