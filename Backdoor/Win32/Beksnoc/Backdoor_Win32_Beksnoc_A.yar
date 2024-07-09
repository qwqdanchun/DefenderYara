
rule Backdoor_Win32_Beksnoc_A{
	meta:
		description = "Backdoor:Win32/Beksnoc.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 13 00 00 "
		
	strings :
		$a_03_0 = {09 c0 74 13 3d e3 00 00 00 74 0c 0f b6 04 ?? 35 e3 00 00 00 88 04 } //1
		$a_01_1 = {0f b6 04 18 8b 55 fc 0f b6 54 15 e9 01 da 31 d0 88 45 fb 80 7d fb 00 } //1
		$a_03_2 = {83 f8 01 74 5e c6 45 ?? 26 c6 45 ?? 6c c6 45 ?? 70 c6 45 ?? 25 c6 45 ?? 75 c6 45 ?? 3d c6 45 ?? 25 c6 45 ?? 73 c6 45 ?? 00 } //1
		$a_01_3 = {80 7f 08 4d 74 0d 80 7f 09 5a 74 07 31 c0 } //1
		$a_01_4 = {c6 40 01 53 c6 40 02 3a c6 40 03 53 c6 40 04 4d c6 40 05 53 c6 40 06 53 c6 40 07 5f c6 40 08 42 c6 40 09 55 c6 40 0a 47 } //1
		$a_03_5 = {6a 53 6a 4f 6a 46 68 ?? ?? ?? ?? 8d 85 4c f7 ff ff 50 e8 } //1
		$a_01_6 = {c6 07 00 6a 3a 89 f8 40 50 e8 } //1
		$a_01_7 = {01 fa 31 d0 88 45 ff 80 7d ff 00 74 0b } //1
		$a_01_8 = {26 69 64 3d 25 73 26 6f 3d 25 73 26 76 3d 25 73 } //1 &id=%s&o=%s&v=%s
		$a_01_9 = {71 3d 25 63 26 69 64 3d 25 73 26 6f 3d 25 73 26 25 63 3d 25 73 } //1 q=%c&id=%s&o=%s&%c=%s
		$a_01_10 = {71 3d 25 63 26 69 64 3d 25 73 26 25 63 3d 25 73 26 25 63 3d 25 73 } //1 q=%c&id=%s&%c=%s&%c=%s
		$a_01_11 = {71 3d 25 63 26 25 73 3d 25 73 26 25 63 3d 25 73 26 25 63 3d 25 73 } //1 q=%c&%s=%s&%c=%s&%c=%s
		$a_01_12 = {23 55 50 4c 4f 41 44 45 44 23 } //1 #UPLOADED#
		$a_01_13 = {23 21 40 50 4f 53 00 } //1
		$a_01_14 = {52 75 6e 44 6c 6c 33 32 2e 65 78 65 20 42 65 54 77 69 6e 50 72 6f 78 79 56 53 2e 64 6c 6c 2c 52 65 67 69 73 74 65 72 } //1 RunDll32.exe BeTwinProxyVS.dll,Register
		$a_01_15 = {58 54 50 5b 4b 4d 5d 3a 20 57 47 52 20 65 3d 25 75 } //1 XTP[KM]: WGR e=%u
		$a_01_16 = {6d 73 72 64 70 23 76 } //1 msrdp#v
		$a_01_17 = {5c 74 65 72 6d 73 72 76 2e 64 6c 6c 5f 62 6b 6b } //1 \termsrv.dll_bkk
		$a_03_18 = {09 c0 75 31 c6 ?? 45 c6 ?? 01 53 c6 ?? 02 3a c6 ?? 03 53 c6 ?? 04 4d c6 ?? 05 53 c6 ?? 06 53 c6 ?? 07 5f c6 ?? 08 42 c6 ?? 09 55 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_03_18  & 1)*1) >=3
 
}