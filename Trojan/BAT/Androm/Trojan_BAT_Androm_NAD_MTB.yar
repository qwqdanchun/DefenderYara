
rule Trojan_BAT_Androm_NAD_MTB{
	meta:
		description = "Trojan:BAT/Androm.NAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {1f 10 6f 82 00 00 06 20 ?? ?? ?? 00 38 ?? ?? ?? ff 11 07 16 8c ?? ?? ?? 01 7e ?? ?? ?? 04 13 10 11 10 6f ?? ?? ?? 0a 26 38 ?? ?? ?? ff 02 7b ?? ?? ?? 04 16 28 ?? ?? ?? 06 20 ?? ?? ?? 00 38 ?? ?? ?? ff } //5
		$a_01_1 = {47 4e 4f 4c 43 2e 67 2e 72 65 73 6f 75 72 63 65 73 } //1 GNOLC.g.resources
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}