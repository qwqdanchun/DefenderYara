
rule HackTool_Linux_Crackmapexec_A{
	meta:
		description = "HackTool:Linux/Crackmapexec.A,SIGNATURE_TYPE_CMDHSTR_EXT,2e 00 2e 00 0c 00 00 28 00 "
		
	strings :
		$a_00_0 = {63 00 72 00 61 00 63 00 6b 00 6d 00 61 00 70 00 65 00 78 00 65 00 63 00 } //05 00 
		$a_00_1 = {73 00 6d 00 62 00 20 00 } //05 00 
		$a_00_2 = {77 00 69 00 6e 00 72 00 6d 00 20 00 } //05 00 
		$a_00_3 = {6c 00 64 00 61 00 70 00 20 00 } //05 00 
		$a_00_4 = {6d 00 73 00 73 00 71 00 6c 00 20 00 } //05 00 
		$a_00_5 = {73 00 73 00 68 00 20 00 } //01 00 
		$a_00_6 = {2d 00 75 00 20 00 } //01 00 
		$a_00_7 = {2d 00 69 00 64 00 20 00 } //01 00 
		$a_00_8 = {2d 00 78 00 20 00 } //01 00 
		$a_00_9 = {2d 00 6b 00 } //01 00 
		$a_00_10 = {2d 00 6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 } //01 00 
		$a_00_11 = {2d 00 6c 00 6f 00 63 00 61 00 6c 00 2d 00 61 00 75 00 74 00 68 00 } //00 00 
	condition:
		any of ($a_*)
 
}