
rule PWS_Win32_Lolyda_AO{
	meta:
		description = "PWS:Win32/Lolyda.AO,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 "
		
	strings :
		$a_03_0 = {4b c6 44 24 ?? 56 c6 44 24 ?? 4d c6 44 24 ?? 6f c6 44 24 ?? 6e c6 44 24 ?? 58 c6 44 24 ?? 50 c6 44 24 ?? 2e } //2
		$a_03_1 = {68 ec fe ff ff 56 ff d7 8d 54 24 ?? 6a 00 52 8d 84 24 ?? ?? 00 00 68 14 01 00 00 } //2
		$a_03_2 = {8a 04 33 04 ?? 34 ?? 2c ?? 88 06 [0-05] 47 55 46 ff 15 ?? ?? ?? ?? 3b f8 7c } //2
		$a_01_3 = {61 76 70 2e 65 78 65 00 65 6c 65 6d 65 6e 74 5c } //1
		$a_01_4 = {5a 50 57 55 70 64 61 74 65 50 61 63 6b 5c 44 65 66 61 75 6c 74 49 63 6f 6e } //1 ZPWUpdatePack\DefaultIcon
		$a_01_5 = {26 7a 74 3d 73 75 63 63 6d 62 68 00 61 63 74 69 6f 6e 3d 75 70 26 75 3d } //1 稦㵴畳捣扭h捡楴湯甽♰㵵
		$a_01_6 = {2f 77 6d 72 6d 62 2e 61 73 70 } //1 /wmrmb.asp
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=4
 
}