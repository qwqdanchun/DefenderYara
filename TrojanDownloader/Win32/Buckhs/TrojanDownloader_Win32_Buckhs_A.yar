
rule TrojanDownloader_Win32_Buckhs_A{
	meta:
		description = "TrojanDownloader:Win32/Buckhs.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 09 00 00 02 00 "
		
	strings :
		$a_01_0 = {25 57 49 4e 44 4f 57 53 5c 62 6b 73 00 } //02 00 
		$a_01_1 = {25 73 2f 62 63 68 6b 2e 70 68 70 00 } //02 00 
		$a_01_2 = {25 57 49 4e 44 4f 57 53 5c 7a 62 6b 73 00 } //01 00 
		$a_03_3 = {25 48 45 41 44 2f 90 02 10 2e 70 68 70 3f 6e 70 69 63 3d 25 4e 49 44 90 00 } //01 00 
		$a_01_4 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 41 64 76 61 6e 63 65 64 5c 46 6f 6c 64 65 72 5c 48 69 64 64 65 6e 5c 53 48 4f 57 41 4c 4c 00 } //01 00 
		$a_01_5 = {25 73 6f 73 74 74 00 } //01 00 
		$a_01_6 = {5b 49 6e 74 65 72 6e 65 74 53 68 6f 72 74 63 75 74 5d 0d 0a 55 52 4c 3d 25 73 } //01 00 
		$a_01_7 = {25 73 75 70 65 76 33 32 00 } //01 00 
		$a_01_8 = {25 73 5f 72 74 77 6f 72 6b 00 } //00 00 
	condition:
		any of ($a_*)
 
}