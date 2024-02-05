
rule TrojanDownloader_Win32_Neptaven_A{
	meta:
		description = "TrojanDownloader:Win32/Neptaven.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 03 00 "
		
	strings :
		$a_01_0 = {68 02 00 00 80 c7 45 d0 57 61 72 65 c7 45 d4 5c 4d 69 63 } //03 00 
		$a_03_1 = {33 c9 39 4c 24 08 7e 10 8b 44 24 04 03 c1 80 30 90 01 01 41 3b 4c 24 08 7c f0 c3 55 8b ec 83 ec 1c 90 00 } //01 00 
		$a_01_2 = {8d 45 d8 c7 45 d8 4f 70 65 6e 50 } //01 00 
		$a_01_3 = {40 00 2e 65 78 65 56 50 ff 15 } //01 00 
		$a_01_4 = {40 00 2e 64 6c 6c 56 50 ff 15 } //01 00 
		$a_01_5 = {53 68 80 00 00 00 6a 02 53 6a 01 68 00 00 00 40 50 } //00 00 
	condition:
		any of ($a_*)
 
}