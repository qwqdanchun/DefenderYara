
rule Trojan_BAT_DCRat_K_MTB{
	meta:
		description = "Trojan:BAT/DCRat.K!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {07 02 12 02 12 03 6f ?? 00 00 0a 09 8e 69 20 ?? ?? ?? ?? 20 ?? ?? ?? ?? 28 ?? 00 00 06 59 8d ?? 00 00 01 13 04 09 20 ?? ?? ?? ?? 20 ?? ?? ?? ?? 28 ?? 00 00 06 11 04 20 ?? ?? ?? ?? 20 ?? ?? ?? ?? 28 ?? 00 00 06 11 04 8e 69 28 ?? 00 00 0a 11 04 13 05 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}