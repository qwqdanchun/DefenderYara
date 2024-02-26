
rule Trojan_Win32_TrueBot_ZZ{
	meta:
		description = "Trojan:Win32/TrueBot.ZZ,SIGNATURE_TYPE_PEHSTR_EXT,ffffff91 01 ffffff91 01 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {f1 d5 00 fa 4c 62 cc f4 0f 0b } //64 00 
		$a_01_1 = {6e 3d 25 73 26 6f 3d 25 73 26 61 3d 25 64 26 75 3d 25 73 26 70 3d 25 73 26 64 3d 25 73 } //64 00  n=%s&o=%s&a=%d&u=%s&p=%s&d=%s
		$a_03_2 = {8d 45 fc 50 6a 64 6a 00 90 03 01 02 e8 ff 15 90 00 } //64 00 
		$a_03_3 = {8b 55 fc 52 8b 4a 10 8b 42 0c 89 85 90 01 01 ff ff ff 89 8d 90 01 01 ff ff ff 90 03 01 02 e8 ff 15 90 00 } //64 00 
		$a_03_4 = {68 18 01 00 00 8d 85 90 01 01 fe ff ff 6a 00 50 e8 90 00 } //00 00 
		$a_01_5 = {5d 04 00 00 28 58 05 80 5c 26 00 00 2a 58 05 80 00 00 01 00 03 00 10 00 a3 01 44 61 72 6b 53 74 65 61 6c 65 72 2e 41 44 00 00 01 40 05 82 34 00 04 00 67 16 00 00 a6 81 fa 2f bc 1c f8 df 0a bc 9e a4 b7 29 01 00 01 20 e5 5c 9b 56 5d 04 00 00 2a 58 05 80 5c 27 00 00 36 58 05 80 00 00 01 00 08 00 11 00 ac 21 46 6f 72 6d 42 6f 6f 6b 2e 4b 48 21 4d 54 42 00 00 01 40 05 82 70 00 04 00 7e 15 00 00 78 28 ad cf d2 a6 09 2d cd e9 91 5d 8a } //86 6d 
	condition:
		any of ($a_*)
 
}