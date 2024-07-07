
rule Trojan_Win64_AbuseCommMain_DN{
	meta:
		description = "Trojan:Win64/AbuseCommMain.DN,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 44 00 45 00 39 00 46 00 30 00 31 00 31 00 35 00 31 00 30 00 44 00 44 00 36 00 34 00 34 00 44 00 36 00 32 00 36 00 34 00 35 00 36 00 42 00 45 00 33 00 39 00 35 00 41 00 38 00 41 00 35 00 38 00 35 00 37 00 43 00 42 00 36 00 36 00 39 00 46 00 31 00 39 00 38 00 32 00 41 00 43 00 33 00 41 00 39 00 35 00 34 00 35 00 37 00 35 00 43 00 41 00 37 00 45 00 33 00 35 00 45 00 31 00 30 00 30 00 } //1 tox:DE9F011510DD644D626456BE395A8A5857CB669F1982AC3A954575CA7E35E100
		$a_02_1 = {44 45 39 46 30 31 31 35 31 30 44 44 36 34 34 44 36 32 36 34 35 36 42 45 33 39 35 41 38 41 35 38 35 37 43 42 36 36 39 46 31 39 38 32 41 43 33 41 39 35 34 35 37 35 43 41 37 45 33 35 45 31 30 30 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //1
		$a_02_2 = {44 45 39 46 30 31 31 35 31 30 44 44 36 34 34 44 36 32 36 34 35 36 42 45 33 39 35 41 38 41 35 38 35 37 43 42 36 36 39 46 31 39 38 32 41 43 33 41 39 35 34 35 37 35 43 41 37 45 33 35 45 31 30 30 90 01 0c 4c 00 00 00 90 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 44 45 39 46 30 31 31 35 31 30 44 44 36 34 34 44 36 32 36 34 35 36 42 45 33 39 35 41 38 41 35 38 35 37 43 42 36 36 39 46 31 39 38 32 41 43 33 41 39 35 34 35 37 35 43 41 37 45 33 35 45 31 30 30 2e 68 73 74 72 } //1 \tox\DE9F011510DD644D626456BE395A8A5857CB669F1982AC3A954575CA7E35E100.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}