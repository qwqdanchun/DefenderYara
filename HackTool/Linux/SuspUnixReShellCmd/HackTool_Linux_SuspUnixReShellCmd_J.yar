
rule HackTool_Linux_SuspUnixReShellCmd_J{
	meta:
		description = "HackTool:Linux/SuspUnixReShellCmd.J,SIGNATURE_TYPE_CMDHSTR_EXT,17 00 17 00 0b 00 00 "
		
	strings :
		$a_00_0 = {54 00 43 00 50 00 53 00 6f 00 63 00 6b 00 65 00 74 00 2e 00 6e 00 65 00 77 00 28 00 } //5 TCPSocket.new(
		$a_00_1 = {49 00 4f 00 2e 00 70 00 6f 00 70 00 65 00 6e 00 28 00 } //5 IO.popen(
		$a_02_2 = {69 00 6f 00 [0-02] 7c 00 } //5
		$a_02_3 = {70 00 72 00 69 00 6e 00 74 00 [0-02] 69 00 6f 00 2e 00 72 00 65 00 61 00 64 00 [0-02] 7d 00 [0-02] 65 00 6e 00 64 00 } //5
		$a_00_4 = {72 00 75 00 62 00 79 00 } //1 ruby
		$a_00_5 = {2d 00 72 00 73 00 6f 00 63 00 6b 00 65 00 74 00 } //1 -rsocket
		$a_00_6 = {2d 00 65 00 } //1 -e
		$a_00_7 = {2d 00 72 00 6f 00 70 00 65 00 6e 00 73 00 73 00 6c 00 } //1 -ropenssl
		$a_00_8 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 } //-50 127.0.0.1
		$a_00_9 = {6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 } //-50 localhost
		$a_00_10 = {30 00 2e 00 30 00 2e 00 30 00 2e 00 30 00 } //-50 0.0.0.0
	condition:
		((#a_00_0  & 1)*5+(#a_00_1  & 1)*5+(#a_02_2  & 1)*5+(#a_02_3  & 1)*5+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*-50+(#a_00_9  & 1)*-50+(#a_00_10  & 1)*-50) >=23
 
}