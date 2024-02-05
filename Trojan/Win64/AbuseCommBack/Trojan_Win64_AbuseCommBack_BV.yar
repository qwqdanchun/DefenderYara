
rule Trojan_Win64_AbuseCommBack_BV{
	meta:
		description = "Trojan:Win64/AbuseCommBack.BV,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 31 00 39 00 32 00 44 00 35 00 32 00 43 00 37 00 43 00 31 00 38 00 46 00 33 00 44 00 32 00 36 00 39 00 33 00 45 00 44 00 32 00 34 00 35 00 33 00 45 00 36 00 34 00 43 00 35 00 33 00 45 00 43 00 30 00 43 00 43 00 46 00 30 00 32 00 35 00 35 00 41 00 42 00 32 00 32 00 39 00 31 00 46 00 30 00 31 00 39 00 42 00 36 00 35 00 42 00 41 00 38 00 34 00 34 00 34 00 32 00 42 00 33 00 31 00 33 00 3c 00 2f 00 70 00 3e 00 } //01 00 
		$a_01_1 = {31 39 32 44 35 32 43 37 43 31 38 46 33 44 32 36 39 33 45 44 32 34 35 33 45 36 34 43 35 33 45 43 30 43 43 46 30 32 35 35 41 42 32 32 39 31 46 30 31 39 42 36 35 42 41 38 34 34 34 32 42 33 31 33 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 31 39 32 44 35 32 43 37 43 31 38 46 33 44 32 36 39 33 45 44 32 34 35 33 45 36 34 43 35 33 45 43 30 43 43 46 30 32 35 35 41 42 32 32 39 31 46 30 31 39 42 36 35 42 41 38 34 34 34 32 42 33 31 33 69 64 } //01 00 
	condition:
		any of ($a_*)
 
}