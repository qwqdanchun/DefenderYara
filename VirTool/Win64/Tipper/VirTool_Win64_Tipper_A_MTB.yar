
rule VirTool_Win64_Tipper_A_MTB{
	meta:
		description = "VirTool:Win64/Tipper.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {55 57 56 53 83 ec 90 01 01 8b 5c 24 54 8b 74 24 58 c7 44 24 2c 00 00 00 00 85 db 0f 94 c2 85 f6 0f 94 c0 08 c2 0f 85 bf 00 00 00 8b 44 24 50 85 c0 0f 84 b3 00 00 00 89 1c 24 e8 90 01 04 89 c5 85 c0 0f 84 a1 00 00 00 8b 44 24 50 c7 44 24 10 40 00 00 00 c7 44 24 0c 00 30 00 00 89 74 24 08 c7 44 24 04 00 00 00 00 89 04 24 ff 15 90 01 04 83 90 01 02 89 c7 85 c0 74 6f 89 44 24 04 8b 44 24 50 c7 44 24 10 00 00 00 00 89 74 24 0c 89 5c 24 08 89 04 24 ff 15 90 01 04 83 ec 90 01 01 85 c0 74 47 8d 90 01 03 8d 90 01 02 c7 44 24 14 00 00 00 00 89 44 24 18 8b 44 24 5c 89 54 24 0c 89 44 24 10 8b 44 24 50 c7 44 24 08 00 00 10 00 c7 44 24 04 00 00 00 00 89 04 24 ff 15 90 01 04 83 ec 1c eb 08 90 00 } //1
		$a_03_1 = {89 44 24 24 a1 90 01 04 89 c6 f3 a6 0f 97 c2 80 da 00 84 d2 0f 90 01 05 ff 15 90 01 04 89 44 24 34 8b 44 24 24 8d 90 01 02 a1 90 01 04 89 44 24 38 ff d0 89 7c 24 30 89 7c 24 08 bf 90 01 04 c7 44 24 04 00 00 00 00 89 04 24 ff 15 90 01 04 b9 00 01 00 00 89 c6 31 c0 83 ec 0c 90 00 } //1
		$a_03_2 = {8b 44 24 34 c7 44 24 04 00 00 00 00 c7 04 24 3a 04 00 00 89 44 24 08 ff 15 90 01 04 a3 90 01 04 83 ec 0c 85 c0 0f 84 90 01 04 8b 4c 24 30 c7 44 24 0c 00 00 00 00 89 74 24 04 89 4c 24 08 89 04 24 e8 90 01 04 a3 90 01 04 83 ec 10 85 c0 0f 84 90 01 04 c7 44 24 04 ff ff ff ff 89 04 24 ff 15 90 01 04 83 ec 08 8b 44 24 34 90 00 } //1
		$a_03_3 = {57 56 53 83 ec 20 e8 90 01 04 c7 44 24 14 00 00 00 00 c7 44 24 10 00 00 00 00 c7 44 24 0c 00 00 00 00 c7 44 24 08 06 00 00 00 c7 44 24 04 01 00 00 00 c7 04 24 02 00 00 00 ff 15 90 00 } //1
		$a_81_4 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}