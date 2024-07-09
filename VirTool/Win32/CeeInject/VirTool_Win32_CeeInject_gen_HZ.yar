
rule VirTool_Win32_CeeInject_gen_HZ{
	meta:
		description = "VirTool:Win32/CeeInject.gen!HZ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {6a 40 68 00 30 00 00 ff 75 ?? ff 75 ?? ff 75 ?? ff d0 a1 ?? ?? ?? ?? 33 f6 56 ff 70 54 53 ff 70 34 ff 35 ?? ?? ?? ?? ff 15 } //1
		$a_03_1 = {0f b7 48 06 ff 05 ?? ?? ?? ?? 39 0d 90 1b 00 7c } //1
		$a_03_2 = {8b 48 34 03 48 28 8d 85 ?? ?? ?? ?? 50 ff 35 ?? ?? ?? ?? 89 8d } //1
		$a_03_3 = {ff 70 50 ff 70 34 ff 35 ?? ?? ?? ?? e8 ?? ?? ?? ?? a1 ?? ?? ?? ?? [0-04] 33 f6 56 ff 70 54 53 ff 70 34 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}