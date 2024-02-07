
rule PWS_Win32_Fignotok_A{
	meta:
		description = "PWS:Win32/Fignotok.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b c6 33 d2 b9 05 00 00 00 8b fb f7 f1 8a 44 1e 01 83 c9 ff fe c2 32 d0 33 c0 88 14 1e 46 f2 ae f7 d1 83 c1 fe 3b f1 72 d7 } //01 00 
		$a_01_1 = {be 05 00 00 00 f7 f6 83 c2 01 0f be d2 33 ca 8b 45 08 03 45 fc 88 08 eb bb } //01 00 
		$a_03_2 = {6a 05 8b c6 33 d2 59 f7 f1 57 fe c2 32 54 3e 01 88 14 3e 46 e8 90 01 04 48 59 3b f0 72 e1 90 00 } //01 00 
		$a_03_3 = {3d a7 00 00 00 0f 85 90 01 02 00 00 90 02 0a ff 75 fc 90 00 } //01 00 
		$a_01_4 = {0f 31 8b d8 0f 31 2b c3 50 83 f8 01 74 f2 58 3d 00 02 00 00 72 09 c7 45 fc 01 00 00 00 eb 07 } //01 00 
		$a_01_5 = {64 a1 30 00 00 00 83 c0 68 3e 8b 00 83 f8 70 74 09 c7 45 fc 00 00 00 00 eb 07 } //01 00 
		$a_01_6 = {c7 45 ec 1d a7 0d ba 74 3b 83 fa 10 75 02 33 d2 0f be 84 35 48 ff ff ff 0f af 45 ec 31 44 15 b4 8b 45 ec 69 c0 8f bc 00 00 89 45 ec 83 c2 04 8d bd 48 ff ff ff 83 c9 ff 33 c0 46 f2 ae f7 d1 49 3b f1 72 c5 } //01 00 
		$a_03_7 = {75 48 80 3e 68 0f 85 90 01 02 00 00 80 7e 02 74 0f 85 90 01 02 00 00 80 7e 04 74 0f 85 90 01 02 00 00 80 7e 06 70 0f 85 90 00 } //01 00 
		$a_01_8 = {3f 61 63 74 69 6f 6e 3d 61 64 64 26 61 3d } //00 00  ?action=add&a=
	condition:
		any of ($a_*)
 
}