
rule Trojan_Win64_AbuseCommBack_D{
	meta:
		description = "Trojan:Win64/AbuseCommBack.D,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 38 00 31 00 42 00 32 00 42 00 37 00 31 00 39 00 41 00 42 00 39 00 42 00 44 00 44 00 43 00 45 00 39 00 31 00 31 00 36 00 37 00 37 00 36 00 46 00 41 00 30 00 31 00 39 00 35 00 36 00 43 00 32 00 44 00 34 00 42 00 42 00 38 00 41 00 37 00 43 00 41 00 35 00 34 00 36 00 34 00 35 00 39 00 32 00 35 00 39 00 33 00 46 00 39 00 41 00 32 00 35 00 44 00 41 00 31 00 46 00 39 00 31 00 31 00 37 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>81B2B719AB9BDDCE9116776FA01956C2D4BB8A7CA5464592593F9A25DA1F9117</p>
		$a_01_1 = {38 31 42 32 42 37 31 39 41 42 39 42 44 44 43 45 39 31 31 36 37 37 36 46 41 30 31 39 35 36 43 32 44 34 42 42 38 41 37 43 41 35 34 36 34 35 39 32 35 39 33 46 39 41 32 35 44 41 31 46 39 31 31 37 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 38 31 42 32 42 37 31 39 41 42 39 42 44 44 43 45 39 31 31 36 37 37 36 46 41 30 31 39 35 36 43 32 44 34 42 42 38 41 37 43 41 35 34 36 34 35 39 32 35 39 33 46 39 41 32 35 44 41 31 46 39 31 31 37 69 64 } //01 00  tableid81B2B719AB9BDDCE9116776FA01956C2D4BB8A7CA5464592593F9A25DA1F9117id
	condition:
		any of ($a_*)
 
}