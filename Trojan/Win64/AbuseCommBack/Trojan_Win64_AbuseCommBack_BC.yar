
rule Trojan_Win64_AbuseCommBack_BC{
	meta:
		description = "Trojan:Win64/AbuseCommBack.BC,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 32 00 46 00 45 00 37 00 44 00 41 00 36 00 39 00 35 00 46 00 39 00 36 00 31 00 35 00 34 00 42 00 31 00 45 00 43 00 35 00 41 00 45 00 30 00 35 00 45 00 39 00 42 00 42 00 42 00 41 00 43 00 44 00 46 00 39 00 37 00 36 00 46 00 43 00 35 00 46 00 46 00 44 00 39 00 44 00 31 00 44 00 34 00 46 00 44 00 43 00 33 00 34 00 42 00 37 00 39 00 44 00 42 00 41 00 30 00 32 00 41 00 34 00 33 00 32 00 3c 00 2f 00 70 00 3e 00 } //01 00 
		$a_01_1 = {32 46 45 37 44 41 36 39 35 46 39 36 31 35 34 42 31 45 43 35 41 45 30 35 45 39 42 42 42 41 43 44 46 39 37 36 46 43 35 46 46 44 39 44 31 44 34 46 44 43 33 34 42 37 39 44 42 41 30 32 41 34 33 32 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 32 46 45 37 44 41 36 39 35 46 39 36 31 35 34 42 31 45 43 35 41 45 30 35 45 39 42 42 42 41 43 44 46 39 37 36 46 43 35 46 46 44 39 44 31 44 34 46 44 43 33 34 42 37 39 44 42 41 30 32 41 34 33 32 69 64 } //01 00 
	condition:
		any of ($a_*)
 
}