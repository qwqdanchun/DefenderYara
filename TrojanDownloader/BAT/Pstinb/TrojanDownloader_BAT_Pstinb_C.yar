
rule TrojanDownloader_BAT_Pstinb_C{
	meta:
		description = "TrojanDownloader:BAT/Pstinb.C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 78 70 6c 6f 72 65 72 31 5f 4c 6f 61 64 } //01 00  Explorer1_Load
		$a_01_1 = {70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2e 00 70 00 68 00 70 00 3f 00 69 00 3d 00 73 00 45 00 43 00 79 00 4c 00 67 00 63 00 42 00 } //01 00  pastebin.com/download.php?i=sECyLgcB
		$a_01_2 = {55 00 73 00 65 00 72 00 73 00 5c 00 25 00 75 00 73 00 65 00 72 00 70 00 72 00 6f 00 66 00 69 00 6c 00 65 00 25 00 5c 00 4d 00 75 00 73 00 69 00 63 00 5c 00 69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 } //00 00  Users\%userprofile%\Music\iexplore.exe
	condition:
		any of ($a_*)
 
}