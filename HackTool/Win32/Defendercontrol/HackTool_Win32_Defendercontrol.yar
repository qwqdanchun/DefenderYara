
rule HackTool_Win32_Defendercontrol{
	meta:
		description = "HackTool:Win32/Defendercontrol,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 20 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 } //1 Windows Defender Control
		$a_01_1 = {77 00 77 00 77 00 2e 00 73 00 6f 00 72 00 64 00 75 00 6d 00 2e 00 6f 00 72 00 67 00 } //1 www.sordum.org
		$a_01_2 = {42 00 79 00 20 00 42 00 6c 00 75 00 65 00 4c 00 69 00 66 00 65 00 } //1 By BlueLife
		$a_01_3 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 } //1 Disable Windows Defender
		$a_01_4 = {48 00 69 00 64 00 65 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 20 00 6f 00 6e 00 20 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 } //1 Hide Window on Startup
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}