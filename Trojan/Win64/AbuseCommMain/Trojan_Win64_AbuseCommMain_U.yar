
rule Trojan_Win64_AbuseCommMain_U{
	meta:
		description = "Trojan:Win64/AbuseCommMain.U,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 41 00 45 00 42 00 43 00 31 00 31 00 38 00 31 00 32 00 39 00 32 00 37 00 37 00 38 00 36 00 41 00 39 00 41 00 30 00 35 00 44 00 33 00 42 00 43 00 35 00 38 00 34 00 39 00 33 00 35 00 39 00 42 00 41 00 35 00 38 00 36 00 30 00 31 00 35 00 38 00 36 00 46 00 34 00 46 00 46 00 33 00 35 00 36 00 45 00 30 00 43 00 45 00 37 00 45 00 44 00 45 00 32 00 31 00 38 00 44 00 41 00 30 00 30 00 32 00 } //01 00 
		$a_02_1 = {41 45 42 43 31 31 38 31 32 39 32 37 37 38 36 41 39 41 30 35 44 33 42 43 35 38 34 39 33 35 39 42 41 35 38 36 30 31 35 38 36 46 34 46 46 33 35 36 45 30 43 45 37 45 44 45 32 31 38 44 41 30 30 32 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {41 45 42 43 31 31 38 31 32 39 32 37 37 38 36 41 39 41 30 35 44 33 42 43 35 38 34 39 33 35 39 42 41 35 38 36 30 31 35 38 36 46 34 46 46 33 35 36 45 30 43 45 37 45 44 45 32 31 38 44 41 30 30 32 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 41 45 42 43 31 31 38 31 32 39 32 37 37 38 36 41 39 41 30 35 44 33 42 43 35 38 34 39 33 35 39 42 41 35 38 36 30 31 35 38 36 46 34 46 46 33 35 36 45 30 43 45 37 45 44 45 32 31 38 44 41 30 30 32 2e 68 73 74 72 } //00 00 
	condition:
		any of ($a_*)
 
}