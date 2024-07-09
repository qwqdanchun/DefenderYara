
rule VirTool_Win32_Obfuscator_IM{
	meta:
		description = "VirTool:Win32/Obfuscator.IM,SIGNATURE_TYPE_PEHSTR_EXT,63 00 0d 00 06 00 00 "
		
	strings :
		$a_01_0 = {57 83 cd ff e8 05 00 00 00 e9 } //10
		$a_03_1 = {ff ff 00 c6 45 ?? 44 c6 45 ?? 65 c6 45 ?? 6c c6 45 ?? 65 c6 45 ?? 74 c6 45 ?? 65 c6 45 ?? 46 c6 45 ?? 69 c6 45 ?? 6c c6 45 ?? 65 c6 45 ?? 41 c6 45 ?? 00 } //1
		$a_03_2 = {fe ff ff c6 45 ?? 44 c6 45 ?? 65 c6 45 ?? 6c c6 45 ?? 65 c6 45 ?? 74 c6 45 ?? 65 c6 45 ?? 46 c6 45 ?? 69 c6 45 ?? 6c c6 45 ?? 65 c6 45 ?? 41 c6 45 ?? 00 } //1
		$a_03_3 = {8b 08 89 4d ?? 8b 95 ?? ?? ?? ?? 8b 02 89 45 f8 8d 4d ?? 51 ff 55 90 1b 00 89 45 ?? 8d 95 ?? ?? ?? ?? 52 8b 45 ?? 50 ff 55 f8 89 45 ?? 8d [0-05] 51 8b 55 90 1b 04 52 ff 55 f8 } //1
		$a_03_4 = {ff ff 47 c6 85 ?? ?? ff ff 65 c6 85 ?? ?? ff ff 74 c6 85 ?? ?? ff ff 4c c6 85 ?? ?? ff ff 61 c6 85 ?? ?? ff ff 73 c6 85 ?? ?? ff ff 74 c6 85 ?? ?? ff ff 45 } //1
		$a_03_5 = {ff ff 74 c6 85 ?? ?? ff ff 54 c6 85 ?? ?? ff ff 65 c6 85 ?? ?? ff ff 6d c6 85 ?? ?? ff ff 70 c6 85 ?? ?? ff ff 50 c6 85 ?? ?? ff ff 61 } //1
	condition:
		((#a_01_0  & 1)*10+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=13
 
}