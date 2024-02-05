
rule Trojan_Win64_AbuseCommBack_CF{
	meta:
		description = "Trojan:Win64/AbuseCommBack.CF,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 36 00 42 00 34 00 39 00 34 00 41 00 43 00 38 00 31 00 43 00 31 00 41 00 44 00 46 00 41 00 34 00 41 00 44 00 38 00 44 00 46 00 46 00 42 00 33 00 38 00 36 00 32 00 46 00 34 00 35 00 45 00 44 00 42 00 37 00 39 00 37 00 30 00 33 00 46 00 44 00 43 00 38 00 45 00 45 00 34 00 43 00 38 00 36 00 42 00 30 00 31 00 39 00 35 00 36 00 44 00 31 00 37 00 30 00 32 00 34 00 45 00 46 00 35 00 44 00 3c 00 2f 00 70 00 3e 00 } //01 00 
		$a_01_1 = {36 42 34 39 34 41 43 38 31 43 31 41 44 46 41 34 41 44 38 44 46 46 42 33 38 36 32 46 34 35 45 44 42 37 39 37 30 33 46 44 43 38 45 45 34 43 38 36 42 30 31 39 35 36 44 31 37 30 32 34 45 46 35 44 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 36 42 34 39 34 41 43 38 31 43 31 41 44 46 41 34 41 44 38 44 46 46 42 33 38 36 32 46 34 35 45 44 42 37 39 37 30 33 46 44 43 38 45 45 34 43 38 36 42 30 31 39 35 36 44 31 37 30 32 34 45 46 35 44 69 64 } //01 00 
	condition:
		any of ($a_*)
 
}