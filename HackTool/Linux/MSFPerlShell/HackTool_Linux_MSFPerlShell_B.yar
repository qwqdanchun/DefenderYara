
rule HackTool_Linux_MSFPerlShell_B{
	meta:
		description = "HackTool:Linux/MSFPerlShell.B,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {70 00 65 00 72 00 6c 00 } //01 00  perl
		$a_00_1 = {75 00 73 00 65 00 20 00 49 00 4f 00 3a 00 3a 00 53 00 6f 00 63 00 6b 00 65 00 74 00 3a 00 3a 00 53 00 53 00 4c 00 3b 00 } //01 00  use IO::Socket::SSL;
		$a_00_2 = {3d 00 66 00 6f 00 72 00 6b 00 3b 00 65 00 78 00 69 00 74 00 2c 00 69 00 66 00 28 00 } //01 00  =fork;exit,if(
		$a_00_3 = {77 00 68 00 69 00 6c 00 65 00 28 00 73 00 79 00 73 00 72 00 65 00 61 00 64 00 28 00 24 00 63 00 2c 00 24 00 69 00 2c 00 38 00 31 00 39 00 32 00 29 00 29 00 7b 00 73 00 79 00 73 00 77 00 72 00 69 00 74 00 65 00 28 00 } //00 00  while(sysread($c,$i,8192)){syswrite(
	condition:
		any of ($a_*)
 
}