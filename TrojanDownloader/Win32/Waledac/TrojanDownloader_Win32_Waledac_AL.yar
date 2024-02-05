
rule TrojanDownloader_Win32_Waledac_AL{
	meta:
		description = "TrojanDownloader:Win32/Waledac.AL,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {83 f8 02 72 0d 8b 4b 0c ba 4d 5a 00 00 66 39 11 75 bf 2b 43 10 } //01 00 
		$a_01_1 = {8b 4d e4 81 b9 d8 01 00 00 33 27 00 00 74 } //01 00 
		$a_01_2 = {62 61 64 20 61 6c 6c 6f 63 61 74 69 6f 6e 00 00 65 78 70 6c 6f 72 65 72 2e 65 78 65 00 00 00 00 57 53 41 53 6f 63 6b 65 74 41 } //01 00 
		$a_03_3 = {74 65 6d 70 00 00 00 00 2e 65 78 65 00 00 00 00 2e 00 00 00 2f 90 02 30 2e 65 78 65 90 02 04 47 45 54 20 00 00 00 00 3f 00 00 00 20 48 54 54 50 2f 31 2e 31 90 00 } //00 00 
		$a_00_4 = {80 10 00 } //00 60 
	condition:
		any of ($a_*)
 
}