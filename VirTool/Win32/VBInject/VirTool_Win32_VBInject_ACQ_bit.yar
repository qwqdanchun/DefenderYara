
rule VirTool_Win32_VBInject_ACQ_bit{
	meta:
		description = "VirTool:Win32/VBInject.ACQ!bit,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {b8 42 9e 21 00 [0-30] 05 14 62 20 00 [0-30] 39 01 [0-30] 0f [0-30] 83 e9 04 [0-30] 68 f7 10 34 00 [0-30] 58 [0-30] 05 56 ef 1e 00 [0-30] 8b 09 [0-30] 39 c1 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}