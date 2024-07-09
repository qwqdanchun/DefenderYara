
rule VirTool_BAT_CryptInject_YV_MTB{
	meta:
		description = "VirTool:BAT/CryptInject.YV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {1f 10 5d 91 61 d2 52 00 ?? 17 d6 ?? ?? ?? fe 02 16 fe 01 13 ?? 11 ?? 2d ?? 06 13 ?? 2b 00 11 ?? 2a } //1
		$a_02_1 = {14 fe 01 0d 09 ?? ?? 00 06 7b ?? ?? ?? 04 28 ?? ?? ?? 06 13 04 06 11 04 28 ?? ?? ?? 06 28 ?? ?? ?? 06 7d ?? ?? ?? 04 00 06 7b ?? ?? ?? 04 28 ?? ?? ?? 0a 0b 07 14 72 ?? ?? ?? 70 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}