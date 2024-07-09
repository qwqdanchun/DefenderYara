
rule VirTool_BAT_Obfuscator_AP{
	meta:
		description = "VirTool:BAT/Obfuscator.AP,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {11 06 17 58 13 06 11 06 11 05 8e 69 32 cb 11 04 17 58 13 04 11 04 09 8e 69 32 ac 14 2a 08 2a } //1
		$a_03_1 = {03 06 03 8e 69 5d 91 06 04 58 03 8e 69 58 1f 1f 5f 63 20 ff 00 00 00 5f d2 61 d2 81 ?? ?? ?? ?? 06 17 58 0a 06 02 8e 69 32 c9 02 2a } //1
		$a_03_2 = {1f 7f 5f 19 2e 1d 11 ?? 1d 64 20 ff ff 01 00 5f 13 ?? 11 ?? 18 64 1f 1f 5f 18 58 13 ?? ?? 19 58 ?? 2b 19 } //1
		$a_03_3 = {17 5f 2d 1d 11 (07|08) 20 ff ff 00 00 5f 1c 64 13 90 03 01 01 0b 0c 11 (07|08) 18 64 1f 0f 5f 19 58 13 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}