
rule TrojanDownloader_Win32_Plingky_C{
	meta:
		description = "TrojanDownloader:Win32/Plingky.C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {56 4d 77 61 72 65 90 02 04 69 6e 73 74 61 6c 6c 5f 63 6f 6e 66 69 67 2e 74 6d 70 90 00 } //01 00 
		$a_01_1 = {76 09 8b c7 80 36 02 46 48 75 f9 6a 66 } //01 00 
		$a_01_2 = {77 6f 72 31 2c 31 37 34 31 3a 2c 61 6d 6f 38 33 30 3b 30 31 } //00 00 
	condition:
		any of ($a_*)
 
}