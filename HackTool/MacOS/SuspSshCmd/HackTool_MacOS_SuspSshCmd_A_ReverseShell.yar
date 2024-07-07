
rule HackTool_MacOS_SuspSshCmd_A_ReverseShell{
	meta:
		description = "HackTool:MacOS/SuspSshCmd.A!ReverseShell,SIGNATURE_TYPE_CMDHSTR_EXT,ffffffc8 00 41 00 0a 00 00 "
		
	strings :
		$a_00_0 = {73 00 73 00 68 00 } //10 ssh
		$a_00_1 = {6d 00 6b 00 66 00 69 00 66 00 6f 00 } //30 mkfifo
		$a_02_2 = {2f 00 62 00 69 00 6e 00 2f 00 90 02 04 73 00 68 00 90 00 } //20
		$a_00_3 = {75 00 73 00 65 00 72 00 6b 00 6e 00 6f 00 77 00 6e 00 68 00 6f 00 73 00 74 00 73 00 66 00 69 00 6c 00 65 00 3d 00 2f 00 64 00 65 00 76 00 2f 00 6e 00 75 00 6c 00 6c 00 } //10 userknownhostsfile=/dev/null
		$a_00_4 = {3c 00 30 00 } //5 <0
		$a_00_5 = {32 00 3e 00 26 00 31 00 } //5 2>&1
		$a_00_6 = {6d 00 6b 00 6c 00 6f 00 63 00 61 00 6c 00 65 00 } //65486 mklocale
		$a_00_7 = {6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 } //65486 localhost
		$a_00_8 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 } //65486 127.0.0.1
		$a_00_9 = {30 00 2e 00 30 00 2e 00 30 00 2e 00 30 00 } //65486 0.0.0.0
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*30+(#a_02_2  & 1)*20+(#a_00_3  & 1)*10+(#a_00_4  & 1)*5+(#a_00_5  & 1)*5+(#a_00_6  & 1)*65486+(#a_00_7  & 1)*65486+(#a_00_8  & 1)*65486+(#a_00_9  & 1)*65486) >=65
 
}