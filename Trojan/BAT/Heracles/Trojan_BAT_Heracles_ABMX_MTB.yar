
rule Trojan_BAT_Heracles_ABMX_MTB{
	meta:
		description = "Trojan:BAT/Heracles.ABMX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {02 08 02 8e 69 5d 7e ?? ?? ?? 04 02 08 02 8e 69 5d 91 07 08 07 8e 69 5d 91 61 28 ?? ?? ?? 06 02 08 1d 58 1c 59 02 8e 69 5d 91 59 20 ?? ?? ?? 00 58 19 58 20 ?? ?? ?? 00 5d d2 9c 08 17 58 16 2c 3f 26 08 6a 02 8e } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}