
rule VirTool_Win32_Farkaz_A_MTB{
	meta:
		description = "VirTool:Win32/Farkaz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {4c 89 74 24 78 4c 8d 90 01 03 ba 90 01 04 48 8b cb ff 15 90 01 04 85 c0 0f 84 90 01 04 4c 39 74 24 78 0f 84 90 01 04 48 8d 90 01 05 e8 90 01 04 48 8b 4c 24 68 ff 15 90 01 04 85 c0 90 01 02 ff 15 90 01 04 8b d0 48 8d 90 00 } //1
		$a_03_1 = {c7 45 b0 01 00 00 00 48 8b 45 a8 48 89 45 b4 c7 45 bc 02 00 00 00 48 8d 90 01 05 e8 90 01 04 4c 89 74 24 28 4c 89 74 24 20 41 b9 10 00 00 00 4c 8d 90 01 02 33 d2 48 8b 4c 24 68 ff 15 90 01 04 85 c0 90 01 02 ff 15 90 01 04 8b d0 48 8d 90 00 } //1
		$a_03_2 = {4c 89 74 24 70 4c 8d 90 01 03 ba 02 00 00 00 48 8b cf ff 15 90 01 04 85 c0 0f 84 90 01 04 4c 39 74 24 70 0f 84 90 01 04 48 8d 90 01 05 e8 90 01 04 4c 89 74 24 68 48 8d 90 01 03 48 89 44 24 28 c7 44 24 20 01 00 00 00 41 b9 02 00 00 00 45 33 c0 ba ff 01 0f 00 48 8b 4c 24 70 ff 15 90 01 04 85 c0 0f 84 90 01 04 4c 39 74 24 68 0f 84 90 01 04 4c 89 75 a8 4c 8d 90 01 02 48 8d 90 01 05 33 c9 ff 15 90 01 04 85 c0 90 01 02 ff 15 90 01 04 8b d0 48 8d 90 00 } //1
		$a_03_3 = {8b 58 08 48 03 18 45 33 c0 33 d2 48 8d 90 01 05 ff 15 90 01 04 0f 57 c0 0f 11 45 80 8b cb 89 4d 80 ff 15 90 01 04 48 89 45 88 44 8b 45 80 48 8b d0 48 8d 90 01 05 ff 15 90 01 04 0f 57 c0 0f 11 45 98 4c 89 75 90 01 01 48 8d 90 01 05 e8 90 01 04 48 8d 90 01 02 48 89 44 24 30 44 89 74 24 28 4c 89 74 24 20 45 33 c9 45 33 c0 90 00 } //1
		$a_03_4 = {48 89 5c 24 08 48 89 74 24 10 48 89 7c 24 18 55 41 56 41 57 48 8d 90 01 06 48 81 ec f0 02 00 00 48 8b 05 e6 6c 00 00 48 33 c4 48 89 85 e0 01 00 00 45 33 f6 44 89 74 24 40 48 8d 90 01 05 ff 15 90 01 04 48 85 c0 0f 84 90 01 04 48 8d 90 01 05 48 8b c8 ff 15 90 01 04 48 8b f0 48 85 c0 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}