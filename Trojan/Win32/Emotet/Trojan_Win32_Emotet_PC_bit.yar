
rule Trojan_Win32_Emotet_PC_bit{
	meta:
		description = "Trojan:Win32/Emotet.PC!bit,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {4b 4c 4f 4e 45 5f 58 36 34 2d 50 43 } //1 KLONE_X64-PC
		$a_01_1 = {43 00 3a 00 5c 00 74 00 61 00 6b 00 65 00 5f 00 73 00 63 00 72 00 65 00 65 00 6e 00 73 00 68 00 6f 00 74 00 2e 00 70 00 73 00 31 00 } //1 C:\take_screenshot.ps1
		$a_01_2 = {5c 00 65 00 6d 00 61 00 69 00 6c 00 2e 00 68 00 74 00 6d 00 00 00 43 00 3a 00 5c 00 31 00 32 00 33 00 5c 00 65 00 6d 00 61 00 69 00 6c 00 2e 00 64 00 6f 00 63 00 } //1
		$a_01_3 = {43 00 3a 00 5c 00 61 00 5c 00 66 00 6f 00 6f 00 62 00 61 00 72 00 2e 00 62 00 6d 00 70 00 } //1 C:\a\foobar.bmp
		$a_03_4 = {31 d2 f7 f1 8b 0d ?? ?? ?? ?? 8a 1c 11 8b 4d ?? 8b 55 ?? 8a 3c 11 28 df 88 3c 11 81 c2 ff 00 00 00 8b 75 ?? 39 f2 89 55 ?? 72 } //1
		$a_03_5 = {89 f1 01 c1 83 c1 08 8b 01 8b 4d ?? c6 01 ?? 8b 4d ?? 29 cf 8b 4d ?? 01 f9 01 d9 8b 7d ?? 89 0f } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=6
 
}