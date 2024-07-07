
rule VirTool_Win32_Injector_AN{
	meta:
		description = "VirTool:Win32/Injector.AN,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_00_0 = {00 76 61 72 31 00 00 00 00 76 61 72 32 00 00 00 00 76 61 72 33 00 00 00 00 76 61 72 34 00 00 00 00 76 61 72 35 00 00 00 00 76 61 72 36 00 00 00 00 76 61 72 37 00 00 00 00 76 61 72 38 00 00 00 00 76 61 72 39 00 00 00 00 76 61 72 31 30 00 00 00 } //1
		$a_01_1 = {4d 45 44 49 4f 4e 2d 38 38 38 42 38 39 43 36 5c 41 64 6d 69 6e 69 73 74 72 61 74 6f 72 5c 56 42 36 2e 4f 4c 42 00 00 56 42 } //1
		$a_01_2 = {43 3a 5c 64 65 61 63 74 5c 56 42 36 2e 4f 4c 42 } //1 C:\deact\VB6.OLB
		$a_01_3 = {43 3a 5c 50 72 6f 67 72 61 6d 6d 65 5c 44 55 46 46 59 5c 6c 6f 72 65 6c 65 79 5c 56 42 36 2e 4f 4c 42 } //1 C:\Programme\DUFFY\loreley\VB6.OLB
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=2
 
}