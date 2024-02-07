
rule TrojanDownloader_Win32_VB_OB{
	meta:
		description = "TrojanDownloader:Win32/VB.OB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 00 78 00 7a 00 31 00 39 00 2e 00 63 00 6f 00 6d 00 } //01 00  .xz19.com
		$a_01_1 = {2f 00 61 00 76 00 74 00 76 00 2f 00 71 00 72 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  /avtv/qrn.exe
		$a_01_2 = {2f 00 61 00 76 00 74 00 76 00 2f 00 63 00 74 00 66 00 6d 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  /avtv/ctfmon.exe
		$a_01_3 = {2f 00 62 00 61 00 63 00 6b 00 75 00 70 00 2f 00 4b 00 75 00 6f 00 44 00 6f 00 75 00 53 00 65 00 74 00 75 00 70 00 33 00 38 00 2e 00 65 00 78 00 65 00 } //01 00  /backup/KuoDouSetup38.exe
		$a_03_4 = {40 00 2a 00 5c 00 41 00 46 00 3a 00 5c 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 5c 00 76 00 63 00 5c 00 90 02 10 50 00 72 00 6a 00 46 00 54 00 50 00 44 00 6f 00 77 00 6e 00 2e 00 76 00 62 00 70 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}