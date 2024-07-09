
rule Trojan_Win64_AbuseCommMain_CK{
	meta:
		description = "Trojan:Win64/AbuseCommMain.CK,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 42 00 37 00 39 00 41 00 37 00 42 00 30 00 42 00 33 00 31 00 43 00 46 00 33 00 36 00 33 00 36 00 31 00 34 00 38 00 37 00 44 00 37 00 43 00 42 00 36 00 45 00 37 00 38 00 37 00 34 00 31 00 33 00 32 00 42 00 30 00 35 00 36 00 35 00 32 00 38 00 44 00 38 00 41 00 41 00 34 00 31 00 34 00 36 00 34 00 32 00 34 00 41 00 37 00 44 00 31 00 45 00 43 00 41 00 37 00 32 00 42 00 43 00 34 00 34 00 } //1 tox:B79A7B0B31CF36361487D7CB6E7874132B056528D8AA4146424A7D1ECA72BC44
		$a_02_1 = {42 37 39 41 37 42 30 42 33 31 43 46 33 36 33 36 31 34 38 37 44 37 43 42 36 45 37 38 37 34 31 33 32 42 30 35 36 35 32 38 44 38 41 41 34 31 34 36 34 32 34 41 37 44 31 45 43 41 37 32 42 43 34 34 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4c 00 00 00 00 00 00 00 } //1
		$a_02_2 = {42 37 39 41 37 42 30 42 33 31 43 46 33 36 33 36 31 34 38 37 44 37 43 42 36 45 37 38 37 34 31 33 32 42 30 35 36 35 32 38 44 38 41 41 34 31 34 36 34 32 34 41 37 44 31 45 43 41 37 32 42 43 34 34 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 4c 00 00 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 42 37 39 41 37 42 30 42 33 31 43 46 33 36 33 36 31 34 38 37 44 37 43 42 36 45 37 38 37 34 31 33 32 42 30 35 36 35 32 38 44 38 41 41 34 31 34 36 34 32 34 41 37 44 31 45 43 41 37 32 42 43 34 34 2e 68 73 74 72 } //1 \tox\B79A7B0B31CF36361487D7CB6E7874132B056528D8AA4146424A7D1ECA72BC44.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}