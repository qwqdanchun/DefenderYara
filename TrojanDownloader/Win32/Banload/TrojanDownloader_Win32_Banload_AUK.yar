
rule TrojanDownloader_Win32_Banload_AUK{
	meta:
		description = "TrojanDownloader:Win32/Banload.AUK,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 03 00 "
		
	strings :
		$a_01_0 = {33 5d e4 3b 5d e8 7f 0b 81 c3 ff 00 00 00 } //01 00 
		$a_01_1 = {63 6f 6e 66 2e 78 6d 6c } //01 00  conf.xml
		$a_01_2 = {73 65 72 76 69 63 65 73 6e 62 2e 65 78 65 } //01 00  servicesnb.exe
		$a_01_3 = {6f 6c 2e 64 6c 6c } //01 00  ol.dll
		$a_01_4 = {41 70 70 6c 65 74 4d 6f 64 75 6c 65 41 63 74 69 76 61 74 65 } //00 00  AppletModuleActivate
	condition:
		any of ($a_*)
 
}