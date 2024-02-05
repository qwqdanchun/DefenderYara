
rule TrojanDownloader_Win32_Zlob_gen_AAC{
	meta:
		description = "TrojanDownloader:Win32/Zlob.gen!AAC,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 72 6f 6d 3d 50 2d 32 33 33 32 36 38 26 62 61 63 6b 75 72 6c 3d } //01 00 
		$a_01_1 = {3f 70 69 64 3d 67 38 34 32 33 32 39 } //01 00 
		$a_01_2 = {77 69 6e 38 37 72 6d 2e 64 6c 6c } //01 00 
		$a_01_3 = {5c 69 65 5c 72 65 61 6c 70 6c 61 79 65 72 31 30 5c 48 67 6a 2e 70 61 73 } //00 00 
	condition:
		any of ($a_*)
 
}