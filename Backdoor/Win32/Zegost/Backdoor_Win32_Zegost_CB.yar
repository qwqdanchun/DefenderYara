
rule Backdoor_Win32_Zegost_CB{
	meta:
		description = "Backdoor:Win32/Zegost.CB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_03_0 = {47 c6 44 24 ?? 68 c6 44 24 ?? 30 c6 44 24 ?? 73 8b 54 24 ?? 8d 8e ?? ?? 00 00 89 86 ?? ?? 00 00 b0 74 } //2
		$a_03_1 = {8b 54 24 04 8a 1c 11 80 c3 ?? 88 1c 11 8b 54 24 04 8a 1c 11 80 f3 ?? 88 1c 11 41 3b c8 7c e1 } //2
		$a_01_2 = {c6 06 6a 8b 13 89 56 01 8b 43 04 8d 56 09 68 f7 1f 00 00 52 57 89 46 05 ff 15 } //2
		$a_01_3 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 6d 00 6f 00 75 00 73 00 65 00 20 00 25 00 64 00 } //1 Global\mouse %d
		$a_01_4 = {47 00 68 00 30 00 73 00 74 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 } //1 Gh0st Update
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=6
 
}