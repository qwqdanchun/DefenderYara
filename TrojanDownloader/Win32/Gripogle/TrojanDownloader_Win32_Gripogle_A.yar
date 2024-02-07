
rule TrojanDownloader_Win32_Gripogle_A{
	meta:
		description = "TrojanDownloader:Win32/Gripogle.A,SIGNATURE_TYPE_CMDHSTR_EXT,06 00 05 00 0d 00 00 01 00 "
		
	strings :
		$a_00_0 = {20 00 63 00 65 00 72 00 74 00 72 00 65 00 71 00 20 00 } //01 00   certreq 
		$a_00_1 = {20 00 63 00 65 00 72 00 74 00 72 00 65 00 71 00 2e 00 65 00 78 00 65 00 20 00 } //01 00   certreq.exe 
		$a_00_2 = {20 00 2d 00 70 00 6f 00 73 00 74 00 20 00 } //01 00   -post 
		$a_00_3 = {20 00 2d 00 63 00 6f 00 6e 00 66 00 69 00 67 00 20 00 } //02 00   -config 
		$a_00_4 = {2f 00 2f 00 69 00 70 00 6c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 6f 00 72 00 67 00 2f 00 } //01 00  //iplogger.org/
		$a_00_5 = {2f 00 31 00 64 00 48 00 34 00 38 00 37 00 } //01 00  /1dH487
		$a_00_6 = {2f 00 31 00 4f 00 66 00 70 00 4a 00 } //01 00  /1OfpJ
		$a_00_7 = {31 00 4d 00 7a 00 44 00 4e 00 36 00 } //01 00  1MzDN6
		$a_00_8 = {31 00 75 00 38 00 71 00 69 00 37 00 } //01 00  1u8qi7
		$a_00_9 = {31 00 71 00 42 00 38 00 69 00 37 00 } //01 00  1qB8i7
		$a_00_10 = {31 00 70 00 6e 00 50 00 65 00 37 00 } //01 00  1pnPe7
		$a_00_11 = {31 00 70 00 7a 00 50 00 65 00 37 00 } //01 00  1pzPe7
		$a_00_12 = {31 00 53 00 70 00 75 00 75 00 37 00 } //00 00  1Spuu7
	condition:
		any of ($a_*)
 
}