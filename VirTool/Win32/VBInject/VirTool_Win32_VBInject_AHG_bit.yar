
rule VirTool_Win32_VBInject_AHG_bit{
	meta:
		description = "VirTool:Win32/VBInject.AHG!bit,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {b8 30 9f 12 00 90 02 20 05 26 61 2f 00 90 02 20 39 41 04 90 02 20 68 c0 c6 2d 00 90 02 20 58 90 02 20 05 8d 39 25 00 90 02 20 39 01 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}