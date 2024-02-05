
rule Trojan_Win32_Zbot_SIBD16_MTB{
	meta:
		description = "Trojan:Win32/Zbot.SIBD16!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 0a 00 03 00 00 0a 00 "
		
	strings :
		$a_02_0 = {33 f6 8b 4c 24 90 01 01 8a 0c 0e 8a d1 c0 ea 90 01 01 80 e1 90 01 01 80 fa 90 01 01 0f 9e c3 fe cb 80 e3 90 01 01 80 c3 90 01 01 02 da 80 f9 90 01 01 0f 9e c2 fe ca 80 e2 90 01 01 80 c2 90 01 01 02 d1 88 18 88 50 01 46 83 c0 90 01 01 83 fe 90 01 01 72 90 00 } //05 00 
		$a_02_1 = {8b 10 8b f2 c1 ee 90 01 01 33 f2 69 f6 90 01 04 03 f1 89 70 90 01 01 83 c0 90 01 01 41 3d 90 01 04 7c 90 01 01 89 0d 90 01 04 5e 90 18 a1 90 1b 06 3d 90 01 04 0f 8c 90 01 04 90 01 02 33 d2 be 90 01 04 8b ca 8b 04 8d 90 01 04 33 04 8d 90 01 04 23 c6 33 04 8d 90 1b 0e 8b f8 d1 e8 83 e7 90 01 01 33 04 bd 90 01 04 33 04 8d 90 01 04 42 89 04 8d 90 1b 0e 81 fa 90 01 04 7c 90 01 01 81 fa 90 01 04 7d 90 01 01 8d 0c 95 90 1b 0e 8b 01 33 41 90 01 01 23 c6 33 01 8b f8 83 e7 90 01 01 8b 3c bd 90 1b 11 33 b9 90 01 04 d1 e8 33 f8 89 39 83 c1 90 01 01 81 f9 90 1b 04 7c 90 01 01 8b 0d 90 1b 04 a1 90 1b 0e 33 c1 23 c6 33 c1 8b c8 d1 e8 83 e1 90 01 01 33 04 8d 90 1b 11 90 01 01 33 05 90 01 04 90 01 01 a3 90 1b 04 33 c0 90 00 } //05 00 
		$a_02_2 = {33 c0 8b 0c 85 90 01 04 40 a3 90 01 04 8b c1 c1 e8 90 01 01 33 c8 8b c1 25 90 01 04 c1 e0 90 01 01 33 c8 8b c1 25 90 01 04 c1 e0 90 01 01 33 c8 8b c1 c1 e8 90 01 01 33 c1 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}