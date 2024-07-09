
rule Trojan_Win64_AbuseCommMain_ER{
	meta:
		description = "Trojan:Win64/AbuseCommMain.ER,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 41 00 38 00 41 00 44 00 30 00 46 00 44 00 34 00 43 00 39 00 33 00 31 00 43 00 44 00 41 00 41 00 31 00 34 00 30 00 38 00 44 00 35 00 41 00 36 00 30 00 43 00 42 00 46 00 33 00 38 00 43 00 45 00 44 00 46 00 34 00 36 00 42 00 34 00 31 00 45 00 31 00 39 00 41 00 38 00 41 00 35 00 35 00 45 00 34 00 45 00 46 00 31 00 46 00 31 00 38 00 34 00 38 00 41 00 46 00 33 00 34 00 31 00 36 00 41 00 } //1 tox:A8AD0FD4C931CDAA1408D5A60CBF38CEDF46B41E19A8A55E4EF1F1848AF3416A
		$a_02_1 = {41 38 41 44 30 46 44 34 43 39 33 31 43 44 41 41 31 34 30 38 44 35 41 36 30 43 42 46 33 38 43 45 44 46 34 36 42 34 31 45 31 39 41 38 41 35 35 45 34 45 46 31 46 31 38 34 38 41 46 33 34 31 36 41 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4c 00 00 00 00 00 00 00 } //1
		$a_02_2 = {41 38 41 44 30 46 44 34 43 39 33 31 43 44 41 41 31 34 30 38 44 35 41 36 30 43 42 46 33 38 43 45 44 46 34 36 42 34 31 45 31 39 41 38 41 35 35 45 34 45 46 31 46 31 38 34 38 41 46 33 34 31 36 41 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 4c 00 00 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 41 38 41 44 30 46 44 34 43 39 33 31 43 44 41 41 31 34 30 38 44 35 41 36 30 43 42 46 33 38 43 45 44 46 34 36 42 34 31 45 31 39 41 38 41 35 35 45 34 45 46 31 46 31 38 34 38 41 46 33 34 31 36 41 2e 68 73 74 72 } //1 \tox\A8AD0FD4C931CDAA1408D5A60CBF38CEDF46B41E19A8A55E4EF1F1848AF3416A.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}