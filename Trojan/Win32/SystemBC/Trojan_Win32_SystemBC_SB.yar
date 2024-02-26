
rule Trojan_Win32_SystemBC_SB{
	meta:
		description = "Trojan:Win32/SystemBC.SB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 10 27 00 00 e8 90 01 04 8d 90 01 01 72 fe ff ff 50 68 02 02 00 00 e8 90 01 04 85 c0 75 90 01 01 c7 90 04 01 03 80 2d 8f 90 01 08 8d 90 01 01 60 fe ff ff 50 6a ff 68 90 01 04 e8 90 01 04 8d 90 01 01 60 fe ff ff 50 e8 90 01 04 89 90 04 01 03 80 2d 8f 90 01 04 ff 90 04 01 03 b0 2d bf 90 01 04 ff 90 04 01 03 b0 2d bf 90 01 04 e8 90 01 04 85 c0 75 90 01 01 81 90 04 01 03 b0 2d bf 90 01 08 75 90 01 01 c7 90 04 01 03 80 2d 8f 90 01 08 eb 90 00 } //01 00 
		$a_03_1 = {55 8b ec 81 c4 d0 fe ff ff 53 57 56 8d 90 01 01 f4 2b cc 51 8d 90 01 01 90 17 10 01 01 01 01 01 01 01 01 01 01 01 01 01 01 01 01 04 14 24 34 44 54 64 74 84 94 a4 b4 c4 d4 e4 f4 10 50 e8 90 01 04 6a 06 6a 01 6a 02 e8 90 01 04 89 90 04 01 03 40 2d 4f 90 01 01 6a 04 ff 90 04 01 03 70 2d 7f 90 01 01 8d 90 01 01 fc 50 e8 90 01 04 c7 90 04 01 03 80 2d 8f 90 01 04 01 00 00 00 6a 04 8d 90 01 01 d4 fe ff ff 50 6a 01 6a 06 ff 90 04 01 03 70 2d 7f 90 01 01 e8 90 01 04 8d 90 01 01 d8 fe ff ff 50 6a ff ff 90 04 01 03 70 2d 7f 90 01 01 e8 90 01 04 6a 02 8d 90 01 01 d8 fe ff ff 50 e8 90 01 04 89 90 04 01 03 40 2d 4f 90 01 01 8b 90 04 01 03 40 2d 4f 90 01 01 3d 00 00 01 00 76 90 01 01 50 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}