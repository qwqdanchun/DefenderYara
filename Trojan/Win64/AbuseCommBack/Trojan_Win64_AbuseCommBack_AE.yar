
rule Trojan_Win64_AbuseCommBack_AE{
	meta:
		description = "Trojan:Win64/AbuseCommBack.AE,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 37 00 38 00 44 00 42 00 32 00 32 00 45 00 33 00 30 00 43 00 34 00 38 00 35 00 36 00 31 00 45 00 46 00 38 00 42 00 36 00 33 00 41 00 46 00 46 00 37 00 37 00 30 00 32 00 42 00 32 00 33 00 37 00 41 00 34 00 37 00 39 00 37 00 30 00 31 00 37 00 45 00 42 00 43 00 33 00 36 00 33 00 30 00 38 00 35 00 33 00 43 00 46 00 36 00 46 00 31 00 31 00 46 00 38 00 37 00 30 00 36 00 41 00 33 00 41 00 3c 00 2f 00 70 00 3e 00 } //01 00 
		$a_01_1 = {37 38 44 42 32 32 45 33 30 43 34 38 35 36 31 45 46 38 42 36 33 41 46 46 37 37 30 32 42 32 33 37 41 34 37 39 37 30 31 37 45 42 43 33 36 33 30 38 35 33 43 46 36 46 31 31 46 38 37 30 36 41 33 41 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 37 38 44 42 32 32 45 33 30 43 34 38 35 36 31 45 46 38 42 36 33 41 46 46 37 37 30 32 42 32 33 37 41 34 37 39 37 30 31 37 45 42 43 33 36 33 30 38 35 33 43 46 36 46 31 31 46 38 37 30 36 41 33 41 69 64 } //01 00 
	condition:
		any of ($a_*)
 
}