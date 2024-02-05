
rule TrojanDownloader_Win32_Spycos_B{
	meta:
		description = "TrojanDownloader:Win32/Spycos.B,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 01 00 08 00 00 05 00 "
		
	strings :
		$a_03_0 = {8d 55 f8 b8 90 01 04 e8 90 01 04 8b 45 f8 e8 90 01 04 50 68 01 00 00 80 e8 90 00 } //05 00 
		$a_03_1 = {8d 55 ec b8 90 01 04 e8 90 01 04 8b 45 ec e8 90 01 04 50 68 01 00 00 80 e8 90 00 } //05 00 
		$a_03_2 = {66 3d 16 04 74 20 8d 95 24 fe ff ff b8 90 01 04 e8 90 01 04 8b 85 24 fe ff ff e8 90 00 } //05 00 
		$a_03_3 = {66 3d 16 04 74 1a 8d 55 90 01 01 b8 90 01 04 e8 90 01 04 8b 45 90 1b 00 e8 90 00 } //05 00 
		$a_03_4 = {b9 40 0d 03 00 5a e8 90 01 02 ff ff 84 c0 0f 84 90 01 02 00 00 90 02 20 33 c9 b2 01 90 00 } //01 00 
		$a_03_5 = {8b 55 ac 8b c3 8b 08 ff 51 74 6a 00 8d 55 9c a1 90 01 04 e8 90 01 04 8b 45 9c 8d 55 a0 90 00 } //01 00 
		$a_03_6 = {74 e8 8d 45 f4 50 8b 85 9c fc ff ff 50 90 09 16 00 68 e8 03 00 00 8b 85 9c fc ff ff 50 e8 90 01 04 3d 02 01 00 00 90 00 } //01 00 
		$a_03_7 = {22 20 2d 75 00 00 00 00 90 09 0e 00 3d 3d 00 00 00 00 ff ff ff ff 04 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}