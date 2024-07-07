
rule HackTool_Win32_Impacketwmiexec_D{
	meta:
		description = "HackTool:Win32/Impacketwmiexec.D,SIGNATURE_TYPE_CMDHSTR_EXT,0d 00 0d 00 05 00 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_1 = {20 00 2f 00 63 00 20 00 } //1  /c 
		$a_00_2 = {20 00 2f 00 51 00 20 00 } //1  /Q 
		$a_02_3 = {20 00 5c 00 5c 00 90 29 03 00 2e 00 90 29 03 00 2e 00 90 29 03 00 2e 00 90 29 03 00 5c 00 90 02 20 5c 00 90 02 20 2e 00 62 00 61 00 74 00 90 00 } //10
		$a_00_4 = {5c 00 5c 00 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 5c 00 } //65436 \\127.0.0.1\
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*10+(#a_00_4  & 1)*65436) >=13
 
}