
rule HackTool_Win64_Mimikatz_gen_H{
	meta:
		description = "HackTool:Win64/Mimikatz.gen!H,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {41 b9 22 00 00 00 48 89 44 24 ?? 33 d2 48 8b cb c6 44 24 ?? 00 c7 44 24 ?? 00 01 00 00 ff 15 ?? ?? ?? ?? 8b f8 85 c0 } //1
		$a_03_1 = {ba 03 c1 22 00 3b c2 0f 87 ?? ?? ?? ?? 0f 84 ?? ?? ?? ?? ba 43 c0 22 00 3b c2 0f 87 ?? ?? ?? ?? 0f 84 ?? ?? ?? ?? 2d 03 c0 22 00 0f 84 ?? ?? ?? ?? 83 e8 04 } //1
		$a_03_2 = {48 8b d1 41 b8 69 77 69 6b 33 c9 ff 15 ?? ?? ?? ?? 48 89 45 00 } //1
		$a_03_3 = {ba 69 77 69 6b 48 8b cf ff 15 ?? ?? ?? ?? 8b de } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}
rule HackTool_Win64_Mimikatz_gen_H_2{
	meta:
		description = "HackTool:Win64/Mimikatz.gen!H,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {ba 0b 00 00 00 ff 15 ?? ?? ?? ?? 85 c0 0f 84 ?? ?? ?? ?? 48 8b 4c 24 ?? 48 8d 44 24 ?? 45 33 c9 48 89 44 24 ?? 48 83 64 24 ?? 00 83 64 24 ?? 00 48 83 64 24 ?? 00 83 64 24 ?? 00 41 8d 51 02 45 33 c0 ff 15 } //1
		$a_03_1 = {41 b8 58 1b 00 00 66 41 3b c0 73 ?? 48 8d ?? ?? ?? ?? ?? eb ?? b9 40 1f 00 00 66 3b c1 73 ?? 48 8d ?? ?? ?? ?? ?? eb ?? b9 b8 24 00 00 } //1
		$a_03_2 = {45 8d 41 04 ff 15 ?? ?? ?? ?? 41 3b c6 0f 84 ?? ?? ?? ?? 8b 54 24 ?? bf 40 00 00 00 48 c1 e2 04 8b cf ff 15 } //1
		$a_01_3 = {6c 73 61 73 72 76 21 } //1 lsasrv!
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}