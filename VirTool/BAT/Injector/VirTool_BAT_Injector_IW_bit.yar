
rule VirTool_BAT_Injector_IW_bit{
	meta:
		description = "VirTool:BAT/Injector.IW!bit,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 05 00 "
		
	strings :
		$a_03_0 = {91 61 b4 9c 90 01 01 03 6f 2a 00 00 0a 17 da 33 04 16 90 01 01 2b 04 90 01 01 17 d6 90 01 01 11 05 17 d6 13 05 11 05 11 06 31 90 00 } //01 00 
		$a_01_1 = {54 00 47 00 39 00 68 00 5a 00 41 00 3d 00 3d 00 } //01 00  TG9hZA==
		$a_01_2 = {52 00 32 00 56 00 30 00 56 00 48 00 6c 00 77 00 5a 00 51 00 3d 00 3d 00 } //01 00  R2V0VHlwZQ==
		$a_01_3 = {52 00 32 00 56 00 30 00 54 00 57 00 56 00 30 00 61 00 47 00 39 00 6b 00 } //01 00  R2V0TWV0aG9k
		$a_01_4 = {53 00 57 00 35 00 32 00 62 00 32 00 74 00 6c 00 } //01 00  SW52b2tl
		$a_01_5 = {52 00 57 00 35 00 30 00 63 00 6e 00 6c 00 51 00 62 00 32 00 6c 00 75 00 64 00 41 00 3d 00 3d 00 } //00 00  RW50cnlQb2ludA==
	condition:
		any of ($a_*)
 
}