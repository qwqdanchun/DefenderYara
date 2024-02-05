
rule Trojan_BAT_Reline_RPQ_MTB{
	meta:
		description = "Trojan:BAT/Reline.RPQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {54 61 6e 61 73 69 74 74 78 50 72 6f 74 65 63 74 6f 72 20 76 39 39 39 39 39 39 39 } //02 00 
		$a_03_1 = {68 00 74 00 74 00 70 90 03 01 03 00 00 73 00 3a 00 2f 00 2f 90 00 } //01 00 
		$a_01_2 = {2d 47 00 65 00 74 00 45 00 6e 00 76 00 69 00 72 00 6f 00 6e 00 6d 00 65 00 6e 00 74 00 56 00 61 00 72 00 69 00 61 00 62 00 6c 00 65 } //01 00 
		$a_01_3 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}