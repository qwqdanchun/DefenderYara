
rule Trojan_Win64_AbuseCommMain_EA{
	meta:
		description = "Trojan:Win64/AbuseCommMain.EA,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 30 00 42 00 46 00 30 00 42 00 41 00 36 00 36 00 30 00 33 00 30 00 39 00 31 00 36 00 46 00 36 00 31 00 42 00 42 00 37 00 44 00 39 00 45 00 39 00 35 00 34 00 46 00 42 00 39 00 38 00 41 00 38 00 46 00 39 00 37 00 33 00 44 00 42 00 36 00 35 00 33 00 31 00 46 00 31 00 38 00 45 00 42 00 36 00 43 00 45 00 45 00 30 00 30 00 36 00 44 00 37 00 45 00 32 00 37 00 35 00 42 00 39 00 30 00 36 00 } //01 00  tox:0BF0BA66030916F61BB7D9E954FB98A8F973DB6531F18EB6CEE006D7E275B906
		$a_02_1 = {30 42 46 30 42 41 36 36 30 33 30 39 31 36 46 36 31 42 42 37 44 39 45 39 35 34 46 42 39 38 41 38 46 39 37 33 44 42 36 35 33 31 46 31 38 45 42 36 43 45 45 30 30 36 44 37 45 32 37 35 42 39 30 36 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {30 42 46 30 42 41 36 36 30 33 30 39 31 36 46 36 31 42 42 37 44 39 45 39 35 34 46 42 39 38 41 38 46 39 37 33 44 42 36 35 33 31 46 31 38 45 42 36 43 45 45 30 30 36 44 37 45 32 37 35 42 39 30 36 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 30 42 46 30 42 41 36 36 30 33 30 39 31 36 46 36 31 42 42 37 44 39 45 39 35 34 46 42 39 38 41 38 46 39 37 33 44 42 36 35 33 31 46 31 38 45 42 36 43 45 45 30 30 36 44 37 45 32 37 35 42 39 30 36 2e 68 73 74 72 } //00 00  \tox\0BF0BA66030916F61BB7D9E954FB98A8F973DB6531F18EB6CEE006D7E275B906.hstr
	condition:
		any of ($a_*)
 
}