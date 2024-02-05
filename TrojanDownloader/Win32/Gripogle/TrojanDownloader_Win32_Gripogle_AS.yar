
rule TrojanDownloader_Win32_Gripogle_AS{
	meta:
		description = "TrojanDownloader:Win32/Gripogle.AS,SIGNATURE_TYPE_CMDHSTR_EXT,0e 00 0d 00 0b 00 00 0a 00 "
		
	strings :
		$a_00_0 = {5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //03 00 
		$a_02_1 = {73 00 74 00 61 00 72 00 74 00 20 00 90 02 08 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 69 00 70 00 6c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 6f 00 72 00 67 00 2f 00 90 00 } //03 00 
		$a_02_2 = {73 00 74 00 61 00 72 00 74 00 20 00 90 02 08 68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 69 00 70 00 6c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 6f 00 72 00 67 00 2f 00 90 00 } //01 00 
		$a_00_3 = {2f 00 31 00 64 00 48 00 34 00 38 00 37 00 } //01 00 
		$a_00_4 = {2f 00 31 00 4f 00 66 00 70 00 4a 00 } //01 00 
		$a_00_5 = {31 00 4d 00 7a 00 44 00 4e 00 36 00 } //01 00 
		$a_00_6 = {31 00 75 00 38 00 71 00 69 00 37 00 } //01 00 
		$a_00_7 = {31 00 71 00 42 00 38 00 69 00 37 00 } //01 00 
		$a_00_8 = {31 00 70 00 6e 00 50 00 65 00 37 00 } //01 00 
		$a_00_9 = {31 00 70 00 7a 00 50 00 65 00 37 00 } //01 00 
		$a_00_10 = {31 00 53 00 70 00 75 00 75 00 37 00 } //00 00 
	condition:
		any of ($a_*)
 
}