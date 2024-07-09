
rule Trojan_Win64_AbuseCommMain_FR{
	meta:
		description = "Trojan:Win64/AbuseCommMain.FR,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 41 00 35 00 30 00 34 00 44 00 46 00 33 00 35 00 38 00 38 00 45 00 43 00 30 00 35 00 31 00 34 00 35 00 45 00 32 00 43 00 34 00 32 00 45 00 46 00 38 00 46 00 32 00 31 00 34 00 46 00 33 00 32 00 34 00 36 00 44 00 35 00 45 00 33 00 35 00 32 00 36 00 42 00 30 00 35 00 45 00 43 00 43 00 43 00 32 00 31 00 45 00 44 00 43 00 36 00 37 00 38 00 33 00 39 00 39 00 32 00 43 00 34 00 33 00 45 00 } //1 tox:A504DF3588EC05145E2C42EF8F214F3246D5E3526B05ECCC21EDC6783992C43E
		$a_02_1 = {41 35 30 34 44 46 33 35 38 38 45 43 30 35 31 34 35 45 32 43 34 32 45 46 38 46 32 31 34 46 33 32 34 36 44 35 45 33 35 32 36 42 30 35 45 43 43 43 32 31 45 44 43 36 37 38 33 39 39 32 43 34 33 45 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4c 00 00 00 00 00 00 00 } //1
		$a_02_2 = {41 35 30 34 44 46 33 35 38 38 45 43 30 35 31 34 35 45 32 43 34 32 45 46 38 46 32 31 34 46 33 32 34 36 44 35 45 33 35 32 36 42 30 35 45 43 43 43 32 31 45 44 43 36 37 38 33 39 39 32 43 34 33 45 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 4c 00 00 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 41 35 30 34 44 46 33 35 38 38 45 43 30 35 31 34 35 45 32 43 34 32 45 46 38 46 32 31 34 46 33 32 34 36 44 35 45 33 35 32 36 42 30 35 45 43 43 43 32 31 45 44 43 36 37 38 33 39 39 32 43 34 33 45 2e 68 73 74 72 } //1 \tox\A504DF3588EC05145E2C42EF8F214F3246D5E3526B05ECCC21EDC6783992C43E.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}