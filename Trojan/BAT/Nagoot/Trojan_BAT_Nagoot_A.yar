
rule Trojan_BAT_Nagoot_A{
	meta:
		description = "Trojan:BAT/Nagoot.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {91 07 1b 58 06 8e 69 58 1f 1f 5f 63 20 ff 00 00 00 5f d2 61 d2 81 90 01 04 07 17 58 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}