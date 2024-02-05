
rule Worm_Win32_Nuwar_JZ{
	meta:
		description = "Worm:Win32/Nuwar.JZ,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b 45 f8 8b 40 14 89 45 d4 8b 45 f8 8b 40 10 89 45 d8 90 02 40 83 7d d4 00 75 90 02 60 c7 45 ec b9 79 37 9e 90 02 40 69 c0 b9 79 37 9e 90 00 } //0a 00 
		$a_00_1 = {8b 45 e4 c1 e8 05 8b 4d f0 c1 e1 02 33 c1 8b 4d f0 c1 e9 03 8b 55 e4 c1 e2 04 33 ca 03 c1 8b 4d e0 33 4d f0 8b 55 f4 83 e2 03 33 55 dc 8b 75 f8 8b 14 96 33 55 e4 03 ca 33 c1 8b 4d f4 8b 55 d8 8b 0c 8a 2b c8 8b 45 f4 8b 55 d8 89 0c 82 8b 45 f4 8b 4d d8 8b 04 81 89 45 f0 } //01 00 
		$a_00_2 = {42 01 47 65 74 43 75 72 72 65 6e 74 50 72 6f 63 65 73 73 00 55 02 4c 6f 61 64 4c 69 62 72 61 72 79 57 00 00 a0 01 47 65 74 50 72 6f 63 41 64 64 72 65 73 73 00 00 7f 01 47 65 74 4d 6f 64 75 6c 65 48 61 6e 64 6c 65 41 00 00 4b 45 52 4e 45 4c 33 32 2e 64 6c 6c 00 00 00 00 00 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}