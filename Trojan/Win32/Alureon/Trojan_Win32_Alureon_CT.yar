
rule Trojan_Win32_Alureon_CT{
	meta:
		description = "Trojan:Win32/Alureon.CT,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 0b 00 00 "
		
	strings :
		$a_03_0 = {c6 45 fc 74 c6 45 fd 64 c6 45 fe 6c 33 c0 ?? 00 01 00 00 88 } //2
		$a_03_1 = {c6 45 f8 74 c6 45 f9 64 c6 45 fa 6c (39|33 c0 88 ?? ?? ?? ?? ?? ?? ??) ?? 00 01 00 00 } //2
		$a_01_2 = {0f b7 46 06 47 83 c5 28 3b f8 72 ce } //1
		$a_01_3 = {74 64 6c 63 6d 64 } //2 tdlcmd
		$a_01_4 = {80 38 0d 75 05 c6 00 00 ff 01 8b 01 80 38 0a 74 13 } //1
		$a_01_5 = {50 6a 5a 57 ff d6 8d 85 } //1
		$a_01_6 = {c6 00 21 6a 7c 57 ff d6 } //1
		$a_01_7 = {6a 6d 58 6a 61 66 89 45 d8 58 6a 63 } //1
		$a_03_8 = {76 0f 8a d1 80 c2 ?? 30 14 01 41 3b 4c 24 04 72 f1 } //2
		$a_03_9 = {6a 6d 58 6a 61 66 89 45 ?? 58 6a 63 66 89 45 ?? 58 6a 68 } //1
		$a_01_10 = {74 6c 56 8d 45 fc 50 68 ac 01 00 00 68 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_03_8  & 1)*2+(#a_03_9  & 1)*1+(#a_01_10  & 1)*1) >=4
 
}