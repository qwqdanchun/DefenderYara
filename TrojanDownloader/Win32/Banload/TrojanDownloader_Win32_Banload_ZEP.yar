
rule TrojanDownloader_Win32_Banload_ZEP{
	meta:
		description = "TrojanDownloader:Win32/Banload.ZEP,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 45 f4 0f b7 5c 70 fe 33 5d e4 3b fb 7c 0a 81 c3 ff 00 00 00 2b df eb 02 } //01 00 
		$a_01_1 = {38 00 38 00 39 00 37 00 34 00 35 00 44 00 42 00 32 00 32 00 45 00 33 00 31 00 39 00 45 00 46 00 31 00 39 00 45 00 45 00 32 00 44 00 43 00 33 00 34 00 38 00 43 00 43 00 36 00 37 00 39 00 30 00 34 00 34 00 44 00 34 00 32 00 34 00 44 00 38 00 32 00 35 00 44 00 35 00 35 00 46 00 43 00 39 00 35 00 44 00 38 00 31 00 39 00 38 00 41 00 46 00 39 00 30 00 } //01 00 
		$a_01_2 = {42 00 44 00 73 00 6c 00 72 00 4e 00 67 00 4f 00 63 00 66 00 67 00 65 00 7a 00 56 00 46 00 4c 00 63 00 61 00 54 00 6d 00 46 00 64 00 72 00 76 00 4c 00 69 00 67 00 70 00 4b 00 64 00 78 00 61 00 71 00 50 00 61 00 74 00 62 00 55 00 4f 00 4f 00 64 00 70 00 68 00 49 00 62 00 6b 00 49 00 67 00 48 00 56 00 78 00 47 00 62 00 4e 00 50 00 68 00 61 00 76 00 71 00 44 00 67 00 6d 00 73 00 6f 00 4b 00 61 00 63 00 77 00 48 00 51 00 45 00 55 00 6e 00 64 00 65 00 70 00 43 00 68 00 56 00 42 00 55 00 65 00 4d 00 68 00 70 00 6d 00 74 00 4b 00 44 00 } //00 00 
		$a_00_3 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}