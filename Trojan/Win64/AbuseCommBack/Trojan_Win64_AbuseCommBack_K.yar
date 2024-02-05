
rule Trojan_Win64_AbuseCommBack_K{
	meta:
		description = "Trojan:Win64/AbuseCommBack.K,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 31 00 30 00 44 00 32 00 30 00 42 00 31 00 30 00 39 00 45 00 38 00 39 00 35 00 44 00 32 00 46 00 42 00 43 00 37 00 30 00 46 00 31 00 31 00 45 00 39 00 41 00 37 00 37 00 35 00 38 00 32 00 35 00 45 00 39 00 33 00 39 00 37 00 42 00 30 00 42 00 38 00 39 00 46 00 45 00 30 00 30 00 46 00 44 00 44 00 39 00 36 00 42 00 41 00 38 00 31 00 35 00 38 00 46 00 38 00 41 00 35 00 34 00 32 00 41 00 3c 00 2f 00 70 00 3e 00 } //01 00 
		$a_01_1 = {31 30 44 32 30 42 31 30 39 45 38 39 35 44 32 46 42 43 37 30 46 31 31 45 39 41 37 37 35 38 32 35 45 39 33 39 37 42 30 42 38 39 46 45 30 30 46 44 44 39 36 42 41 38 31 35 38 46 38 41 35 34 32 41 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 31 30 44 32 30 42 31 30 39 45 38 39 35 44 32 46 42 43 37 30 46 31 31 45 39 41 37 37 35 38 32 35 45 39 33 39 37 42 30 42 38 39 46 45 30 30 46 44 44 39 36 42 41 38 31 35 38 46 38 41 35 34 32 41 69 64 } //01 00 
	condition:
		any of ($a_*)
 
}