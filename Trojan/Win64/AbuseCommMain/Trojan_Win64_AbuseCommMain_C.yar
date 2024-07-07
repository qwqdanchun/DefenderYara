
rule Trojan_Win64_AbuseCommMain_C{
	meta:
		description = "Trojan:Win64/AbuseCommMain.C,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 33 00 37 00 32 00 38 00 45 00 39 00 33 00 33 00 32 00 38 00 34 00 43 00 45 00 36 00 33 00 38 00 44 00 30 00 36 00 46 00 43 00 46 00 31 00 43 00 42 00 45 00 39 00 32 00 31 00 30 00 39 00 36 00 45 00 31 00 30 00 32 00 35 00 30 00 38 00 42 00 44 00 33 00 37 00 30 00 44 00 36 00 44 00 32 00 33 00 31 00 33 00 37 00 44 00 33 00 32 00 37 00 31 00 45 00 45 00 35 00 37 00 33 00 33 00 38 00 } //1 tox:3728E933284CE638D06FCF1CBE921096E102508BD370D6D23137D3271EE57338
		$a_02_1 = {33 37 32 38 45 39 33 33 32 38 34 43 45 36 33 38 44 30 36 46 43 46 31 43 42 45 39 32 31 30 39 36 45 31 30 32 35 30 38 42 44 33 37 30 44 36 44 32 33 31 33 37 44 33 32 37 31 45 45 35 37 33 33 38 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //1
		$a_02_2 = {33 37 32 38 45 39 33 33 32 38 34 43 45 36 33 38 44 30 36 46 43 46 31 43 42 45 39 32 31 30 39 36 45 31 30 32 35 30 38 42 44 33 37 30 44 36 44 32 33 31 33 37 44 33 32 37 31 45 45 35 37 33 33 38 90 01 0c 4c 00 00 00 90 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 33 37 32 38 45 39 33 33 32 38 34 43 45 36 33 38 44 30 36 46 43 46 31 43 42 45 39 32 31 30 39 36 45 31 30 32 35 30 38 42 44 33 37 30 44 36 44 32 33 31 33 37 44 33 32 37 31 45 45 35 37 33 33 38 2e 68 73 74 72 } //1 \tox\3728E933284CE638D06FCF1CBE921096E102508BD370D6D23137D3271EE57338.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}