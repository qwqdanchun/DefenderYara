
rule TrojanDownloader_Win32_Filcout_A{
	meta:
		description = "TrojanDownloader:Win32/Filcout.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 05 00 "
		
	strings :
		$a_01_0 = {75 00 70 00 64 00 61 00 74 00 65 00 72 00 2d 00 31 00 33 00 34 00 31 00 30 00 31 00 36 00 36 00 36 00 39 00 2e 00 75 00 73 00 2d 00 65 00 61 00 73 00 74 00 2d 00 31 00 2e 00 65 00 6c 00 62 00 2e 00 61 00 6d 00 61 00 7a 00 6f 00 6e 00 61 00 77 00 73 00 2e 00 63 00 6f 00 6d 00 } //01 00  updater-1341016669.us-east-1.elb.amazonaws.com
		$a_01_1 = {73 00 6f 00 66 00 74 00 61 00 6e 00 67 00 6f 00 2e 00 63 00 6f 00 6d 00 2f 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 73 00 2f 00 25 00 73 00 3f 00 73 00 6f 00 75 00 72 00 63 00 65 00 3d 00 66 00 73 00 } //01 00  softango.com/extensions/%s?source=fs
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 46 00 69 00 6c 00 65 00 53 00 63 00 6f 00 75 00 74 00 } //01 00  Software\FileScout
		$a_01_3 = {2e 3f 41 56 64 6c 67 40 66 69 6c 65 73 63 6f 75 74 40 40 } //00 00  .?AVdlg@filescout@@
		$a_00_4 = {80 } //10 00 
	condition:
		any of ($a_*)
 
}