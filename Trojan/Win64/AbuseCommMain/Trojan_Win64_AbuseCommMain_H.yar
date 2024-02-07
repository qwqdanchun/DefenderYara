
rule Trojan_Win64_AbuseCommMain_H{
	meta:
		description = "Trojan:Win64/AbuseCommMain.H,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 30 00 46 00 46 00 32 00 36 00 37 00 37 00 30 00 42 00 46 00 41 00 45 00 41 00 44 00 39 00 35 00 31 00 39 00 34 00 35 00 30 00 36 00 45 00 36 00 39 00 37 00 30 00 43 00 43 00 31 00 43 00 33 00 39 00 35 00 42 00 30 00 34 00 31 00 35 00 39 00 30 00 33 00 38 00 44 00 37 00 38 00 35 00 44 00 45 00 33 00 31 00 36 00 46 00 30 00 35 00 43 00 45 00 36 00 44 00 45 00 36 00 37 00 33 00 32 00 } //01 00  tox:0FF26770BFAEAD95194506E6970CC1C395B04159038D785DE316F05CE6DE6732
		$a_02_1 = {30 46 46 32 36 37 37 30 42 46 41 45 41 44 39 35 31 39 34 35 30 36 45 36 39 37 30 43 43 31 43 33 39 35 42 30 34 31 35 39 30 33 38 44 37 38 35 44 45 33 31 36 46 30 35 43 45 36 44 45 36 37 33 32 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {30 46 46 32 36 37 37 30 42 46 41 45 41 44 39 35 31 39 34 35 30 36 45 36 39 37 30 43 43 31 43 33 39 35 42 30 34 31 35 39 30 33 38 44 37 38 35 44 45 33 31 36 46 30 35 43 45 36 44 45 36 37 33 32 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 30 46 46 32 36 37 37 30 42 46 41 45 41 44 39 35 31 39 34 35 30 36 45 36 39 37 30 43 43 31 43 33 39 35 42 30 34 31 35 39 30 33 38 44 37 38 35 44 45 33 31 36 46 30 35 43 45 36 44 45 36 37 33 32 2e 68 73 74 72 } //00 00  \tox\0FF26770BFAEAD95194506E6970CC1C395B04159038D785DE316F05CE6DE6732.hstr
	condition:
		any of ($a_*)
 
}