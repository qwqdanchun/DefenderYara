
rule Trojan_BAT_Bulz_GZF_MTB{
	meta:
		description = "Trojan:BAT/Bulz.GZF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {13 12 02 06 1f 18 11 05 58 58 1f 28 11 11 5a 58 11 12 16 1f 28 28 ?? ?? ?? 0a 00 11 12 1f 0c 28 ?? ?? ?? 0a 13 13 11 12 1f 10 28 ?? ?? ?? 0a 13 14 11 12 1f 14 28 ?? ?? ?? 0a 13 15 11 14 8d ?? ?? ?? ?? 13 16 02 11 15 11 16 16 11 16 8e 69 28 ?? ?? ?? 0a 00 11 0c 11 06 11 13 6a 58 11 16 11 16 8e 69 16 6a 28 ?? ?? ?? 06 26 00 11 11 17 58 68 13 11 11 11 11 04 fe 04 13 17 11 17 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}