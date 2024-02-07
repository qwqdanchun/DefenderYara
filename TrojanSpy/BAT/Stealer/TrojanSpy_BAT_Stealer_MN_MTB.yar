
rule TrojanSpy_BAT_Stealer_MN_MTB{
	meta:
		description = "TrojanSpy:BAT/Stealer.MN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 26 08 28 90 01 03 0a 0d 28 90 01 03 0a 09 6f 90 01 03 0a 13 04 72 90 01 03 70 72 90 01 01 01 00 70 72 90 01 01 01 00 70 6f 90 01 03 0a 28 90 01 03 0a 13 05 28 90 01 03 0a 11 05 6f 90 01 03 0a 13 06 07 28 90 01 03 0a 13 07 28 90 01 03 0a 11 07 6f 90 01 03 0a 13 08 73 90 01 03 0a 11 08 28 90 01 03 0a 13 09 1f 2c 8d 90 01 01 00 00 01 25 d0 90 01 03 04 28 90 01 03 0a 13 0a 28 90 01 03 0a 11 0a 6f 90 01 03 0a 13 0b 06 11 04 6f 90 01 03 0a 13 0c 19 8d 90 01 01 00 00 01 13 26 11 26 16 90 00 } //01 00 
		$a_01_1 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 72 00 65 00 67 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  C:\Windows\regedit.exe
		$a_01_2 = {47 65 74 52 61 6e 64 6f 6d 41 6c 70 68 61 4e 75 6d 65 72 69 63 } //01 00  GetRandomAlphaNumeric
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_5 = {52 65 70 6c 61 63 65 } //00 00  Replace
	condition:
		any of ($a_*)
 
}