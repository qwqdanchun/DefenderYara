
rule Trojan_Win64_AbuseCommBack_AG{
	meta:
		description = "Trojan:Win64/AbuseCommBack.AG,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 31 00 46 00 32 00 46 00 38 00 33 00 41 00 41 00 36 00 33 00 34 00 34 00 35 00 35 00 44 00 45 00 32 00 46 00 46 00 32 00 31 00 44 00 45 00 31 00 43 00 46 00 42 00 46 00 33 00 44 00 35 00 39 00 36 00 33 00 45 00 36 00 36 00 36 00 46 00 43 00 46 00 44 00 44 00 41 00 31 00 38 00 44 00 33 00 30 00 37 00 31 00 44 00 32 00 42 00 35 00 46 00 32 00 37 00 30 00 31 00 32 00 46 00 37 00 45 00 3c 00 2f 00 70 00 3e 00 } //01 00 
		$a_01_1 = {31 46 32 46 38 33 41 41 36 33 34 34 35 35 44 45 32 46 46 32 31 44 45 31 43 46 42 46 33 44 35 39 36 33 45 36 36 36 46 43 46 44 44 41 31 38 44 33 30 37 31 44 32 42 35 46 32 37 30 31 32 46 37 45 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 31 46 32 46 38 33 41 41 36 33 34 34 35 35 44 45 32 46 46 32 31 44 45 31 43 46 42 46 33 44 35 39 36 33 45 36 36 36 46 43 46 44 44 41 31 38 44 33 30 37 31 44 32 42 35 46 32 37 30 31 32 46 37 45 69 64 } //01 00 
	condition:
		any of ($a_*)
 
}