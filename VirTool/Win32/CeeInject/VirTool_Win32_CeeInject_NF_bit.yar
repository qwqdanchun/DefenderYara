
rule VirTool_Win32_CeeInject_NF_bit{
	meta:
		description = "VirTool:Win32/CeeInject.NF!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b ff 69 c9 90 01 04 81 c1 90 01 04 8b d1 c1 ea 90 01 01 32 14 07 46 88 10 40 3b 75 90 01 01 7c e3 90 00 } //01 00 
		$a_03_1 = {51 6a 40 52 53 ff d0 ff 55 90 01 01 5f 5e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}