
rule TrojanDownloader_Win32_Retkwark_A{
	meta:
		description = "TrojanDownloader:Win32/Retkwark.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 04 00 "
		
	strings :
		$a_01_0 = {77 00 2e 00 61 00 70 00 6f 00 73 00 74 00 61 00 72 00 2e 00 62 00 7a 00 2f 00 61 00 72 00 5f 00 74 00 6f 00 2e 00 65 00 78 00 65 00 } //04 00  w.apostar.bz/ar_to.exe
		$a_01_1 = {77 00 77 00 2e 00 69 00 73 00 6c 00 61 00 6d 00 69 00 63 00 73 00 74 00 75 00 64 00 69 00 65 00 73 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 61 00 72 00 5f 00 74 00 6f 00 2e 00 65 00 78 00 65 00 } //02 00  ww.islamicstudies.info/ar_to.exe
		$a_01_2 = {77 00 77 00 2e 00 64 00 6a 00 6d 00 61 00 72 00 74 00 69 00 6e 00 2e 00 63 00 7a 00 2f 00 66 00 6f 00 74 00 6f 00 } //01 00  ww.djmartin.cz/foto
		$a_01_3 = {61 00 72 00 5f 00 69 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  ar_in.exe
		$a_01_4 = {61 00 72 00 5f 00 74 00 6f 00 2e 00 65 00 78 00 65 00 } //00 00  ar_to.exe
		$a_00_5 = {87 10 00 00 } //b1 9e 
	condition:
		any of ($a_*)
 
}