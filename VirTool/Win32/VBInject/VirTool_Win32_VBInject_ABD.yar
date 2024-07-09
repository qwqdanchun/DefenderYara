
rule VirTool_Win32_VBInject_ABD{
	meta:
		description = "VirTool:Win32/VBInject.ABD,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {2d 04 04 04 04 90 13 49 90 13 0f 85 ?? ?? ?? ?? 33 c0 90 13 8b 7d 08 33 db 90 13 8b 75 0c 90 13 8a 91 ?? ?? ?? ?? 90 13 02 04 3b 90 13 02 c2 90 13 8a b0 ?? ?? ?? ?? 90 13 88 b1 ?? ?? ?? ?? 90 13 88 90 90 ?? ?? ?? ?? 90 13 fe c1 } //1
		$a_03_1 = {ff 77 54 eb 90 09 00 00 ff 77 54 90 13 56 90 13 53 90 13 ff 35 ?? ?? ?? ?? 90 13 ff 15 ?? ?? ?? ?? 90 13 8d 47 18 } //1
		$a_03_2 = {66 3b 77 06 (eb 90 09 00 00 90 13 90 13|0f 82 90 09 00 00 90 13) 6b c6 28 90 13 03 45 f0 90 13 bb 00 00 40 00 90 13 03 58 0c 90 13 8b 15 ?? ?? ?? ?? 90 13 03 50 14 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}