
rule Trojan_Win32_Setaclod_A{
	meta:
		description = "Trojan:Win32/Setaclod.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 00 54 00 45 00 58 00 32 00 30 00 2d 00 31 00 33 00 48 00 32 00 4f 00 4d 00 2d 00 31 00 32 00 30 00 32 00 } //01 00 
		$a_01_1 = {63 00 71 00 6f 00 6e 00 6a 00 62 00 63 00 75 00 68 00 71 00 6f 00 2e 00 7a 00 2e 00 76 00 79 00 78 00 2c 00 68 00 70 00 71 00 6f 00 2e 00 74 00 74 00 6d 00 64 00 70 00 64 00 6e 00 66 00 66 00 63 00 } //01 00 
		$a_03_2 = {8d 54 24 10 52 ff d3 83 f8 03 74 05 83 f8 02 75 0e 8b 4c 24 0c 8d 44 24 10 50 e8 90 01 04 b8 90 01 04 47 83 c6 04 8d 50 02 66 8b 08 83 c0 02 66 85 c9 75 f5 2b c2 d1 f8 3b f8 7c 90 00 } //01 00 
		$a_01_3 = {b8 56 55 55 55 f7 ee 8b c2 c1 e8 1f 03 c2 8d 14 40 8b c6 2b c2 75 08 ba ff ff 00 00 66 01 11 83 f8 01 75 04 66 83 01 03 83 f8 02 75 03 66 01 01 83 c1 02 46 66 83 39 00 75 c6 5e c3 } //00 00 
		$a_00_4 = {5d 04 00 } //00 2f 
	condition:
		any of ($a_*)
 
}