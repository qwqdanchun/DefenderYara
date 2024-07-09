
rule Trojan_Win64_AbuseCommMain_DR{
	meta:
		description = "Trojan:Win64/AbuseCommMain.DR,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 41 00 37 00 32 00 44 00 33 00 38 00 39 00 35 00 46 00 46 00 36 00 37 00 32 00 44 00 31 00 32 00 31 00 32 00 31 00 32 00 43 00 42 00 41 00 45 00 39 00 42 00 31 00 37 00 41 00 32 00 33 00 35 00 30 00 34 00 44 00 46 00 43 00 43 00 34 00 34 00 34 00 33 00 43 00 38 00 33 00 35 00 30 00 35 00 37 00 42 00 42 00 39 00 46 00 43 00 31 00 32 00 38 00 41 00 37 00 46 00 39 00 30 00 32 00 33 00 } //1 tox:A72D3895FF672D121212CBAE9B17A23504DFCC4443C835057BB9FC128A7F9023
		$a_02_1 = {41 37 32 44 33 38 39 35 46 46 36 37 32 44 31 32 31 32 31 32 43 42 41 45 39 42 31 37 41 32 33 35 30 34 44 46 43 43 34 34 34 33 43 38 33 35 30 35 37 42 42 39 46 43 31 32 38 41 37 46 39 30 32 33 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4c 00 00 00 00 00 00 00 } //1
		$a_02_2 = {41 37 32 44 33 38 39 35 46 46 36 37 32 44 31 32 31 32 31 32 43 42 41 45 39 42 31 37 41 32 33 35 30 34 44 46 43 43 34 34 34 33 43 38 33 35 30 35 37 42 42 39 46 43 31 32 38 41 37 46 39 30 32 33 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 4c 00 00 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 41 37 32 44 33 38 39 35 46 46 36 37 32 44 31 32 31 32 31 32 43 42 41 45 39 42 31 37 41 32 33 35 30 34 44 46 43 43 34 34 34 33 43 38 33 35 30 35 37 42 42 39 46 43 31 32 38 41 37 46 39 30 32 33 2e 68 73 74 72 } //1 \tox\A72D3895FF672D121212CBAE9B17A23504DFCC4443C835057BB9FC128A7F9023.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}