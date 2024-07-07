
rule VirTool_Win64_Injecz_B_MTB{
	meta:
		description = "VirTool:Win64/Injecz.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {48 89 b4 24 40 01 00 00 48 8b b4 24 b8 00 00 00 48 89 b4 24 48 01 00 00 bb 02 00 00 00 48 89 d9 48 8d 90 01 06 e8 90 01 04 48 8d 90 01 05 bb 0b 00 00 00 66 90 01 01 e8 fb 90 01 03 89 44 24 3c 48 85 db 90 00 } //1
		$a_00_1 = {48 8b 8c 24 80 00 00 00 48 89 08 48 8b 54 24 48 48 89 50 08 48 8b 5c 24 40 48 89 58 10 48 8b 5c 24 78 48 89 58 18 48 8b 1d ee c8 0d 00 } //1
		$a_00_2 = {48 8b 8c 24 80 00 00 00 48 89 08 48 8b 54 24 48 48 89 50 08 48 8b 9c 24 e0 00 00 00 48 89 58 10 48 8b 5c 24 78 48 89 58 18 48 8b 9c 24 d8 00 00 00 48 89 58 20 48 8b 1d 0d c8 0d 00 } //1
		$a_00_3 = {48 8b 8c 24 80 00 00 00 48 89 08 44 0f 11 78 08 48 8b 54 24 58 48 89 50 18 48 8b 54 24 48 48 89 50 20 44 0f 11 78 28 48 8b 15 81 c6 0d 00 48 89 c3 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}