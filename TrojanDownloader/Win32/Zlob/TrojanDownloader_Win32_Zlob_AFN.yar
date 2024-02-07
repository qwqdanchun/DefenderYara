
rule TrojanDownloader_Win32_Zlob_AFN{
	meta:
		description = "TrojanDownloader:Win32/Zlob.AFN,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1e 00 07 00 00 0a 00 "
		
	strings :
		$a_03_0 = {33 c4 89 84 24 64 04 00 00 56 ff 15 90 01 02 40 00 68 08 02 00 00 8d 84 24 64 02 00 00 50 68 90 01 02 40 00 ff 15 90 01 02 40 00 68 90 01 02 40 00 8d 8c 24 64 02 00 00 51 8d 54 24 60 68 90 00 } //0a 00 
		$a_03_1 = {6a 06 8d 4c 24 5c 51 ff 15 90 01 02 40 00 6a 40 8d 54 24 1c 6a 00 52 c7 44 24 20 44 00 00 00 e8 90 01 02 00 00 83 c4 0c 8d 44 24 04 50 8d 4c 24 18 51 8d 94 24 68 02 00 00 52 6a 00 6a 00 6a 00 90 00 } //0a 00 
		$a_01_2 = {4d 00 65 00 64 00 69 00 61 00 54 00 75 00 62 00 65 00 43 00 6f 00 64 00 65 00 63 00 5f 00 76 00 65 00 72 00 } //01 00  MediaTubeCodec_ver
		$a_00_3 = {2f 00 2f 00 74 00 68 00 65 00 70 00 6f 00 77 00 65 00 72 00 6f 00 66 00 73 00 6d 00 69 00 74 00 68 00 2e 00 67 00 6f 00 6f 00 67 00 6c 00 65 00 70 00 61 00 67 00 65 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 } //01 00  //thepowerofsmith.googlepages.com/
		$a_00_4 = {2f 00 2f 00 55 00 70 00 64 00 61 00 74 00 65 00 2e 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 2e 00 6f 00 72 00 67 00 2f 00 } //01 00  //Update.WindowsSettings.org/
		$a_00_5 = {2f 00 2f 00 66 00 72 00 65 00 73 00 68 00 74 00 6f 00 72 00 72 00 65 00 6e 00 74 00 73 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 } //01 00  //freshtorrents.info/
		$a_00_6 = {2f 00 2f 00 73 00 75 00 70 00 65 00 72 00 73 00 65 00 65 00 64 00 79 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 } //00 00  //superseedy.info/
	condition:
		any of ($a_*)
 
}