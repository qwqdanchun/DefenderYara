
rule Trojan_Win64_AbuseCommMain_DK{
	meta:
		description = "Trojan:Win64/AbuseCommMain.DK,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 36 00 35 00 37 00 43 00 42 00 36 00 31 00 35 00 45 00 34 00 36 00 32 00 46 00 34 00 44 00 38 00 32 00 41 00 41 00 38 00 41 00 30 00 45 00 41 00 43 00 45 00 30 00 45 00 41 00 41 00 39 00 42 00 39 00 46 00 30 00 43 00 30 00 45 00 31 00 36 00 38 00 38 00 39 00 38 00 35 00 38 00 35 00 42 00 36 00 33 00 38 00 35 00 36 00 39 00 36 00 30 00 38 00 32 00 32 00 36 00 34 00 34 00 31 00 43 00 } //1 tox:657CB615E462F4D82AA8A0EACE0EAA9B9F0C0E168898585B638569608226441C
		$a_02_1 = {36 35 37 43 42 36 31 35 45 34 36 32 46 34 44 38 32 41 41 38 41 30 45 41 43 45 30 45 41 41 39 42 39 46 30 43 30 45 31 36 38 38 39 38 35 38 35 42 36 33 38 35 36 39 36 30 38 32 32 36 34 34 31 43 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //1
		$a_02_2 = {36 35 37 43 42 36 31 35 45 34 36 32 46 34 44 38 32 41 41 38 41 30 45 41 43 45 30 45 41 41 39 42 39 46 30 43 30 45 31 36 38 38 39 38 35 38 35 42 36 33 38 35 36 39 36 30 38 32 32 36 34 34 31 43 90 01 0c 4c 00 00 00 90 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 36 35 37 43 42 36 31 35 45 34 36 32 46 34 44 38 32 41 41 38 41 30 45 41 43 45 30 45 41 41 39 42 39 46 30 43 30 45 31 36 38 38 39 38 35 38 35 42 36 33 38 35 36 39 36 30 38 32 32 36 34 34 31 43 2e 68 73 74 72 } //1 \tox\657CB615E462F4D82AA8A0EACE0EAA9B9F0C0E168898585B638569608226441C.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}