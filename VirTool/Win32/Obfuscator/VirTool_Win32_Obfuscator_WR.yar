
rule VirTool_Win32_Obfuscator_WR{
	meta:
		description = "VirTool:Win32/Obfuscator.WR,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 05 00 00 0a 00 "
		
	strings :
		$a_13_0 = {e8 03 00 00 90 17 03 06 06 06 87 ff 87 ff 87 ff 8b d2 8b d2 8b d2 8a c0 8a c0 8a c0 90 00 0a } //00 22 
		$a_8b_1 = {24 fc 51 b9 90 01 02 98 00 90 90 90 01 b0 90 02 46 49 0f } //85 90 
		$a_01_2 = {ff } //ff ff 
		$a_0c_3 = {24 } //59 90  $
		$a_c0_5 = {02 8b d2 8b d2 8b d2 01 00 09 11 c0 c0 02 8b c0 8b } //c0 8b 
		$a_01_6 = {00 09 11 c0 c0 02 8a d2 8a d2 8a d2 00 00 5d 04 00 00 95 9d 02 80 5c 22 00 00 96 9d 02 80 00 00 01 00 1e 00 0c 00 d1 61 42 6c 61 63 6f 6c 65 2e 45 59 00 00 01 40 05 82 59 00 04 00 80 10 00 00 10 d4 a6 fd 84 73 99 12 e2 9c fc d5 00 00 00 80 5d 04 00 00 96 9d 02 80 5c 1d 00 00 97 9d 02 80 00 00 01 00 08 00 07 00 ac 21 4c 65 64 61 70 00 00 01 40 05 82 70 00 04 00 7e 15 00 00 44 f3 2d c2 ea 70 d0 fb 61 95 6a 12 81 1f 84 be 00 00 00 00 62 5d 04 00 00 97 9d 02 80 5c 22 00 00 98 9d 02 80 00 00 01 00 08 00 0c 00 ac 21 4b 69 6d 65 6a 6b 61 79 2e 42 00 00 03 40 05 82 70 00 04 00 } //80 10 
	condition:
		any of ($a_*)
 
}