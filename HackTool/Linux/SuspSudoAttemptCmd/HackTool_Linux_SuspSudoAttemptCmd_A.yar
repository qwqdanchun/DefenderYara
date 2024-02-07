
rule HackTool_Linux_SuspSudoAttemptCmd_A{
	meta:
		description = "HackTool:Linux/SuspSudoAttemptCmd.A,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 00 68 00 65 00 6c 00 6c 00 20 00 } //01 00  shell 
		$a_00_1 = {72 00 6f 00 6f 00 74 00 } //01 00  root
		$a_00_2 = {6d 00 61 00 63 00 68 00 69 00 6e 00 65 00 63 00 74 00 6c 00 20 00 } //01 00  machinectl 
		$a_00_3 = {2d 00 2d 00 75 00 69 00 64 00 } //00 00  --uid
	condition:
		any of ($a_*)
 
}