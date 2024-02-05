
rule Trojan_Win64_AbuseCommBack_CV{
	meta:
		description = "Trojan:Win64/AbuseCommBack.CV,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 36 00 38 00 44 00 39 00 33 00 45 00 30 00 34 00 43 00 44 00 31 00 33 00 46 00 42 00 36 00 36 00 30 00 44 00 42 00 42 00 38 00 43 00 36 00 36 00 37 00 32 00 31 00 38 00 33 00 33 00 37 00 33 00 43 00 35 00 37 00 37 00 41 00 46 00 39 00 35 00 37 00 42 00 37 00 38 00 45 00 37 00 46 00 45 00 46 00 46 00 44 00 35 00 36 00 31 00 45 00 46 00 46 00 37 00 42 00 44 00 31 00 31 00 30 00 43 00 3c 00 2f 00 70 00 3e 00 } //01 00 
		$a_01_1 = {36 38 44 39 33 45 30 34 43 44 31 33 46 42 36 36 30 44 42 42 38 43 36 36 37 32 31 38 33 33 37 33 43 35 37 37 41 46 39 35 37 42 37 38 45 37 46 45 46 46 44 35 36 31 45 46 46 37 42 44 31 31 30 43 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 36 38 44 39 33 45 30 34 43 44 31 33 46 42 36 36 30 44 42 42 38 43 36 36 37 32 31 38 33 33 37 33 43 35 37 37 41 46 39 35 37 42 37 38 45 37 46 45 46 46 44 35 36 31 45 46 46 37 42 44 31 31 30 43 69 64 } //01 00 
	condition:
		any of ($a_*)
 
}