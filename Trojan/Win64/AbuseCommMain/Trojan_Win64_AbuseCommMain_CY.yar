
rule Trojan_Win64_AbuseCommMain_CY{
	meta:
		description = "Trojan:Win64/AbuseCommMain.CY,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 30 00 34 00 32 00 31 00 42 00 44 00 33 00 35 00 46 00 41 00 35 00 41 00 35 00 38 00 34 00 39 00 46 00 42 00 39 00 42 00 45 00 42 00 31 00 35 00 39 00 35 00 44 00 42 00 42 00 45 00 32 00 33 00 39 00 44 00 44 00 45 00 31 00 39 00 42 00 34 00 36 00 42 00 30 00 42 00 38 00 42 00 44 00 37 00 33 00 45 00 44 00 44 00 31 00 31 00 30 00 37 00 43 00 32 00 34 00 35 00 42 00 34 00 36 00 43 00 } //1 tox:0421BD35FA5A5849FB9BEB1595DBBE239DDE19B46B0B8BD73EDD1107C245B46C
		$a_02_1 = {30 34 32 31 42 44 33 35 46 41 35 41 35 38 34 39 46 42 39 42 45 42 31 35 39 35 44 42 42 45 32 33 39 44 44 45 31 39 42 34 36 42 30 42 38 42 44 37 33 45 44 44 31 31 30 37 43 32 34 35 42 34 36 43 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4c 00 00 00 00 00 00 00 } //1
		$a_02_2 = {30 34 32 31 42 44 33 35 46 41 35 41 35 38 34 39 46 42 39 42 45 42 31 35 39 35 44 42 42 45 32 33 39 44 44 45 31 39 42 34 36 42 30 42 38 42 44 37 33 45 44 44 31 31 30 37 43 32 34 35 42 34 36 43 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 4c 00 00 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 30 34 32 31 42 44 33 35 46 41 35 41 35 38 34 39 46 42 39 42 45 42 31 35 39 35 44 42 42 45 32 33 39 44 44 45 31 39 42 34 36 42 30 42 38 42 44 37 33 45 44 44 31 31 30 37 43 32 34 35 42 34 36 43 2e 68 73 74 72 } //1 \tox\0421BD35FA5A5849FB9BEB1595DBBE239DDE19B46B0B8BD73EDD1107C245B46C.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}