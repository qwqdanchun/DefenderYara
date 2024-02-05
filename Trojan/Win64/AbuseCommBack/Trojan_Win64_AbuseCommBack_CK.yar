
rule Trojan_Win64_AbuseCommBack_CK{
	meta:
		description = "Trojan:Win64/AbuseCommBack.CK,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 42 00 37 00 39 00 41 00 37 00 42 00 30 00 42 00 33 00 31 00 43 00 46 00 33 00 36 00 33 00 36 00 31 00 34 00 38 00 37 00 44 00 37 00 43 00 42 00 36 00 45 00 37 00 38 00 37 00 34 00 31 00 33 00 32 00 42 00 30 00 35 00 36 00 35 00 32 00 38 00 44 00 38 00 41 00 41 00 34 00 31 00 34 00 36 00 34 00 32 00 34 00 41 00 37 00 44 00 31 00 45 00 43 00 41 00 37 00 32 00 42 00 43 00 34 00 34 00 3c 00 2f 00 70 00 3e 00 } //01 00 
		$a_01_1 = {42 37 39 41 37 42 30 42 33 31 43 46 33 36 33 36 31 34 38 37 44 37 43 42 36 45 37 38 37 34 31 33 32 42 30 35 36 35 32 38 44 38 41 41 34 31 34 36 34 32 34 41 37 44 31 45 43 41 37 32 42 43 34 34 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 42 37 39 41 37 42 30 42 33 31 43 46 33 36 33 36 31 34 38 37 44 37 43 42 36 45 37 38 37 34 31 33 32 42 30 35 36 35 32 38 44 38 41 41 34 31 34 36 34 32 34 41 37 44 31 45 43 41 37 32 42 43 34 34 69 64 } //01 00 
	condition:
		any of ($a_*)
 
}