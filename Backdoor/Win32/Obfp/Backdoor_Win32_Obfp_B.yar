
rule Backdoor_Win32_Obfp_B{
	meta:
		description = "Backdoor:Win32/Obfp.B,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 06 00 00 0a 00 "
		
	strings :
		$a_02_0 = {55 8b ec 81 ec 90 01 02 00 00 56 83 a5 58 fd ff ff 00 83 a5 88 fd ff ff 00 83 a5 5c fd ff ff 00 83 a5 90 01 02 ff ff 00 83 65 bc 00 c6 45 d4 75 c6 45 d5 73 c6 45 d6 65 c6 45 d7 72 c6 45 d8 33 c6 45 d9 32 c6 45 da 2e c6 45 db 64 c6 45 dc 6c c6 45 dd 6c c6 45 de 00 c6 85 90 01 02 ff ff 4d c6 85 90 01 02 ff ff 65 c6 85 90 01 02 ff ff 73 c6 85 90 01 02 ff ff 73 c6 85 90 01 02 ff ff 61 c6 85 90 01 02 ff ff 67 c6 85 90 01 02 ff ff 65 c6 85 90 01 02 ff ff 42 c6 85 90 01 02 ff ff 6f c6 85 90 01 02 ff ff 78 c6 85 90 01 02 ff ff 41 c6 85 90 01 02 ff ff 00 90 00 } //0a 00 
		$a_00_1 = {c6 85 60 fd ff ff 6b c6 85 61 fd ff ff 65 c6 85 62 fd ff ff 72 c6 85 63 fd ff ff 6e c6 85 64 fd ff ff 65 c6 85 65 fd ff ff 6c c6 85 66 fd ff ff 33 c6 85 67 fd ff ff 32 c6 85 68 fd ff ff 2e c6 85 69 fd ff ff 64 c6 85 6a fd ff ff 6c c6 85 6b fd ff ff 6c c6 85 6c fd ff ff 00 } //01 00 
		$a_02_2 = {8b 75 fc 8b 4d 0c 0f b6 36 c1 e1 08 0b ce c1 e0 08 ff 45 fc 89 4d 0c 90 02 03 8b f0 c1 ee 0b 0f af f1 39 75 0c 73 15 8b c6 be 00 08 00 00 2b f1 c1 ee 05 03 f1 89 90 02 02 03 d2 eb 90 00 } //01 00 
		$a_02_3 = {ff ff 00 c6 85 90 01 02 ff ff 43 c6 85 90 01 02 ff ff 72 c6 85 90 01 02 ff ff 79 c6 85 90 01 02 ff ff 70 c6 85 90 01 02 ff ff 74 c6 85 90 01 02 ff ff 41 c6 85 90 01 02 ff ff 63 c6 85 90 01 02 ff ff 71 c6 85 90 01 02 ff ff 75 c6 85 90 01 02 ff ff 69 c6 85 90 01 02 ff ff 72 c6 85 90 01 02 ff ff 65 c6 85 90 01 02 ff ff 43 c6 85 90 01 02 ff ff 6f c6 85 90 01 02 ff ff 6e c6 85 90 01 02 ff ff 74 c6 85 90 01 02 ff ff 65 c6 85 90 01 02 ff ff 78 c6 85 90 01 02 ff ff 74 c6 85 90 01 02 ff ff 41 90 00 } //01 00 
		$a_02_4 = {ff ff 00 c6 85 90 01 02 ff ff 43 c6 85 90 01 02 ff ff 72 c6 85 90 01 02 ff ff 79 c6 85 90 01 02 ff ff 70 c6 85 90 01 02 ff ff 74 c6 85 90 01 02 ff ff 44 c6 85 90 01 02 ff ff 65 c6 85 90 01 02 ff ff 72 c6 85 90 01 02 ff ff 69 c6 85 90 01 02 ff ff 76 c6 85 90 01 02 ff ff 65 c6 85 90 01 02 ff ff 4b c6 85 90 01 02 ff ff 65 c6 85 90 01 02 ff ff 79 90 00 } //01 00 
		$a_02_5 = {ff ff 00 c6 85 90 01 02 ff ff 43 c6 85 90 01 02 ff ff 72 c6 85 90 01 02 ff ff 79 c6 85 90 01 02 ff ff 70 c6 85 90 01 02 ff ff 74 c6 85 90 01 02 ff ff 44 c6 85 90 01 02 ff ff 65 c6 85 90 01 02 ff ff 63 c6 85 90 01 02 ff ff 72 c6 85 90 01 02 ff ff 79 c6 85 90 01 02 ff ff 70 c6 85 90 01 02 ff ff 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}