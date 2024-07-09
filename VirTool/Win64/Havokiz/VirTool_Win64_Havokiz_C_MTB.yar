
rule VirTool_Win64_Havokiz_C_MTB{
	meta:
		description = "VirTool:Win64/Havokiz.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {48 89 d1 48 89 c8 45 31 c0 44 0f b6 08 41 ff c0 48 83 c0 04 47 8a 0c 0c 44 88 48 fc 41 80 f8 04 ?? ?? 48 ff c1 49 39 cd ?? ?? 8a 4c 24 35 8a 44 24 31 88 4c 24 31 8a 4c 24 39 88 4c 24 35 8a 4c 24 3d 88 44 24 3d 8a 44 24 32 88 4c 24 39 8a 4c 24 3a 88 44 24 3a 8a 44 24 36 88 4c 24 32 8a 4c 24 3e 88 44 24 3e 8a 44 24 33 88 4c 24 36 8a 4c 24 3f 88 4c 24 33 8a 4c 24 3b 88 4c 24 3f 8a 4c 24 37 88 44 24 37 88 4c 24 3b 41 83 fe } //1
		$a_02_1 = {43 8a 34 02 45 8a 04 12 41 8a 14 02 43 8a 04 0a 45 89 d9 41 c1 e9 03 42 32 34 0b 41 89 f1 ?? ?? 83 fe 04 ?? ?? 47 8a 0c 0a 47 8a 04 02 41 8a 14 12 41 8a 04 02 44 32 09 44 32 41 01 41 ff c3 48 83 c1 04 32 51 fe 32 41 ff 44 88 49 1c 44 88 41 1d 88 51 1e 88 41 1f 41 83 fb 3c ?? ?? 5b 5e c3 } //1
		$a_02_2 = {56 31 c0 53 44 8a 04 02 44 88 04 01 44 8a 44 02 01 44 88 44 01 01 44 8a 44 02 02 44 88 44 01 02 44 8a 44 02 03 44 88 44 01 03 48 83 c0 04 48 83 f8 20 ?? ?? 41 bb 08 00 00 00 4c 8d } //1
		$a_02_3 = {8b 50 40 4c 8b 40 34 48 89 d1 49 8b 14 d0 48 85 d2 ?? ?? ff c1 89 48 40 ?? ?? c7 40 40 00 00 00 00 49 8b 10 ?? ?? 31 d2 ff c9 ?? ?? 4c 8b 60 34 31 ff 89 f8 49 83 3c c4 00 ?? ?? ff c7 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}