
rule Backdoor_Win32_Hupigon_CK{
	meta:
		description = "Backdoor:Win32/Hupigon.CK,SIGNATURE_TYPE_PEHSTR_EXT,07 00 05 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 61 73 73 69 76 65 20 4d 6f 64 65 20 28 31 32 37 2c 30 2c 30 2c 31 2c 25 64 2c 25 64 29 } //01 00  Passive Mode (127,0,0,1,%d,%d)
		$a_01_1 = {54 50 69 67 65 6f 6e 53 65 72 76 69 63 65 } //01 00  TPigeonService
		$a_01_2 = {5b 50 61 67 65 44 6f 77 6e 5d } //01 00  [PageDown]
		$a_01_3 = {50 69 67 65 6f 6e 5f 56 49 50 5f } //01 00  Pigeon_VIP_
		$a_01_4 = {54 56 69 64 65 6f 43 61 70 } //01 00  TVideoCap
		$a_01_5 = {50 58 46 32 30 30 30 2e 76 69 63 70 2e 6e 65 74 3a 38 30 38 30 } //01 00  PXF2000.vicp.net:8080
		$a_01_6 = {57 69 6e 64 6f 77 73 5f 72 65 6a 6f 69 63 65 } //03 00  Windows_rejoice
		$a_03_7 = {8b 45 f8 0f b6 78 04 6a 10 e8 90 01 03 ff 0f bf c0 89 45 f0 6a 14 e8 90 01 03 ff 0f bf c0 89 45 f4 68 90 90 00 00 00 90 00 } //01 00 
		$a_03_8 = {c7 45 e0 20 00 00 00 8d 45 e0 50 e8 90 01 04 8b 45 e8 c1 e8 90 01 01 33 d2 52 50 8d 45 dc e8 90 01 04 8b 55 dc 8b c3 b9 90 00 } //01 00 
		$a_03_9 = {88 5d fd c6 45 fe 3a c6 45 ff 00 8d 45 fd 50 e8 90 01 04 8b f0 83 fe 02 75 22 90 09 06 00 0f 84 ff 00 00 00 90 00 } //01 00 
		$a_03_10 = {40 4a 75 f9 33 c0 55 68 90 01 1b 6a 11 6a 02 6a 02 e8 90 09 03 00 c6 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}