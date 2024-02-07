
rule PWS_Win32_Fareit{
	meta:
		description = "PWS:Win32/Fareit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {2f 67 61 74 65 2e 70 68 70 } //02 00  /gate.php
		$a_01_1 = {50 57 44 46 49 4c 45 30 59 55 49 50 4b 44 46 49 4c 45 30 59 55 49 43 52 59 50 54 45 44 } //01 00  PWDFILE0YUIPKDFILE0YUICRYPTED
		$a_00_2 = {53 6f 66 74 77 61 72 65 5c 57 69 6e 52 41 52 } //01 00  Software\WinRAR
		$a_00_3 = {53 6f 66 74 77 61 72 65 5c 46 61 72 32 5c 53 61 76 65 64 44 69 61 6c 6f 67 48 69 73 74 6f 72 79 5c 46 54 50 48 6f 73 74 } //01 00  Software\Far2\SavedDialogHistory\FTPHost
		$a_03_4 = {48 57 49 44 90 02 05 7b 25 30 38 58 2d 25 30 34 58 2d 25 30 34 58 2d 25 30 32 58 25 30 32 58 2d 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 7d 90 00 } //00 00 
		$a_00_5 = {7e 15 00 00 } //02 8b 
	condition:
		any of ($a_*)
 
}
rule PWS_Win32_Fareit_2{
	meta:
		description = "PWS:Win32/Fareit,SIGNATURE_TYPE_PEHSTR,16 00 16 00 03 00 00 14 00 "
		
	strings :
		$a_01_0 = {50 57 44 46 49 4c 45 30 59 55 49 50 4b 44 46 49 4c 45 30 59 55 49 43 52 59 50 54 45 44 } //01 00  PWDFILE0YUIPKDFILE0YUICRYPTED
		$a_01_1 = {2f 67 61 74 65 2e 70 68 70 } //01 00  /gate.php
		$a_01_2 = {73 6f 66 74 77 61 72 65 5c 77 69 6e 72 61 72 00 } //00 00  潳瑦慷敲睜湩慲r
		$a_01_3 = {00 67 16 00 00 04 93 02 00 fe 1b f2 73 f2 10 c8 c6 00 10 03 } //00 01 
	condition:
		any of ($a_*)
 
}