
rule Trojan_Win64_AbuseCommMain_EW{
	meta:
		description = "Trojan:Win64/AbuseCommMain.EW,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 34 00 43 00 44 00 45 00 39 00 41 00 41 00 35 00 37 00 30 00 37 00 43 00 36 00 31 00 39 00 43 00 32 00 34 00 31 00 41 00 32 00 46 00 32 00 37 00 45 00 30 00 46 00 33 00 33 00 37 00 38 00 45 00 36 00 41 00 35 00 43 00 43 00 36 00 41 00 44 00 30 00 33 00 31 00 45 00 41 00 44 00 43 00 34 00 30 00 43 00 33 00 36 00 46 00 31 00 46 00 33 00 30 00 30 00 44 00 42 00 38 00 44 00 35 00 42 00 } //1 tox:4CDE9AA5707C619C241A2F27E0F3378E6A5CC6AD031EADC40C36F1F300DB8D5B
		$a_02_1 = {34 43 44 45 39 41 41 35 37 30 37 43 36 31 39 43 32 34 31 41 32 46 32 37 45 30 46 33 33 37 38 45 36 41 35 43 43 36 41 44 30 33 31 45 41 44 43 34 30 43 33 36 46 31 46 33 30 30 44 42 38 44 35 42 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4c 00 00 00 00 00 00 00 } //1
		$a_02_2 = {34 43 44 45 39 41 41 35 37 30 37 43 36 31 39 43 32 34 31 41 32 46 32 37 45 30 46 33 33 37 38 45 36 41 35 43 43 36 41 44 30 33 31 45 41 44 43 34 30 43 33 36 46 31 46 33 30 30 44 42 38 44 35 42 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 4c 00 00 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 34 43 44 45 39 41 41 35 37 30 37 43 36 31 39 43 32 34 31 41 32 46 32 37 45 30 46 33 33 37 38 45 36 41 35 43 43 36 41 44 30 33 31 45 41 44 43 34 30 43 33 36 46 31 46 33 30 30 44 42 38 44 35 42 2e 68 73 74 72 } //1 \tox\4CDE9AA5707C619C241A2F27E0F3378E6A5CC6AD031EADC40C36F1F300DB8D5B.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}