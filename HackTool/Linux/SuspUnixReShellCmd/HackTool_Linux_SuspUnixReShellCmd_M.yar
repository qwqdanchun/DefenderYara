
rule HackTool_Linux_SuspUnixReShellCmd_M{
	meta:
		description = "HackTool:Linux/SuspUnixReShellCmd.M,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 07 00 00 "
		
	strings :
		$a_00_0 = {74 00 65 00 6c 00 6e 00 65 00 74 00 } //1 telnet
		$a_00_1 = {64 00 6f 00 20 00 73 00 68 00 20 00 26 00 26 00 20 00 62 00 72 00 65 00 61 00 6b 00 3b 00 } //1 do sh && break;
		$a_00_2 = {64 00 6f 00 6e 00 65 00 20 00 32 00 3e 00 26 00 31 00 } //1 done 2>&1
		$a_00_3 = {73 00 68 00 20 00 2d 00 63 00 } //1 sh -c
		$a_00_4 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 } //65486 127.0.0.1
		$a_00_5 = {6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 } //65486 localhost
		$a_00_6 = {30 00 2e 00 30 00 2e 00 30 00 2e 00 30 00 } //65486 0.0.0.0
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*65486+(#a_00_5  & 1)*65486+(#a_00_6  & 1)*65486) >=4
 
}