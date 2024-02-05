
rule TrojanDownloader_Win32_Zlob_ANH{
	meta:
		description = "TrojanDownloader:Win32/Zlob.ANH,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 57 65 62 20 54 65 63 68 6e 6f 6c 6f 67 69 65 73 00 } //02 00 
		$a_03_1 = {bf 40 4b 4c 00 90 02 10 4e c1 ee 90 03 01 01 02 03 46 4f 75 90 00 } //01 00 
		$a_01_2 = {c7 44 24 68 43 72 65 00 4f 8d 64 24 00 8a 47 01 47 84 c0 75 f8 } //01 00 
		$a_01_3 = {c7 44 24 10 57 61 69 00 4f 8a 47 01 47 84 c0 75 f8 } //00 00 
	condition:
		any of ($a_*)
 
}