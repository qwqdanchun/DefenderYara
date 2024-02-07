
rule Trojan_Win32_Lokibot_C_MTB{
	meta:
		description = "Trojan:Win32/Lokibot.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {42 6f 72 6c 61 6e 64 } //01 00  Borland
		$a_03_1 = {6a 00 6a 00 e8 90 01 04 c7 05 90 01 08 90 90 90 90 a1 90 01 04 a3 90 01 04 90 90 a1 90 01 04 40 83 e0 07 8b 15 90 01 04 03 15 90 01 04 88 02 90 90 ff 05 90 01 04 81 3d 90 01 08 75 90 01 01 90 90 68 00 80 00 00 6a 00 a1 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Lokibot_C_MTB_2{
	meta:
		description = "Trojan:Win32/Lokibot.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c } //01 00  \Borland\Delphi\
		$a_02_1 = {64 ff 30 64 89 20 83 2d 90 01 03 00 01 0f 83 90 01 02 00 00 90 02 40 68 90 01 03 00 64 ff 30 64 89 20 90 00 } //01 00 
		$a_02_2 = {8b 45 08 03 45 f4 73 90 02 10 8a 00 88 45 fb 8a 45 fb 34 90 01 01 8b 55 08 03 55 f4 73 90 02 10 88 02 ff 45 f4 81 7d f4 90 01 04 75 90 00 } //01 00 
		$a_02_3 = {8b 45 08 03 45 f4 8a 00 88 45 fb 8a 45 fb 34 90 01 01 8b 55 08 03 55 f4 88 02 ff 45 f4 81 7d f4 90 01 04 75 dc ff 65 08 90 00 } //01 00 
		$a_02_4 = {8b 45 08 03 45 f8 73 90 02 10 c6 45 ff 90 02 20 8a 00 88 45 f7 90 01 01 8a 45 f7 32 45 ff 8b 55 ec 88 02 ff 45 f8 81 7d f8 90 01 04 75 90 00 } //01 00 
		$a_02_5 = {8b 45 08 03 45 f4 8a 00 88 45 f3 90 02 10 8a 45 f3 32 45 fb 8b 55 fc 88 02 ff 45 f4 81 7d f4 90 01 04 75 90 01 01 ff 65 08 90 0a 3f 00 c6 45 fb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}