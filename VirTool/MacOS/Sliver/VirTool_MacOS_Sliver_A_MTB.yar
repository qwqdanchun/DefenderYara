
rule VirTool_MacOS_Sliver_A_MTB{
	meta:
		description = "VirTool:MacOS/Sliver.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {42 61 63 6b 64 6f 6f 72 52 65 71 } //01 00 
		$a_00_1 = {53 53 48 43 6f 6d 6d 61 6e 64 52 65 71 } //01 00 
		$a_00_2 = {53 63 72 65 65 6e 73 68 6f 74 52 65 71 } //01 00 
		$a_00_3 = {72 75 6e 74 69 6d 65 2e 70 65 72 73 69 73 74 65 6e 74 61 6c 6c 6f 63 } //00 00 
	condition:
		any of ($a_*)
 
}