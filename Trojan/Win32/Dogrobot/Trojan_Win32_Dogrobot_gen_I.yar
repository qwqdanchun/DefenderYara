
rule Trojan_Win32_Dogrobot_gen_I{
	meta:
		description = "Trojan:Win32/Dogrobot.gen!I,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 48 30 8b 81 b0 00 00 00 8b 81 a8 00 00 00 33 db 8b 99 a4 00 00 00 83 fb 05 75 6c 0b c0 75 20 c7 05 90 01 04 6f 00 00 00 c7 05 90 01 04 e1 00 00 00 c7 05 90 01 04 18 00 00 00 eb 48 83 f8 01 75 20 90 00 } //01 00 
		$a_01_1 = {c7 45 d0 4b 65 53 65 c7 45 d4 72 76 69 63 c7 45 d8 65 44 65 73 c7 45 dc 63 72 69 70 c7 45 e0 74 6f 72 54 c7 45 e4 61 62 6c 65 c7 45 e8 00 00 00 00 8d 45 d0 50 ff 75 f0 e8 } //01 00 
		$a_01_2 = {81 3c 31 2e 72 73 72 75 33 83 7c 31 04 63 75 2c 8b 44 31 0c 89 45 8c 8b 44 31 14 89 45 88 8b 44 31 24 3d 60 00 00 e0 75 09 } //01 00 
		$a_01_3 = {c7 85 80 fe ff ff 5c 5c 2e 5c c7 85 84 fe ff ff 50 68 79 73 c7 85 88 fe ff ff 69 63 61 6c c7 85 8c fe ff ff 44 72 69 76 c7 85 90 fe ff ff 65 30 00 00 } //01 00 
		$a_01_4 = {8b 08 36 8a 5c 2e 08 02 d9 02 da 46 0f b6 d3 83 fe 04 8b 1c 97 89 18 89 0c 97 7c 02 33 f6 83 c0 04 ff 4d 0c 75 da } //00 00 
	condition:
		any of ($a_*)
 
}