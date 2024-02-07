
rule VirTool_WinNT_Rootkitdrv_gen_FF{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.gen!FF,SIGNATURE_TYPE_PEHSTR_EXT,20 00 0b 00 06 00 00 0a 00 "
		
	strings :
		$a_02_0 = {81 7d e0 4b e1 22 00 0f 85 90 01 01 00 00 00 c7 45 c0 01 00 00 00 83 65 fc 00 90 00 } //0a 00 
		$a_02_1 = {3b 78 08 73 90 01 01 8b 00 89 45 c8 90 00 } //0a 00 
		$a_00_2 = {8b 06 8b 4d c8 89 04 b9 0f 20 c0 0d 00 00 01 00 0f 22 c0 } //01 00 
		$a_00_3 = {5c 00 44 00 65 00 56 00 69 00 43 00 65 00 5c 00 44 00 61 00 72 00 6b 00 53 00 68 00 65 00 6c 00 6c 00 } //01 00  \DeViCe\DarkShell
		$a_00_4 = {5c 00 3f 00 3f 00 5c 00 44 00 61 00 72 00 6b 00 53 00 68 00 65 00 6c 00 6c 00 32 00 30 00 30 00 38 00 } //01 00  \??\DarkShell2008
		$a_00_5 = {5c 00 3f 00 3f 00 5c 00 44 00 61 00 72 00 6b 00 32 00 30 00 30 00 38 00 } //00 00  \??\Dark2008
	condition:
		any of ($a_*)
 
}