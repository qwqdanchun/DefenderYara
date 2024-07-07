
rule HackTool_MacOS_SuspOpensslCmd_A_ReverseShell{
	meta:
		description = "HackTool:MacOS/SuspOpensslCmd.A!ReverseShell,SIGNATURE_TYPE_CMDHSTR_EXT,ffffffc8 00 50 00 0d 00 00 "
		
	strings :
		$a_00_0 = {6f 00 70 00 65 00 6e 00 73 00 73 00 6c 00 } //10 openssl
		$a_00_1 = {73 00 5f 00 63 00 6c 00 69 00 65 00 6e 00 74 00 } //30 s_client
		$a_00_2 = {63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 } //20 connect
		$a_00_3 = {2d 00 71 00 75 00 69 00 65 00 74 00 } //5 -quiet
		$a_00_4 = {73 00 68 00 20 00 } //15 sh 
		$a_00_5 = {32 00 3e 00 26 00 31 00 } //5 2>&1
		$a_00_6 = {73 00 73 00 68 00 } //-50 ssh
		$a_00_7 = {2d 00 73 00 74 00 61 00 74 00 75 00 73 00 } //-50 -status
		$a_00_8 = {2d 00 73 00 68 00 6f 00 77 00 63 00 65 00 72 00 74 00 73 00 } //-50 -showcerts
		$a_00_9 = {6f 00 73 00 73 00 6c 00 74 00 65 00 73 00 74 00 } //-50 ossltest
		$a_00_10 = {6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 } //-50 localhost
		$a_00_11 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 } //-50 127.0.0.1
		$a_00_12 = {30 00 2e 00 30 00 2e 00 30 00 2e 00 30 00 } //-50 0.0.0.0
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*30+(#a_00_2  & 1)*20+(#a_00_3  & 1)*5+(#a_00_4  & 1)*15+(#a_00_5  & 1)*5+(#a_00_6  & 1)*-50+(#a_00_7  & 1)*-50+(#a_00_8  & 1)*-50+(#a_00_9  & 1)*-50+(#a_00_10  & 1)*-50+(#a_00_11  & 1)*-50+(#a_00_12  & 1)*-50) >=80
 
}