
rule VirTool_WinNT_Emold_B{
	meta:
		description = "VirTool:WinNT/Emold.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {68 45 4d 4f 00 50 6a 01 ff 15 } //01 00 
		$a_00_1 = {8a d0 80 c2 15 30 14 30 40 3b c1 7c f3 } //01 00 
		$a_02_2 = {fa 0f 20 c0 8b d2 89 44 90 01 02 8b d2 25 ff ff fe ff 0f 22 c0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}