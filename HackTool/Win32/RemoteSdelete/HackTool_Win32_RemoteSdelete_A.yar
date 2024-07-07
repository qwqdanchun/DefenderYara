
rule HackTool_Win32_RemoteSdelete_A{
	meta:
		description = "HackTool:Win32/RemoteSdelete.A,SIGNATURE_TYPE_CMDHSTR_EXT,0c 00 0c 00 06 00 00 "
		
	strings :
		$a_00_0 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 43 00 3a 00 5c 00 } //10 C:\Windows\System32\cmd.exe C:\
		$a_00_1 = {20 00 2f 00 43 00 20 00 } //1  /C 
		$a_02_2 = {2e 00 65 00 78 00 65 00 90 02 0a 2d 00 61 00 63 00 63 00 65 00 70 00 74 00 65 00 75 00 6c 00 61 00 90 02 05 2d 00 72 00 90 02 0a 2d 00 71 00 90 02 10 63 00 3a 00 5c 00 75 00 73 00 65 00 72 00 73 00 90 00 } //1
		$a_02_3 = {2e 00 65 00 78 00 65 00 90 02 0a 2d 00 61 00 63 00 63 00 65 00 70 00 74 00 65 00 75 00 6c 00 61 00 90 02 05 2d 00 71 00 90 02 0a 2d 00 72 00 90 02 10 63 00 3a 00 5c 00 75 00 73 00 65 00 72 00 73 00 90 00 } //1
		$a_02_4 = {2e 00 65 00 78 00 65 00 90 02 0a 2d 00 61 00 63 00 63 00 65 00 70 00 74 00 65 00 75 00 6c 00 61 00 90 02 05 2d 00 72 00 90 02 0a 2d 00 71 00 90 02 10 63 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 90 00 } //1
		$a_02_5 = {2e 00 65 00 78 00 65 00 90 02 0a 2d 00 61 00 63 00 63 00 65 00 70 00 74 00 65 00 75 00 6c 00 61 00 90 02 05 2d 00 71 00 90 02 0a 2d 00 72 00 90 02 10 63 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 90 00 } //1
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1) >=12
 
}