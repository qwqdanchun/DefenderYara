
rule Trojan_Win64_AbuseCommBack_CR{
	meta:
		description = "Trojan:Win64/AbuseCommBack.CR,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 42 00 41 00 45 00 44 00 37 00 41 00 44 00 34 00 30 00 43 00 33 00 39 00 32 00 44 00 32 00 30 00 41 00 36 00 46 00 36 00 38 00 35 00 37 00 39 00 31 00 32 00 37 00 32 00 30 00 42 00 31 00 34 00 45 00 36 00 39 00 43 00 44 00 30 00 31 00 42 00 42 00 31 00 44 00 36 00 45 00 35 00 43 00 30 00 42 00 39 00 30 00 34 00 45 00 45 00 34 00 42 00 45 00 32 00 36 00 45 00 39 00 44 00 31 00 33 00 3c 00 2f 00 70 00 3e 00 } //01 00 
		$a_01_1 = {42 41 45 44 37 41 44 34 30 43 33 39 32 44 32 30 41 36 46 36 38 35 37 39 31 32 37 32 30 42 31 34 45 36 39 43 44 30 31 42 42 31 44 36 45 35 43 30 42 39 30 34 45 45 34 42 45 32 36 45 39 44 31 33 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 42 41 45 44 37 41 44 34 30 43 33 39 32 44 32 30 41 36 46 36 38 35 37 39 31 32 37 32 30 42 31 34 45 36 39 43 44 30 31 42 42 31 44 36 45 35 43 30 42 39 30 34 45 45 34 42 45 32 36 45 39 44 31 33 69 64 } //01 00 
	condition:
		any of ($a_*)
 
}