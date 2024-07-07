
rule VirTool_Win32_Vbinder_A{
	meta:
		description = "VirTool:Win32/Vbinder.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {46 00 69 00 6c 00 65 00 4e 00 61 00 6d 00 65 00 00 00 00 00 12 00 00 00 46 00 69 00 6c 00 65 00 4e 00 61 00 6d 00 65 00 32 00 00 00 10 00 00 00 74 00 65 00 6d 00 70 00 2e 00 74 00 78 00 74 00 } //1
		$a_01_1 = {70 00 72 00 6f 00 6a 00 65 00 5c 00 4d 00 4b 00 20 00 42 00 69 00 6e 00 64 00 65 00 72 00 5c 00 73 00 65 00 72 00 76 00 65 00 72 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //1 proje\MK Binder\server\Project1.vbp
		$a_01_2 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //1 ShellExecuteA
		$a_01_3 = {47 65 74 54 65 6d 70 50 61 74 68 41 } //1 GetTempPathA
		$a_01_4 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //1 MSVBVM60.DLL
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}