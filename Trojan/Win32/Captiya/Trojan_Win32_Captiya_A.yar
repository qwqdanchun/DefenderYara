
rule Trojan_Win32_Captiya_A{
	meta:
		description = "Trojan:Win32/Captiya.A,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 3a 5c 55 6d 6b 61 5c 4f 43 52 32 5c 4f 43 52 32 2e 70 61 73 } //05 00  C:\Umka\OCR2\OCR2.pas
		$a_02_1 = {8d 85 44 fe ff ff b9 90 01 04 8b 95 94 fe ff ff e8 90 01 02 f9 ff 8b 85 44 fe ff ff 50 6a 00 33 c9 b2 01 a1 90 01 04 e8 90 01 02 ff ff 8b 55 fc 8b 52 04 92 e8 90 01 02 fc ff 8d 45 e0 b9 90 01 04 8b 95 94 fe ff ff e8 90 01 02 f9 ff 8d 95 3c fe ff ff 8b 45 e0 e8 90 01 02 ff ff ff b5 3c fe ff ff 68 90 01 04 68 90 01 04 ff 75 e0 68 90 01 04 68 90 01 04 8d 85 40 fe ff ff ba 06 00 00 00 e8 90 01 02 f9 ff 8b 95 40 fe ff ff b8 90 01 04 e8 90 01 02 ff ff 8d 85 38 fe ff ff b9 90 01 04 8b 55 e0 e8 90 01 02 f9 ff 8b 95 38 fe ff ff b8 90 01 04 e8 90 01 02 ff ff 8d 85 88 fe ff ff e8 90 01 02 f9 ff 89 45 ec 83 7d ec 00 0f 84 2e ff ff ff 33 c0 5a 90 00 } //05 00 
		$a_02_2 = {8d 40 00 55 8b ec 83 c4 f4 53 8b d8 33 d2 8b 83 e4 0f 00 00 e8 90 01 02 fb ff 89 45 fc 8b 45 fc 89 43 04 ba 01 00 00 00 8b 83 e4 0f 00 00 e8 90 01 02 fb ff 2b 45 fc 89 45 f4 8b 83 e4 0f 00 00 8b 10 ff 52 20 89 45 f8 56 57 8b 7d fc 8b 4d f8 89 fe 03 7d f4 03 7d f4 03 7d f4 83 e9 07 0f 6f 3d 90 01 04 8b 55 f4 f7 da c1 ea 03 0f 6f 4c d7 f8 0f 6f 44 d6 f8 0f db cf 0f dc c1 0f 7f 44 d6 f8 4a 90 00 } //05 00 
		$a_02_3 = {8d 40 00 55 8b ec 6a 00 53 56 8b f2 8b d8 33 c0 55 68 90 01 04 64 ff 30 64 89 20 53 68 90 01 04 8d 45 fc 50 e8 90 01 02 ff ff 8b 45 fc 50 68 90 01 04 56 e8 90 01 02 ff ff 33 c0 5a 59 59 64 89 10 68 90 01 04 8d 45 fc e8 90 01 02 f9 ff c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}