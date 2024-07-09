
rule Trojan_Win64_AbuseCommMain_K{
	meta:
		description = "Trojan:Win64/AbuseCommMain.K,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 31 00 30 00 44 00 32 00 30 00 42 00 31 00 30 00 39 00 45 00 38 00 39 00 35 00 44 00 32 00 46 00 42 00 43 00 37 00 30 00 46 00 31 00 31 00 45 00 39 00 41 00 37 00 37 00 35 00 38 00 32 00 35 00 45 00 39 00 33 00 39 00 37 00 42 00 30 00 42 00 38 00 39 00 46 00 45 00 30 00 30 00 46 00 44 00 44 00 39 00 36 00 42 00 41 00 38 00 31 00 35 00 38 00 46 00 38 00 41 00 35 00 34 00 32 00 41 00 } //1 tox:10D20B109E895D2FBC70F11E9A775825E9397B0B89FE00FDD96BA8158F8A542A
		$a_02_1 = {31 30 44 32 30 42 31 30 39 45 38 39 35 44 32 46 42 43 37 30 46 31 31 45 39 41 37 37 35 38 32 35 45 39 33 39 37 42 30 42 38 39 46 45 30 30 46 44 44 39 36 42 41 38 31 35 38 46 38 41 35 34 32 41 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4c 00 00 00 00 00 00 00 } //1
		$a_02_2 = {31 30 44 32 30 42 31 30 39 45 38 39 35 44 32 46 42 43 37 30 46 31 31 45 39 41 37 37 35 38 32 35 45 39 33 39 37 42 30 42 38 39 46 45 30 30 46 44 44 39 36 42 41 38 31 35 38 46 38 41 35 34 32 41 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 4c 00 00 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 31 30 44 32 30 42 31 30 39 45 38 39 35 44 32 46 42 43 37 30 46 31 31 45 39 41 37 37 35 38 32 35 45 39 33 39 37 42 30 42 38 39 46 45 30 30 46 44 44 39 36 42 41 38 31 35 38 46 38 41 35 34 32 41 2e 68 73 74 72 } //1 \tox\10D20B109E895D2FBC70F11E9A775825E9397B0B89FE00FDD96BA8158F8A542A.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}