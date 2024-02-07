
rule HackTool_Linux_MSFPerlShell_A{
	meta:
		description = "HackTool:Linux/MSFPerlShell.A,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {70 00 65 00 72 00 6c 00 } //01 00  perl
		$a_00_1 = {3d 00 6e 00 65 00 77 00 20 00 49 00 4f 00 3a 00 3a 00 53 00 6f 00 63 00 6b 00 65 00 74 00 3a 00 3a 00 49 00 4e 00 45 00 54 00 } //01 00  =new IO::Socket::INET
		$a_00_2 = {53 00 54 00 44 00 49 00 4e 00 2d 00 3e 00 66 00 64 00 6f 00 70 00 65 00 6e 00 } //01 00  STDIN->fdopen
		$a_00_3 = {24 00 7e 00 2d 00 3e 00 66 00 64 00 6f 00 70 00 65 00 6e 00 28 00 } //01 00  $~->fdopen(
		$a_00_4 = {69 00 66 00 28 00 24 00 5f 00 3d 00 7e 00 20 00 2f 00 28 00 2e 00 2a 00 29 00 2f 00 29 00 7b 00 73 00 79 00 73 00 74 00 65 00 6d 00 20 00 24 00 31 00 3b 00 } //00 00  if($_=~ /(.*)/){system $1;
	condition:
		any of ($a_*)
 
}