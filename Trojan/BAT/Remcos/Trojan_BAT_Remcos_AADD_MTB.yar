
rule Trojan_BAT_Remcos_AADD_MTB{
	meta:
		description = "Trojan:BAT/Remcos.AADD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {0a 04 16 02 8e 69 6f 90 01 01 00 00 0a 0a 2b 00 06 2a 90 00 } //01 00 
		$a_01_1 = {24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 43 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 72 00 65 00 61 00 74 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 65 00 49 00 6e 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 73 00 74 00 61 00 6e 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 63 00 65 00 } //01 00  $$$$$$$$$$C$$$$$$$$$$$$reat$$$$$$$eIn$$$$$$$$$$stan$$$$$$$$$$$ce
		$a_01_2 = {24 00 24 00 24 00 24 00 24 00 53 00 79 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 73 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 74 00 65 00 6d 00 2e 00 41 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 63 00 74 00 69 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 76 00 61 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 74 00 6f 00 72 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 } //00 00  $$$$$Sy$$$$$$$$$$$s$$$$$$$$tem.A$$$$$$$$$$$$$$cti$$$$$$$va$$$$$$$$$$$$$$$tor$$$$$$$$$$$
	condition:
		any of ($a_*)
 
}