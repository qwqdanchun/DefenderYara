
rule HackTool_Linux_Keylogger_A_MTB{
	meta:
		description = "HackTool:Linux/Keylogger.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {3a 2f 2f 6c 6f 63 61 6c 68 6f 73 74 3a 33 33 33 33 2f 75 70 6c 6f 61 64 } //01 00 
		$a_00_1 = {2f 74 6d 70 2f 6b 65 79 2e 6c 6f 67 } //01 00 
		$a_00_2 = {70 79 78 5f 70 66 5f 39 6b 65 79 6c 6f 67 67 65 72 5f 73 65 6e 64 46 69 6c 65 73 } //01 00 
		$a_00_3 = {70 79 78 5f 70 66 5f 39 6b 65 79 6c 6f 67 67 65 72 5f 32 63 61 70 74 75 72 61 72 } //01 00 
		$a_00_4 = {6b 65 79 6c 6f 67 67 65 72 2e 70 79 } //00 00 
	condition:
		any of ($a_*)
 
}