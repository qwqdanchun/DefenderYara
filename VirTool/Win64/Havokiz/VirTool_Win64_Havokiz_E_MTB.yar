
rule VirTool_Win64_Havokiz_E_MTB{
	meta:
		description = "VirTool:Win64/Havokiz.E!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {48 89 d1 48 89 c8 45 31 c0 44 0f b6 08 41 ff c0 48 83 c0 04 47 8a 0c 0c 44 88 48 fc 41 80 f8 04 90 01 02 48 ff c1 49 39 cd 90 01 02 8a 4c 24 35 8a 44 24 31 88 4c 24 31 8a 4c 24 39 88 4c 24 35 8a 4c 24 3d 88 44 24 3d 8a 44 24 32 88 4c 24 39 8a 4c 24 3a 88 44 24 3a 8a 44 24 36 88 4c 24 32 8a 4c 24 3e 88 44 24 3e 8a 44 24 33 88 4c 24 36 8a 4c 24 3f 88 4c 24 33 8a 4c 24 3b 88 4c 24 3f 8a 4c 24 37 88 44 24 37 88 4c 24 3b 41 83 fe 90 00 } //01 00 
		$a_02_1 = {43 8a 34 02 45 8a 04 12 41 8a 14 02 43 8a 04 0a 45 89 d9 41 c1 e9 03 42 32 34 0b 41 89 f1 90 01 02 83 fe 04 90 01 02 47 8a 0c 0a 47 8a 04 02 41 8a 14 12 41 8a 04 02 44 32 09 44 32 41 01 41 ff c3 48 83 c1 04 32 51 fe 32 41 ff 44 88 49 1c 44 88 41 1d 88 51 1e 88 41 1f 41 83 fb 3c 90 01 02 5b 5e c3 90 00 } //01 00 
		$a_02_2 = {56 31 c0 53 44 8a 04 02 44 88 04 01 44 8a 44 02 01 44 88 44 01 01 44 8a 44 02 02 44 88 44 01 02 44 8a 44 02 03 44 88 44 01 03 48 83 c0 04 48 83 f8 20 90 01 02 41 bb 08 00 00 00 4c 8d 90 00 } //01 00 
		$a_03_3 = {48 89 74 24 78 48 90 01 04 45 31 c0 48 89 d9 c7 44 24 28 40 00 00 00 48 90 01 04 49 89 f1 c7 44 24 20 00 30 00 00 e8 90 01 04 85 c0 0f 88 df 00 00 00 4c 8b 4c 24 78 48 8b 54 24 70 49 89 f8 48 89 d9 48 c7 44 24 20 00 00 00 00 e8 90 01 04 85 c0 0f 88 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}