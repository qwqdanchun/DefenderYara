
rule VirTool_Win32_Vbinder_B{
	meta:
		description = "VirTool:Win32/Vbinder.B,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 50 00 36 00 36 00 36 00 42 00 69 00 6e 00 64 00 65 00 72 00 56 00 2e 00 32 00 5c 00 53 00 74 00 75 00 62 00 } //01 00  CP666BinderV.2\Stub
		$a_01_1 = {2e 00 63 00 6d 00 64 00 00 00 00 00 08 00 00 00 2e 00 62 00 61 00 74 00 00 00 00 00 08 00 00 00 2e 00 74 00 78 00 74 00 00 00 00 00 18 00 00 00 6e 00 6f 00 74 00 65 00 70 00 61 00 64 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00  ShellExecuteA
		$a_01_3 = {00 48 75 66 66 6d 61 6e 43 6f 64 69 6e 67 00 } //01 00 
		$a_01_4 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00  MSVBVM60.DLL
	condition:
		any of ($a_*)
 
}