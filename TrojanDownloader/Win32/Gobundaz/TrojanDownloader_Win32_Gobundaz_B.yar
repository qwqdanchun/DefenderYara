
rule TrojanDownloader_Win32_Gobundaz_B{
	meta:
		description = "TrojanDownloader:Win32/Gobundaz.B,SIGNATURE_TYPE_PEHSTR_EXT,32 00 0d 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {49 4e 46 45 43 54 20 46 41 43 45 20 43 4c 49 20 90 02 06 20 2d 90 00 } //01 00 
		$a_03_1 = {49 4e 46 45 43 54 20 42 41 4e 4b 20 90 02 06 20 2d 90 00 } //01 00 
		$a_03_2 = {49 4e 46 45 43 54 20 4d 41 4c 49 47 4e 4f 20 90 02 06 20 2d 90 00 } //01 00 
		$a_03_3 = {49 4e 46 45 43 54 20 69 54 4d 50 20 90 02 06 20 2d 90 00 } //02 00 
		$a_01_4 = {5c 68 6f 73 74 2e 64 61 74 00 } //02 00 
		$a_01_5 = {5c 64 72 76 2e 64 61 74 00 } //05 00 
		$a_01_6 = {69 6e 73 64 62 2e 70 68 70 3f 74 61 62 6c 65 3d } //05 00 
		$a_01_7 = {72 32 3b 33 38 73 2d 2e 32 39 31 39 31 2e 38 2d 40 2f 3a 73 40 3d 38 3c 34 35 40 32 3e 3c 2f 72 } //00 00 
	condition:
		any of ($a_*)
 
}