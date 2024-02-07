
rule TrojanDownloader_Win32_Gripogle_B{
	meta:
		description = "TrojanDownloader:Win32/Gripogle.B,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 00 74 00 61 00 72 00 74 00 2d 00 62 00 69 00 74 00 73 00 74 00 72 00 61 00 6e 00 73 00 66 00 65 00 72 00 20 00 } //03 00  start-bitstransfer 
		$a_02_1 = {20 00 2d 00 73 00 6f 00 75 00 72 00 63 00 65 00 20 00 90 02 08 68 00 74 00 74 00 70 00 90 02 10 69 00 70 00 6c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 6f 00 72 00 67 00 90 00 } //01 00 
		$a_00_2 = {2f 00 31 00 64 00 48 00 34 00 38 00 37 00 } //01 00  /1dH487
		$a_00_3 = {2f 00 31 00 4f 00 66 00 70 00 4a 00 } //01 00  /1OfpJ
		$a_00_4 = {2f 00 31 00 4d 00 7a 00 44 00 4e 00 36 00 } //00 00  /1MzDN6
	condition:
		any of ($a_*)
 
}