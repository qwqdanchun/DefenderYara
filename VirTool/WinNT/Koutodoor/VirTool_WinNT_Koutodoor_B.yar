
rule VirTool_WinNT_Koutodoor_B{
	meta:
		description = "VirTool:WinNT/Koutodoor.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 07 50 68 90 01 04 ff 15 90 01 04 83 c4 0c 85 c0 74 90 01 01 90 03 01 01 46 47 81 90 03 01 01 fe ff 00 30 00 00 72 df 90 00 } //01 00 
		$a_01_1 = {99 f7 7d 0c 8b 45 08 8a 04 02 32 01 32 45 14 46 3b 75 14 88 01 7c e1 } //01 00 
		$a_01_2 = {b8 00 40 96 d5 c7 45 fc 36 ff ff ff } //00 00 
	condition:
		any of ($a_*)
 
}