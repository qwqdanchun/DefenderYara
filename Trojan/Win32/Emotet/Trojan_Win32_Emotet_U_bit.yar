
rule Trojan_Win32_Emotet_U_bit{
	meta:
		description = "Trojan:Win32/Emotet.U!bit,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 53 00 79 00 6d 00 62 00 6f 00 6c 00 73 00 5c 00 61 00 61 00 67 00 6d 00 6d 00 63 00 2e 00 70 00 64 00 62 00 } //01 00  C:\Symbols\aagmmc.pdb
		$a_01_1 = {4b 4c 4f 4e 45 5f 58 36 34 2d 50 43 } //01 00  KLONE_X64-PC
		$a_01_2 = {43 00 3a 00 5c 00 74 00 61 00 6b 00 65 00 5f 00 73 00 63 00 72 00 65 00 65 00 6e 00 73 00 68 00 6f 00 74 00 2e 00 70 00 73 00 31 00 } //01 00  C:\take_screenshot.ps1
		$a_01_3 = {5c 00 65 00 6d 00 61 00 69 00 6c 00 2e 00 68 00 74 00 6d 00 00 00 43 00 3a 00 5c 00 31 00 32 00 33 00 5c 00 65 00 6d 00 61 00 69 00 6c 00 2e 00 64 00 6f 00 63 00 } //01 00 
		$a_01_4 = {5c 00 61 00 5c 00 66 00 6f 00 6f 00 62 00 61 00 72 00 2e 00 64 00 6f 00 63 00 00 00 43 00 3a 00 5c 00 61 00 5c 00 66 00 6f 00 6f 00 62 00 61 00 72 00 2e 00 67 00 69 00 66 00 } //01 00 
		$a_01_5 = {8d 49 08 33 55 08 8d 76 04 0f b6 c2 43 66 89 41 f8 8b c2 c1 e8 08 0f b6 c0 66 89 41 fa c1 ea 10 0f b6 c2 66 89 41 fc c1 ea 08 0f b6 c2 66 89 41 fe 3b df 72 c9 } //00 00 
	condition:
		any of ($a_*)
 
}