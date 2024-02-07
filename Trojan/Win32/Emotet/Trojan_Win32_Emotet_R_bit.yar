
rule Trojan_Win32_Emotet_R_bit{
	meta:
		description = "Trojan:Win32/Emotet.R!bit,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 61 00 5c 00 66 00 6f 00 6f 00 62 00 61 00 72 00 2e 00 62 00 6d 00 70 00 } //01 00  C:\a\foobar.bmp
		$a_01_1 = {43 00 3a 00 5c 00 31 00 32 00 33 00 5c 00 65 00 6d 00 61 00 69 00 6c 00 2e 00 64 00 6f 00 63 00 } //01 00  C:\123\email.doc
		$a_01_2 = {43 00 3a 00 5c 00 65 00 6d 00 61 00 69 00 6c 00 2e 00 64 00 6f 00 63 00 } //01 00  C:\email.doc
		$a_01_3 = {43 00 3a 00 5c 00 74 00 61 00 6b 00 65 00 5f 00 73 00 63 00 72 00 65 00 65 00 6e 00 73 00 68 00 6f 00 74 00 2e 00 70 00 73 00 31 00 } //01 00  C:\take_screenshot.ps1
		$a_01_4 = {4b 4c 4f 4e 45 5f 58 36 34 2d 50 43 } //01 00  KLONE_X64-PC
		$a_01_5 = {43 00 3a 00 5c 00 53 00 79 00 6d 00 62 00 6f 00 6c 00 73 00 5c 00 61 00 61 00 67 00 6d 00 6d 00 63 00 2e 00 70 00 64 00 62 00 } //01 00  C:\Symbols\aagmmc.pdb
		$a_01_6 = {54 45 51 55 49 4c 41 42 4f 4f 4d 42 4f 4f 4d } //01 00  TEQUILABOOMBOOM
		$a_01_7 = {8b 30 8b 78 04 8b 58 08 8b 68 0c 8b 60 10 8b 40 14 ff e0 } //00 00 
	condition:
		any of ($a_*)
 
}