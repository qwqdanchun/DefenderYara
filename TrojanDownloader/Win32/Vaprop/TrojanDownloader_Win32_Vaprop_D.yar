
rule TrojanDownloader_Win32_Vaprop_D{
	meta:
		description = "TrojanDownloader:Win32/Vaprop.D,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_11_0 = {00 62 00 6e 00 35 00 36 00 37 00 50 00 61 00 74 00 68 00 41 00 01 } //00 4c 
		$a_7b_1 = {31 00 66 00 34 00 64 00 65 00 33 00 37 00 30 00 2d } //00 62 
		$a_00_3 = {2d 00 31 00 31 00 64 00 31 00 2d 00 64 00 36 00 32 00 37 00 2d 00 30 00 30 00 61 00 30 00 63 00 39 00 31 00 65 00 65 00 64 00 62 00 61 00 7d 00 01 00 10 11 00 33 36 30 89 68 6b eb 9e f6 dd a4 21 57 00 00 00 00 5d 04 00 00 98 56 02 80 5c 2f 00 00 99 56 02 80 00 00 01 00 32 00 19 00 52 61 6e 73 6f 6d 3a 57 } //69 6e 
	condition:
		any of ($a_*)
 
}