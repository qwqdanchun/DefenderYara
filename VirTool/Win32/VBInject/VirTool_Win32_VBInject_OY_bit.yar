
rule VirTool_Win32_VBInject_OY_bit{
	meta:
		description = "VirTool:Win32/VBInject.OY!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 00 6a 00 6a 00 c6 04 24 48 c6 44 24 90 01 01 65 c6 44 24 90 01 01 61 c6 44 24 90 01 01 70 c6 44 24 90 01 01 43 c6 44 24 90 01 01 72 c6 44 24 90 01 01 65 c6 44 24 90 01 01 61 c6 44 24 90 01 01 74 c6 44 24 90 01 01 65 89 e2 e8 90 01 03 00 6a 00 6a 00 68 00 00 05 00 ff d0 90 00 } //01 00 
		$a_01_1 = {ad 83 f8 00 74 fa bb 54 8b ec 83 43 39 18 75 f0 bb eb 0c 56 8d 43 39 58 04 75 e5 31 db 53 53 53 54 68 00 50 04 00 52 51 54 ff d0 } //01 00 
		$a_01_2 = {4b 45 52 4e 45 4c 33 32 00 8b 5c 24 04 31 1c 08 c2 04 00 } //00 00 
	condition:
		any of ($a_*)
 
}