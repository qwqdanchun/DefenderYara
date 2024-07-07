
rule Backdoor_Win32_Pirpi_E_dha{
	meta:
		description = "Backdoor:Win32/Pirpi.E!dha,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 09 00 00 "
		
	strings :
		$a_02_0 = {33 c0 66 8b 04 55 90 01 04 8b f0 33 d2 66 8b 15 90 01 04 33 f2 81 c6 90 00 } //1
		$a_02_1 = {33 d2 66 8b 14 5d 90 01 04 f3 ab 8b 0d 90 01 04 66 8b 04 5d 90 01 04 81 e1 ff ff 00 00 8d 7c 24 0c 33 d1 33 c1 90 00 } //1
		$a_02_2 = {33 c0 8d 7c 24 0c 33 d2 66 8b 14 5d 90 01 04 f3 ab 8b 0d 90 01 04 66 8b 04 5d 90 01 04 81 e1 ff ff 00 00 8d 7c 24 0c 90 00 } //1
		$a_02_3 = {8b 55 0c 03 55 fc 8b 45 fc 8a 0a 32 4c 05 90 01 01 8b 55 0c 03 55 fc 88 0a 90 00 } //1
		$a_00_4 = {8d 4c 24 0c 53 8a 5c 24 90 01 01 8b c6 2b ce 8b fd 8a 14 01 32 d3 30 10 88 14 01 } //1
		$a_02_5 = {51 6a 66 e8 90 01 04 83 c4 0c 8d 7d 90 01 01 ba 90 01 04 83 c9 ff 33 c0 f2 ae f7 d1 2b f9 90 00 } //1
		$a_02_6 = {c7 45 fc 01 00 00 00 0f be 45 08 89 45 f4 8b 4d f4 89 4d f0 83 6d f0 01 83 7d f0 00 74 90 01 01 83 6d f0 01 83 7d f0 00 90 00 } //1
		$a_02_7 = {83 ec 10 8b 44 24 14 8d 4c 24 00 89 44 24 00 33 c0 51 c7 44 24 08 90 01 02 40 00 89 44 24 0c 89 44 24 10 ff 15 90 01 02 40 00 83 c4 10 c3 90 00 } //1
		$a_02_8 = {6a 00 56 57 53 90 03 01 01 e8 ff 90 02 04 83 f8 ff 74 90 01 01 85 c0 74 90 01 01 2b f0 03 f8 85 f6 75 90 01 01 8b 90 02 03 5f 2b c6 5e 5d 5b c3 90 03 01 02 e8 ff 15 90 02 04 3d 4c 27 00 00 74 90 01 01 5f 5e 5d 90 03 02 03 33 c0 83 c8 ff 5b c3 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_00_4  & 1)*1+(#a_02_5  & 1)*1+(#a_02_6  & 1)*1+(#a_02_7  & 1)*1+(#a_02_8  & 1)*1) >=2
 
}