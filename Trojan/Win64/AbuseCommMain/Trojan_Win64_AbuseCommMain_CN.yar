
rule Trojan_Win64_AbuseCommMain_CN{
	meta:
		description = "Trojan:Win64/AbuseCommMain.CN,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 37 00 37 00 37 00 42 00 42 00 39 00 46 00 33 00 35 00 32 00 32 00 36 00 35 00 35 00 43 00 43 00 39 00 31 00 45 00 30 00 42 00 34 00 38 00 45 00 32 00 35 00 36 00 34 00 37 00 35 00 41 00 37 00 36 00 33 00 33 00 45 00 31 00 32 00 43 00 43 00 42 00 46 00 38 00 43 00 39 00 45 00 46 00 32 00 39 00 31 00 30 00 34 00 31 00 33 00 46 00 39 00 38 00 31 00 32 00 43 00 46 00 34 00 31 00 36 00 } //1 tox:777BB9F3522655CC91E0B48E256475A7633E12CCBF8C9EF2910413F9812CF416
		$a_02_1 = {37 37 37 42 42 39 46 33 35 32 32 36 35 35 43 43 39 31 45 30 42 34 38 45 32 35 36 34 37 35 41 37 36 33 33 45 31 32 43 43 42 46 38 43 39 45 46 32 39 31 30 34 31 33 46 39 38 31 32 43 46 34 31 36 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4c 00 00 00 00 00 00 00 } //1
		$a_02_2 = {37 37 37 42 42 39 46 33 35 32 32 36 35 35 43 43 39 31 45 30 42 34 38 45 32 35 36 34 37 35 41 37 36 33 33 45 31 32 43 43 42 46 38 43 39 45 46 32 39 31 30 34 31 33 46 39 38 31 32 43 46 34 31 36 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 4c 00 00 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 37 37 37 42 42 39 46 33 35 32 32 36 35 35 43 43 39 31 45 30 42 34 38 45 32 35 36 34 37 35 41 37 36 33 33 45 31 32 43 43 42 46 38 43 39 45 46 32 39 31 30 34 31 33 46 39 38 31 32 43 46 34 31 36 2e 68 73 74 72 } //1 \tox\777BB9F3522655CC91E0B48E256475A7633E12CCBF8C9EF2910413F9812CF416.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}