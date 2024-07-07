
rule VirTool_Win64_Blakout_A_MTB{
	meta:
		description = "VirTool:Win64/Blakout.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {41 b9 ff 01 0f 00 4c 8b 45 48 48 8b 55 48 48 8b 4d 08 ff 15 dc 1c 13 00 } //1
		$a_00_1 = {48 89 45 48 41 b8 02 00 00 00 33 d2 33 c9 ff 15 66 1d 13 00 } //1
		$a_02_2 = {33 c0 83 f8 01 0f 84 90 01 04 48 8d 90 01 05 e8 90 01 04 89 85 14 03 00 00 83 bd 14 03 00 00 00 0f 84 90 01 04 48 c7 44 24 38 00 00 00 00 48 8d 90 01 05 48 89 44 24 30 8b 85 54 03 00 00 89 44 24 28 90 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}