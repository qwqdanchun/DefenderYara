
rule Trojan_Win64_AbuseCommBack_BE{
	meta:
		description = "Trojan:Win64/AbuseCommBack.BE,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 38 00 46 00 30 00 45 00 33 00 30 00 38 00 43 00 42 00 34 00 44 00 39 00 46 00 31 00 46 00 33 00 46 00 38 00 30 00 45 00 43 00 39 00 33 00 41 00 34 00 43 00 35 00 36 00 36 00 42 00 38 00 43 00 46 00 43 00 43 00 41 00 42 00 30 00 39 00 36 00 37 00 46 00 30 00 36 00 33 00 37 00 43 00 30 00 30 00 45 00 44 00 33 00 30 00 37 00 39 00 43 00 33 00 37 00 32 00 33 00 35 00 36 00 35 00 32 00 3c 00 2f 00 70 00 3e 00 } //01 00 
		$a_01_1 = {38 46 30 45 33 30 38 43 42 34 44 39 46 31 46 33 46 38 30 45 43 39 33 41 34 43 35 36 36 42 38 43 46 43 43 41 42 30 39 36 37 46 30 36 33 37 43 30 30 45 44 33 30 37 39 43 33 37 32 33 35 36 35 32 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 38 46 30 45 33 30 38 43 42 34 44 39 46 31 46 33 46 38 30 45 43 39 33 41 34 43 35 36 36 42 38 43 46 43 43 41 42 30 39 36 37 46 30 36 33 37 43 30 30 45 44 33 30 37 39 43 33 37 32 33 35 36 35 32 69 64 } //01 00 
	condition:
		any of ($a_*)
 
}