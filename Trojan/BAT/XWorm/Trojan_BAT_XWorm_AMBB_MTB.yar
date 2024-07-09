
rule Trojan_BAT_XWorm_AMBB_MTB{
	meta:
		description = "Trojan:BAT/XWorm.AMBB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 "
		
	strings :
		$a_03_0 = {06 07 02 17 8d ?? 00 00 01 0c 08 16 07 8c ?? 00 00 01 a2 08 14 28 } //2
		$a_03_1 = {16 17 9c 11 ?? 28 ?? 00 00 0a 28 ?? 00 00 0a 14 72 ?? ?? 00 70 16 8d ?? ?? ?? ?? 14 14 14 28 ?? 00 00 0a 28 ?? 00 00 0a 14 72 ?? ?? 00 70 18 8d ?? ?? ?? ?? 0d 09 16 14 a2 09 17 14 a2 09 14 14 14 17 } //2
		$a_80_2 = {58 6f 72 4f 62 6a 65 63 74 } //XorObject  1
		$a_00_3 = {45 00 6e 00 74 00 72 00 79 00 50 00 6f 00 69 00 6e 00 74 00 } //1 EntryPoint
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_80_2  & 1)*1+(#a_00_3  & 1)*1) >=6
 
}