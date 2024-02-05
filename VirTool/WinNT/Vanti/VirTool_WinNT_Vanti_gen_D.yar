
rule VirTool_WinNT_Vanti_gen_D{
	meta:
		description = "VirTool:WinNT/Vanti.gen!D,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 0a 00 "
		
	strings :
		$a_01_0 = {49 6f 47 65 74 43 75 72 72 65 6e 74 50 72 6f 63 65 73 73 } //01 00 
		$a_03_1 = {ff ff fe ff 8b 90 01 01 0f 22 90 04 01 06 c0 c1 c2 c3 c6 c7 fa e8 90 01 01 00 00 00 ff 15 90 01 04 fb 8b 90 04 01 06 45 4d 55 5d 75 7d fc 8b 90 01 01 0f 22 90 04 01 06 c0 c1 c2 c3 c6 c7 90 09 0a 00 90 02 01 0f 20 90 04 01 06 c0 c1 c2 c3 c6 c7 8b 90 01 01 89 90 04 01 06 45 4d 55 5d 75 7d fc 90 03 01 0a 25 81 90 04 01 05 e1 e2 e3 e6 e7 90 00 } //01 00 
		$a_03_2 = {ff ff fe ff 0f 22 90 04 01 06 c0 c1 c2 c3 c6 c7 fa e8 90 01 01 00 00 00 ff 15 90 01 04 fb 8b 90 04 01 06 45 4d 55 5d 75 7d fc 0f 22 90 04 01 06 c0 c1 c2 c3 c6 c7 90 09 08 00 90 02 01 0f 20 90 04 01 06 c0 c1 c2 c3 c6 c7 89 90 04 01 06 45 4d 55 5d 75 7d fc 90 03 01 0a 25 81 90 04 01 05 e1 e2 e3 e6 e7 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}