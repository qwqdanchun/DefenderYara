
rule TrojanDownloader_Win32_Wintrim_BX{
	meta:
		description = "TrojanDownloader:Win32/Wintrim.BX,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 0b 00 00 02 00 "
		
	strings :
		$a_01_0 = {3c 5f 45 47 4d 43 5f 3e 00 } //02 00 
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 66 63 6e 00 } //02 00 
		$a_01_2 = {25 73 25 63 69 74 79 70 65 3d 25 64 26 72 65 73 3d 25 64 00 } //01 00 
		$a_01_3 = {5f 50 52 4f 47 52 41 4d 46 49 4c 45 53 5f 44 49 52 5f 00 } //01 00 
		$a_01_4 = {5f 53 59 53 54 45 4d 5f 44 49 52 5f 00 } //01 00 
		$a_01_5 = {5f 57 49 4e 44 4f 57 53 5f 44 49 52 5f 00 } //01 00 
		$a_01_6 = {26 67 72 70 69 64 3d 00 } //01 00 
		$a_01_7 = {26 61 76 72 65 73 75 6c 74 3d 00 } //01 00 
		$a_01_8 = {26 61 76 65 72 72 6f 72 3d 00 } //01 00 
		$a_01_9 = {26 64 6c 5f 6c 61 73 74 65 72 72 6f 72 3d 00 } //01 00 
		$a_01_10 = {26 64 6c 5f 73 74 61 74 75 73 63 6f 64 65 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}