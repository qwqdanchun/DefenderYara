
rule VirTool_WinNT_Singu_gen_A{
	meta:
		description = "VirTool:WinNT/Singu.gen!A,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 45 f4 8b 00 03 45 08 83 7d 14 01 89 45 e8 75 3b 8b 45 f0 8b 4f 10 0f b7 00 03 c8 8b 74 8b fc 03 75 08 8a 06 3c b8 75 4c 80 7e 09 cd 75 06 80 7e 0a 2e 74 0a 3c b8 75 3c 80 7e 05 ba 75 36 } //01 00 
		$a_01_1 = {6a 01 58 5e c9 c2 08 00 } //00 00 
	condition:
		any of ($a_*)
 
}