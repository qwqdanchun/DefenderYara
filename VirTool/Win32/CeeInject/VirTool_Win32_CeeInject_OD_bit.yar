
rule VirTool_Win32_CeeInject_OD_bit{
	meta:
		description = "VirTool:Win32/CeeInject.OD!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {69 c9 fd 43 03 00 81 c1 ?? ?? ?? ?? 8b d1 c1 ea ?? 32 14 07 46 88 10 40 3b 75 ?? 7c } //1
		$a_03_1 = {51 6a 40 52 53 ff d0 ff 55 ?? 5f 5e } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}