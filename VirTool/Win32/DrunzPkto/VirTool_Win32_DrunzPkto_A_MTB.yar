
rule VirTool_Win32_DrunzPkto_A_MTB{
	meta:
		description = "VirTool:Win32/DrunzPkto.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {55 8b ec 83 ec 1c a1 00 70 00 10 33 c5 89 45 fc 53 8d 90 01 02 8b d9 50 68 f8 51 00 10 6a 00 ff 15 90 01 04 85 c0 74 4f 8b 45 f4 6a 00 6a 00 89 45 e8 8b 45 f8 6a 10 89 45 ec 8d 90 01 02 50 6a 00 53 c7 45 e4 01 00 00 00 c7 45 f0 02 00 00 00 ff 15 90 01 04 85 c0 74 1e ff 15 90 01 04 3d 14 05 00 00 74 11 33 c0 5b 8b 4d fc 33 cd e8 90 01 04 8b e5 5d c3 90 00 } //1
		$a_03_1 = {50 68 f0 51 00 10 6a 00 6a 00 6a 00 6a 00 6a 00 6a 00 8d 90 01 06 50 ff 74 24 50 ff 15 90 01 04 85 c0 75 19 b8 06 90 01 03 5f 5e 8b 8c 24 b4 02 00 00 33 cc e8 90 01 04 8b e5 5d c3 90 00 } //1
		$a_03_2 = {50 53 ff 75 f4 57 56 ff 15 90 01 04 6a 00 85 c0 75 37 56 ff 15 90 01 04 68 e8 03 00 00 56 ff 15 90 01 04 56 8b 35 50 50 00 10 ff 90 01 01 ff 75 e8 ff 90 01 01 5f 5e b8 0d 00 00 00 5b 8b 4d fc 33 cd e8 90 01 04 8b e5 5d c3 90 00 } //1
		$a_03_3 = {55 8b ec 83 ec 1c a1 00 70 00 10 33 c5 89 45 fc f3 0f 6f 45 08 53 56 57 6a 40 68 00 10 00 00 8b da 66 0f 7e c6 53 6a 00 56 89 4d f4 f3 0f 7f 45 e4 c7 45 f8 00 00 00 00 ff 15 90 01 04 8b f8 85 ff 75 36 50 56 ff 15 90 01 04 68 e8 03 00 00 56 ff 15 90 01 04 56 8b 35 50 50 00 10 ff 90 01 01 ff 75 e8 ff 90 01 01 8d 90 01 02 5f 5e 5b 8b 4d fc 33 cd e8 90 01 04 8b e5 5d c3 90 00 } //1
		$a_03_4 = {6a 00 6a 00 57 6a 00 6a 00 56 ff 15 90 01 04 85 c0 75 38 50 56 ff 15 90 01 04 68 e8 03 00 00 56 ff 15 90 01 04 56 8b 35 50 50 00 10 ff 90 01 01 ff 75 e8 ff 90 01 01 5f 5e b8 0e 00 00 00 5b 8b 4d fc 33 cd e8 90 01 04 8b e5 5d c3 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}