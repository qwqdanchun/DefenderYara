
rule Trojan_Win64_AbuseCommMain_BI{
	meta:
		description = "Trojan:Win64/AbuseCommMain.BI,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 37 00 37 00 41 00 39 00 30 00 34 00 33 00 36 00 30 00 45 00 41 00 37 00 44 00 37 00 34 00 32 00 36 00 38 00 45 00 37 00 41 00 34 00 46 00 33 00 31 00 36 00 38 00 36 00 35 00 46 00 31 00 37 00 30 00 33 00 44 00 32 00 44 00 37 00 41 00 36 00 41 00 46 00 32 00 38 00 43 00 39 00 45 00 43 00 46 00 41 00 43 00 45 00 44 00 36 00 39 00 43 00 44 00 30 00 39 00 43 00 38 00 36 00 31 00 30 00 } //1 tox:77A904360EA7D74268E7A4F316865F1703D2D7A6AF28C9ECFACED69CD09C8610
		$a_02_1 = {37 37 41 39 30 34 33 36 30 45 41 37 44 37 34 32 36 38 45 37 41 34 46 33 31 36 38 36 35 46 31 37 30 33 44 32 44 37 41 36 41 46 32 38 43 39 45 43 46 41 43 45 44 36 39 43 44 30 39 43 38 36 31 30 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4c 00 00 00 00 00 00 00 } //1
		$a_02_2 = {37 37 41 39 30 34 33 36 30 45 41 37 44 37 34 32 36 38 45 37 41 34 46 33 31 36 38 36 35 46 31 37 30 33 44 32 44 37 41 36 41 46 32 38 43 39 45 43 46 41 43 45 44 36 39 43 44 30 39 43 38 36 31 30 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 4c 00 00 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 37 37 41 39 30 34 33 36 30 45 41 37 44 37 34 32 36 38 45 37 41 34 46 33 31 36 38 36 35 46 31 37 30 33 44 32 44 37 41 36 41 46 32 38 43 39 45 43 46 41 43 45 44 36 39 43 44 30 39 43 38 36 31 30 2e 68 73 74 72 } //1 \tox\77A904360EA7D74268E7A4F316865F1703D2D7A6AF28C9ECFACED69CD09C8610.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}