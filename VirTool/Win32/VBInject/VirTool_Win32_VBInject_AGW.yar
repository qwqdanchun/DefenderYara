
rule VirTool_Win32_VBInject_AGW{
	meta:
		description = "VirTool:Win32/VBInject.AGW,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {52 00 6b 00 65 00 79 00 37 00 52 00 43 00 34 00 6d 00 6f 00 64 00 42 00 79 00 55 00 72 00 31 00 } //01 00 
		$a_03_1 = {f4 01 f4 ff fe 5d 20 00 6c 74 ff 5e 90 01 01 00 04 00 71 4c ff 3a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}