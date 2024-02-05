
rule TrojanDownloader_Win32_Nitedrem_E{
	meta:
		description = "TrojanDownloader:Win32/Nitedrem.E,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 64 00 6f 00 77 00 6e 00 2e 00 61 00 73 00 70 00 3f 00 61 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 26 00 75 00 3d 00 } //01 00 
		$a_01_1 = {00 00 66 00 75 00 63 00 6b 00 69 00 6e 00 67 00 00 00 } //01 00 
		$a_01_2 = {2e 00 63 00 6c 00 6f 00 75 00 64 00 66 00 72 00 6f 00 6e 00 74 00 2e 00 6e 00 65 00 74 00 2f 00 70 00 70 00 69 00 32 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_3 = {00 00 30 00 33 00 38 00 35 00 42 00 31 00 36 00 39 00 42 00 34 00 46 00 42 00 34 00 36 00 44 00 46 00 39 00 33 00 41 00 31 00 34 00 41 00 46 00 33 00 39 00 46 00 34 00 35 00 46 00 34 00 30 00 42 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}