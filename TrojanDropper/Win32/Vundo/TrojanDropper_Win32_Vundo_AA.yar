
rule TrojanDropper_Win32_Vundo_AA{
	meta:
		description = "TrojanDropper:Win32/Vundo.AA,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 09 00 00 "
		
	strings :
		$a_01_0 = {45 00 6c 00 65 00 76 00 61 00 74 00 69 00 6f 00 6e 00 3a 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 21 00 6e 00 65 00 77 00 3a 00 7b 00 } //1 Elevation:Administrator!new:{
		$a_01_1 = {22 4c 6f 61 64 41 70 70 49 6e 69 74 5f 44 4c 4c 73 22 3d 64 77 6f 72 64 3a 30 30 30 30 30 30 30 31 } //1 "LoadAppInit_DLLs"=dword:00000001
		$a_01_2 = {5c 49 74 65 72 72 61 00 } //1 䥜整牲a
		$a_01_3 = {5c 41 64 64 49 74 65 72 72 61 00 } //1
		$a_01_4 = {5c 30 31 30 35 2e 74 6d 70 00 } //1 ぜ〱⸵浴p
		$a_01_5 = {5c 54 30 33 65 6d 70 30 33 2e 72 65 67 00 } //1 呜㌰浥ば⸳敲g
		$a_01_6 = {5c 54 30 34 65 6d 70 30 34 2e 72 65 67 00 } //1 呜㐰浥ば⸴敲g
		$a_03_7 = {8b 55 f8 8b 45 f0 8a 88 ?? ?? ?? ?? 88 8a ?? ?? ?? ?? 8b 55 f8 0f be 82 ?? ?? ?? ?? 83 f8 5c 75 1b 8b 4d f8 83 c1 01 89 4d f8 8b 55 f8 8b 45 f0 8a 88 ?? ?? ?? ?? 88 8a ?? ?? ?? ?? 8b 55 f8 83 c2 01 89 55 f8 eb a0 } //2
		$a_01_8 = {0f c8 89 45 f8 c7 45 ec b9 79 37 9e 8b 4d ec 0f af 4d f4 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_03_7  & 1)*2+(#a_01_8  & 1)*1) >=6
 
}