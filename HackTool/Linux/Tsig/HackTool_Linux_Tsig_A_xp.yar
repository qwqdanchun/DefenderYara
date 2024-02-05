
rule HackTool_Linux_Tsig_A_xp{
	meta:
		description = "HackTool:Linux/Tsig.A!xp,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {75 73 61 67 65 3a 20 25 73 20 61 64 64 72 65 73 73 20 5b 2d 73 5d 5b 2d 65 5d } //01 00 
		$a_01_1 = {2d 65 20 73 65 6e 64 20 65 78 70 6c 6f 69 74 20 70 61 63 6b 65 74 } //01 00 
		$a_01_2 = {2d 73 20 73 65 6e 64 20 69 6e 66 6f 6c 65 61 6b 20 70 61 63 6b 65 74 } //01 00 
		$a_01_3 = {73 75 63 63 65 73 73 66 75 6c 6c 79 20 65 78 70 6c 6f 69 74 65 64 } //01 00 
		$a_01_4 = {63 68 6d 6f 64 20 2b 78 20 64 30 } //00 00 
	condition:
		any of ($a_*)
 
}