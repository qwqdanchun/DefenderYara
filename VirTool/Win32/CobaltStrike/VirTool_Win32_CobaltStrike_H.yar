
rule VirTool_Win32_CobaltStrike_H{
	meta:
		description = "VirTool:Win32/CobaltStrike.H,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {8b 5d 08 c7 44 24 10 04 00 00 00 c7 44 24 0c 00 10 00 00 8d 87 80 00 00 00 89 44 24 08 c7 44 24 04 00 00 00 00 89 1c 24 ff 15 90 01 04 83 ec 14 89 c6 8d 45 e0 89 44 24 10 8b 45 1c 89 7c 24 0c 89 74 24 04 89 1c 24 89 44 24 08 ff 15 90 01 04 8b 45 e0 83 ec 14 39 f8 75 90 00 } //1
		$a_01_1 = {c7 44 24 24 65 00 00 00 c7 44 24 20 70 00 00 00 c7 44 24 1c 69 00 00 00 c7 44 24 18 70 00 00 00 } //1
		$a_01_2 = {25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 4d 53 53 45 2d 25 64 2d 73 65 72 76 65 72 } //1 %c%c%c%c%c%c%c%c%cMSSE-%d-server
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule VirTool_Win32_CobaltStrike_H_2{
	meta:
		description = "VirTool:Win32/CobaltStrike.H,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {8b 75 0c c7 44 24 0c 04 00 00 00 c7 44 24 08 00 30 00 00 c7 04 24 00 00 00 00 89 74 24 04 ff 15 } //1
		$a_03_1 = {c7 44 24 08 20 00 00 00 ff 15 90 01 04 83 ec 10 89 5c 24 0c c7 44 24 14 00 00 00 00 c7 44 24 10 00 00 00 00 c7 44 24 08 90 01 04 c7 44 24 04 00 00 00 00 c7 04 24 00 00 00 00 ff 15 90 00 } //1
		$a_01_2 = {c7 44 24 24 65 00 00 00 c7 44 24 20 70 00 00 00 c7 44 24 1c 69 00 00 00 c7 44 24 18 70 00 00 00 } //1
		$a_01_3 = {25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 4d 53 53 45 2d 25 64 2d 73 65 72 76 65 72 } //1 %c%c%c%c%c%c%c%c%cMSSE-%d-server
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}