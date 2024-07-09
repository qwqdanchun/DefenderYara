
rule Trojan_BAT_ArkeiStealer_AATB_MTB{
	meta:
		description = "Trojan:BAT/ArkeiStealer.AATB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {04 06 18 28 ?? 01 00 06 7e ?? 00 00 04 06 1b 28 ?? 01 00 06 7e ?? 00 00 04 06 28 ?? 01 00 06 0d 7e ?? 00 00 04 09 05 16 05 8e 69 28 ?? 01 00 06 2a } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}