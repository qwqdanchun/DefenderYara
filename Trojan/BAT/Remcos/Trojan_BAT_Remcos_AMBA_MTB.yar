
rule Trojan_BAT_Remcos_AMBA_MTB{
	meta:
		description = "Trojan:BAT/Remcos.AMBA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {05 8e 69 6f 90 01 01 00 00 0a 0a 06 0b 2b 00 07 2a 90 00 } //01 00 
		$a_03_1 = {04 06 25 0b 6f 90 01 01 00 00 0a 00 07 0c 2b 00 08 2a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}