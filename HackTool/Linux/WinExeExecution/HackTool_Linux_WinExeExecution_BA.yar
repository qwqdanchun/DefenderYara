
rule HackTool_Linux_WinExeExecution_BA{
	meta:
		description = "HackTool:Linux/WinExeExecution.BA,SIGNATURE_TYPE_CMDHSTR_EXT,08 00 08 00 07 00 00 "
		
	strings :
		$a_00_0 = {77 00 69 00 6e 00 65 00 78 00 65 00 } //5 winexe
		$a_00_1 = {2f 00 2f 00 } //2 //
		$a_00_2 = {2d 00 75 00 20 00 } //1 -u 
		$a_00_3 = {2d 00 2d 00 75 00 73 00 65 00 72 00 3d 00 } //1 --user=
		$a_00_4 = {2d 00 2d 00 72 00 75 00 6e 00 61 00 73 00 3d 00 } //1 --runas=
		$a_00_5 = {2d 00 61 00 20 00 } //1 -a 
		$a_00_6 = {2d 00 2d 00 61 00 75 00 74 00 68 00 65 00 6e 00 74 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 2d 00 66 00 69 00 6c 00 65 00 3d 00 } //1 --authentication-file=
	condition:
		((#a_00_0  & 1)*5+(#a_00_1  & 1)*2+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=8
 
}