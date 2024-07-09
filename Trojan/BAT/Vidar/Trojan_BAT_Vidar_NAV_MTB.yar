
rule Trojan_BAT_Vidar_NAV_MTB{
	meta:
		description = "Trojan:BAT/Vidar.NAV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_03_0 = {73 42 00 00 0a fe ?? ?? 00 fe ?? ?? 00 28 ?? ?? ?? 0a 25 26 fe ?? ?? 00 28 ?? ?? ?? 0a 25 26 fe ?? ?? 00 20 ?? ?? ?? 00 fe ?? ?? 00 8e 69 6f ?? ?? ?? 0a 25 26 fe ?? ?? 00 28 ?? ?? ?? 0a 25 26 fe ?? ?? 00 6f ?? ?? ?? 0a } //5
		$a_03_1 = {fe 0c 00 00 fe 0c 01 00 20 ?? ?? ?? 00 6f ?? ?? ?? 0a 25 26 fe ?? ?? 00 fe ?? ?? 00 20 ?? ?? ?? 00 28 ?? ?? ?? 0a 25 26 fe ?? ?? 00 fe ?? ?? 00 28 ?? ?? ?? 0a 25 26 fe ?? ?? 00 fe ?? ?? 00 28 ?? ?? ?? 0a fe ?? ?? 00 fe ?? ?? 00 dd ?? ?? ?? 00 } //5
		$a_01_2 = {53 00 68 00 69 00 62 00 61 00 57 00 65 00 78 00 20 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 } //1 ShibaWex Project
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_01_2  & 1)*1) >=11
 
}