
rule VirTool_WinNT_Rootkitdrv_OI_bit{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.OI!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 70 68 70 3f 70 3d 00 78 6a 77 6d 61 78 2e 7a 6f 6c 73 65 61 72 63 68 2e 63 6f 6d } //01 00  瀮灨瀿=橸海硡種汯敳牡档挮浯
		$a_01_1 = {33 00 36 00 30 00 41 00 6e 00 74 00 69 00 48 00 61 00 63 00 6b 00 65 00 72 00 00 00 } //01 00 
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 00 00 61 00 62 00 6f 00 75 00 74 00 3a 00 62 00 6c 00 61 00 6e 00 6b 00 00 00 68 00 61 00 6f 00 2e 00 33 00 36 00 30 00 2e 00 63 00 6e 00 } //00 00 
	condition:
		any of ($a_*)
 
}