
rule HackTool_AndroidOS_DDos_A_MTB{
	meta:
		description = "HackTool:AndroidOS/DDos.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 6f 6d 2f 73 63 6f 74 74 2f 68 65 72 62 65 72 74 2f 41 6e 44 4f 53 69 64 } //01 00 
		$a_01_1 = {2f 41 73 79 6e 63 44 4f 53 } //01 00 
		$a_01_2 = {2f 44 4f 53 65 72 76 69 63 65 } //01 00 
		$a_01_3 = {61 64 64 4e 65 77 44 6f 53 } //00 00 
	condition:
		any of ($a_*)
 
}