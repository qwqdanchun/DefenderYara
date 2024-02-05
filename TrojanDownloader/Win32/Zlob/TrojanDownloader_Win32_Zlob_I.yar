
rule TrojanDownloader_Win32_Zlob_I{
	meta:
		description = "TrojanDownloader:Win32/Zlob.I,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {00 24 67 6f 2d 61 76 } //01 00 
		$a_00_1 = {41 64 64 72 35 73 4c 6f 61 64 4c } //01 00 
		$a_02_2 = {73 65 48 61 6e 64 90 01 01 48 74 74 70 90 00 } //01 00 
		$a_00_3 = {61 73 74 21 29 67 61 72 62 61 67 65 77 6f 72 6c 64 62 } //00 00 
	condition:
		any of ($a_*)
 
}