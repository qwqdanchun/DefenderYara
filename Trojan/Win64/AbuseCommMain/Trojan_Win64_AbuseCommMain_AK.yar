
rule Trojan_Win64_AbuseCommMain_AK{
	meta:
		description = "Trojan:Win64/AbuseCommMain.AK,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 30 00 41 00 30 00 37 00 41 00 36 00 32 00 41 00 33 00 43 00 37 00 39 00 38 00 45 00 44 00 30 00 41 00 35 00 32 00 32 00 35 00 45 00 32 00 46 00 35 00 36 00 45 00 41 00 36 00 45 00 45 00 45 00 43 00 45 00 35 00 42 00 39 00 37 00 42 00 42 00 44 00 38 00 36 00 45 00 41 00 37 00 41 00 36 00 38 00 41 00 38 00 46 00 36 00 41 00 34 00 33 00 46 00 42 00 35 00 43 00 39 00 35 00 30 00 32 00 } //01 00  tox:0A07A62A3C798ED0A5225E2F56EA6EEECE5B97BBD86EA7A68A8F6A43FB5C9502
		$a_02_1 = {30 41 30 37 41 36 32 41 33 43 37 39 38 45 44 30 41 35 32 32 35 45 32 46 35 36 45 41 36 45 45 45 43 45 35 42 39 37 42 42 44 38 36 45 41 37 41 36 38 41 38 46 36 41 34 33 46 42 35 43 39 35 30 32 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {30 41 30 37 41 36 32 41 33 43 37 39 38 45 44 30 41 35 32 32 35 45 32 46 35 36 45 41 36 45 45 45 43 45 35 42 39 37 42 42 44 38 36 45 41 37 41 36 38 41 38 46 36 41 34 33 46 42 35 43 39 35 30 32 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 30 41 30 37 41 36 32 41 33 43 37 39 38 45 44 30 41 35 32 32 35 45 32 46 35 36 45 41 36 45 45 45 43 45 35 42 39 37 42 42 44 38 36 45 41 37 41 36 38 41 38 46 36 41 34 33 46 42 35 43 39 35 30 32 2e 68 73 74 72 } //00 00  \tox\0A07A62A3C798ED0A5225E2F56EA6EEECE5B97BBD86EA7A68A8F6A43FB5C9502.hstr
	condition:
		any of ($a_*)
 
}