
rule Trojan_Win64_AbuseCommBack_CD{
	meta:
		description = "Trojan:Win64/AbuseCommBack.CD,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 41 00 41 00 37 00 37 00 37 00 34 00 34 00 33 00 31 00 32 00 36 00 33 00 46 00 35 00 31 00 46 00 39 00 30 00 34 00 33 00 35 00 31 00 35 00 43 00 38 00 34 00 43 00 33 00 31 00 38 00 36 00 44 00 37 00 44 00 36 00 38 00 35 00 46 00 45 00 42 00 43 00 35 00 41 00 45 00 41 00 34 00 39 00 30 00 32 00 37 00 32 00 43 00 37 00 35 00 41 00 45 00 36 00 31 00 34 00 37 00 33 00 31 00 31 00 34 00 3c 00 2f 00 70 00 3e 00 } //01 00 
		$a_01_1 = {41 41 37 37 37 34 34 33 31 32 36 33 46 35 31 46 39 30 34 33 35 31 35 43 38 34 43 33 31 38 36 44 37 44 36 38 35 46 45 42 43 35 41 45 41 34 39 30 32 37 32 43 37 35 41 45 36 31 34 37 33 31 31 34 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 41 41 37 37 37 34 34 33 31 32 36 33 46 35 31 46 39 30 34 33 35 31 35 43 38 34 43 33 31 38 36 44 37 44 36 38 35 46 45 42 43 35 41 45 41 34 39 30 32 37 32 43 37 35 41 45 36 31 34 37 33 31 31 34 69 64 } //01 00 
	condition:
		any of ($a_*)
 
}