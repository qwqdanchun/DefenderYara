
rule VirTool_Win32_VBInject_DW{
	meta:
		description = "VirTool:Win32/VBInject.DW,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {e7 f5 4d 5a 00 00 c7 c3 1c } //01 00 
		$a_03_1 = {f3 00 01 c1 e7 04 90 01 01 ff 9d fb 12 fc 0d 90 00 } //01 00 
		$a_01_2 = {4a f5 02 00 00 00 fe 6c 50 ff ba 00 00 05 1e 3a 00 00 6c 6c 60 ff f5 26 00 00 00 04 40 ff 0a 1b 00 08 00 04 40 ff f5 48 } //01 00 
		$a_00_3 = {38 00 42 00 34 00 43 00 32 00 34 00 30 00 38 00 35 00 31 00 3c 00 50 00 41 00 54 00 43 00 48 00 31 00 3e 00 45 00 38 00 3c 00 50 00 41 00 54 00 43 00 48 00 32 00 3e 00 35 00 39 00 38 00 39 00 30 00 31 00 36 00 36 00 33 00 31 00 43 00 30 00 43 00 33 00 } //00 00  8B4C240851<PATCH1>E8<PATCH2>5989016631C0C3
	condition:
		any of ($a_*)
 
}