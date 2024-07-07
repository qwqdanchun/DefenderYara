
rule Trojan_Win64_AbuseCommMain_FQ{
	meta:
		description = "Trojan:Win64/AbuseCommMain.FQ,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 32 00 44 00 31 00 36 00 34 00 42 00 45 00 42 00 30 00 39 00 44 00 46 00 37 00 37 00 35 00 43 00 35 00 34 00 33 00 46 00 35 00 32 00 43 00 37 00 41 00 44 00 38 00 37 00 35 00 35 00 42 00 39 00 36 00 46 00 42 00 42 00 33 00 41 00 31 00 39 00 43 00 38 00 41 00 45 00 41 00 42 00 30 00 43 00 39 00 33 00 45 00 46 00 43 00 45 00 33 00 43 00 37 00 34 00 45 00 34 00 41 00 37 00 30 00 33 00 } //1 tox:2D164BEB09DF775C543F52C7AD8755B96FBB3A19C8AEAB0C93EFCE3C74E4A703
		$a_02_1 = {32 44 31 36 34 42 45 42 30 39 44 46 37 37 35 43 35 34 33 46 35 32 43 37 41 44 38 37 35 35 42 39 36 46 42 42 33 41 31 39 43 38 41 45 41 42 30 43 39 33 45 46 43 45 33 43 37 34 45 34 41 37 30 33 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //1
		$a_02_2 = {32 44 31 36 34 42 45 42 30 39 44 46 37 37 35 43 35 34 33 46 35 32 43 37 41 44 38 37 35 35 42 39 36 46 42 42 33 41 31 39 43 38 41 45 41 42 30 43 39 33 45 46 43 45 33 43 37 34 45 34 41 37 30 33 90 01 0c 4c 00 00 00 90 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 32 44 31 36 34 42 45 42 30 39 44 46 37 37 35 43 35 34 33 46 35 32 43 37 41 44 38 37 35 35 42 39 36 46 42 42 33 41 31 39 43 38 41 45 41 42 30 43 39 33 45 46 43 45 33 43 37 34 45 34 41 37 30 33 2e 68 73 74 72 } //1 \tox\2D164BEB09DF775C543F52C7AD8755B96FBB3A19C8AEAB0C93EFCE3C74E4A703.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}