
rule Trojan_BAT_AsyncRAT_PTFW_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.PTFW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {72 79 25 00 70 28 90 01 01 01 00 06 08 75 0e 00 00 1b 28 90 01 01 01 00 06 a2 1d 13 07 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}