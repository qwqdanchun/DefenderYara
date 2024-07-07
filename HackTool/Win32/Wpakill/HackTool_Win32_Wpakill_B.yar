
rule HackTool_Win32_Wpakill_B{
	meta:
		description = "HackTool:Win32/Wpakill.B,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {5c 00 53 00 79 00 73 00 57 00 4f 00 57 00 36 00 34 00 5c 00 73 00 6c 00 77 00 67 00 61 00 2e 00 64 00 6c 00 6c 00 } //1 \SysWOW64\slwga.dll
		$a_01_1 = {5c 00 53 00 79 00 73 00 57 00 4f 00 57 00 36 00 34 00 5c 00 73 00 6c 00 6d 00 67 00 72 00 2e 00 76 00 62 00 73 00 } //1 \SysWOW64\slmgr.vbs
		$a_01_2 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 63 00 70 00 6c 00 2e 00 64 00 6c 00 6c 00 } //1 \System32\systemcpl.dll
		$a_01_3 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 73 00 70 00 70 00 75 00 69 00 6e 00 6f 00 74 00 69 00 66 00 79 00 2e 00 64 00 6c 00 6c 00 } //1 \System32\sppuinotify.dll
		$a_01_4 = {52 00 65 00 6d 00 6f 00 76 00 65 00 57 00 41 00 54 00 } //1 RemoveWAT
		$a_01_5 = {73 00 63 00 20 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 61 00 6e 00 74 00 69 00 77 00 6c 00 6d 00 73 00 73 00 76 00 63 00 } //1 sc create antiwlmssvc
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}