
rule Trojan_Win64_AbuseCommMain_EB{
	meta:
		description = "Trojan:Win64/AbuseCommMain.EB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 37 00 43 00 42 00 38 00 35 00 43 00 34 00 31 00 44 00 36 00 45 00 33 00 46 00 43 00 39 00 36 00 30 00 32 00 46 00 42 00 38 00 44 00 37 00 39 00 42 00 39 00 35 00 35 00 38 00 32 00 30 00 41 00 43 00 34 00 45 00 45 00 46 00 34 00 31 00 46 00 32 00 39 00 46 00 32 00 31 00 37 00 37 00 42 00 39 00 37 00 35 00 30 00 43 00 31 00 32 00 39 00 39 00 33 00 35 00 46 00 32 00 31 00 36 00 46 00 } //1 tox:7CB85C41D6E3FC9602FB8D79B955820AC4EEF41F29F2177B9750C129935F216F
		$a_02_1 = {37 43 42 38 35 43 34 31 44 36 45 33 46 43 39 36 30 32 46 42 38 44 37 39 42 39 35 35 38 32 30 41 43 34 45 45 46 34 31 46 32 39 46 32 31 37 37 42 39 37 35 30 43 31 32 39 39 33 35 46 32 31 36 46 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4c 00 00 00 00 00 00 00 } //1
		$a_02_2 = {37 43 42 38 35 43 34 31 44 36 45 33 46 43 39 36 30 32 46 42 38 44 37 39 42 39 35 35 38 32 30 41 43 34 45 45 46 34 31 46 32 39 46 32 31 37 37 42 39 37 35 30 43 31 32 39 39 33 35 46 32 31 36 46 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 4c 00 00 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 37 43 42 38 35 43 34 31 44 36 45 33 46 43 39 36 30 32 46 42 38 44 37 39 42 39 35 35 38 32 30 41 43 34 45 45 46 34 31 46 32 39 46 32 31 37 37 42 39 37 35 30 43 31 32 39 39 33 35 46 32 31 36 46 2e 68 73 74 72 } //1 \tox\7CB85C41D6E3FC9602FB8D79B955820AC4EEF41F29F2177B9750C129935F216F.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}