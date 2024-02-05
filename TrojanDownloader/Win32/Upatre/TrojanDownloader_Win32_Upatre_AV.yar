
rule TrojanDownloader_Win32_Upatre_AV{
	meta:
		description = "TrojanDownloader:Win32/Upatre.AV,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {25 73 25 73 00 25 73 5c 25 73 00 6f 70 65 6e } //01 00 
		$a_00_1 = {63 68 65 63 6b 69 70 2e 64 79 6e 64 6e 73 2e 6f 72 67 } //05 00 
		$a_03_2 = {be 20 00 00 00 ff 75 00 ff 90 01 05 85 c0 75 0f 50 68 4c 04 00 00 ff 90 01 05 4e 75 90 00 } //05 00 
		$a_01_3 = {b0 53 66 ab b0 45 66 ab b0 52 66 ab } //05 00 
		$a_01_4 = {ff 04 8a 66 b8 02 29 ff 55 28 } //00 00 
		$a_00_5 = {5d 04 00 00 c9 2c 03 } //80 5c 
	condition:
		any of ($a_*)
 
}