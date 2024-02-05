
rule HackTool_AndroidOS_Mesploit_B_MTB{
	meta:
		description = "HackTool:AndroidOS/Mesploit.B!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {4c 63 6f 6d 2f 6d 65 74 61 73 70 6c 6f 69 74 2f 73 74 61 67 65 2f 4d 61 69 6e 41 63 74 69 76 69 74 79 } //01 00 
		$a_01_1 = {73 74 61 67 65 2f 50 61 79 6c 6f 61 64 } //00 00 
		$a_00_2 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}