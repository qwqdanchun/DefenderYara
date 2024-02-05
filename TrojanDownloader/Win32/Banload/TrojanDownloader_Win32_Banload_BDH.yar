
rule TrojanDownloader_Win32_Banload_BDH{
	meta:
		description = "TrojanDownloader:Win32/Banload.BDH,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {56 00 33 00 4e 00 6a 00 63 00 6d 00 6c 00 77 00 64 00 43 00 35 00 6c 00 65 00 47 00 55 00 67 00 49 00 67 00 3d 00 3d 00 } //01 00 
		$a_01_1 = {59 00 57 00 78 00 73 00 64 00 58 00 4e 00 6c 00 63 00 6e 00 4e 00 77 00 63 00 6d 00 39 00 6d 00 61 00 57 00 78 00 6c 00 } //01 00 
		$a_01_2 = {64 00 32 00 6c 00 75 00 62 00 57 00 46 00 75 00 59 00 57 00 64 00 6c 00 63 00 69 00 35 00 32 00 59 00 6e 00 4d 00 } //01 00 
		$a_01_3 = {61 00 48 00 52 00 30 00 63 00 44 00 6f 00 76 00 4c 00 } //01 00 
		$a_01_4 = {55 00 30 00 39 00 47 00 56 00 46 00 64 00 42 00 55 00 6b 00 56 00 63 00 54 00 57 00 6c 00 6a 00 63 00 6d 00 39 00 7a 00 62 00 32 00 5a 00 30 00 58 00 45 00 35 00 46 00 56 00 43 00 42 00 47 00 63 00 6d 00 46 00 74 00 5a 00 58 00 64 00 76 00 63 00 6d 00 73 00 67 00 55 00 32 00 56 00 30 00 64 00 58 00 42 00 63 00 54 00 6b 00 52 00 51 00 58 00 48 00 59 00 } //01 00 
		$a_01_5 = {59 00 32 00 39 00 74 00 63 00 48 00 56 00 30 00 5a 00 58 00 4a 00 75 00 59 00 57 00 31 00 6c 00 } //01 00 
		$a_01_6 = {61 00 6d 00 46 00 32 00 59 00 58 00 55 00 75 00 62 00 67 00 3d 00 3d 00 } //01 00 
		$a_01_7 = {54 49 64 48 54 54 50 57 68 61 74 73 4e 65 78 74 } //01 00 
		$a_01_8 = {68 43 72 65 64 65 6e 74 69 61 6c 73 } //00 00 
		$a_00_9 = {5d 04 00 } //00 b9 
	condition:
		any of ($a_*)
 
}