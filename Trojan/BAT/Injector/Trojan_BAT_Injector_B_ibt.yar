
rule Trojan_BAT_Injector_B_ibt{
	meta:
		description = "Trojan:BAT/Injector.B!ibt,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {2b 0e 06 07 06 07 91 1f 90 01 01 61 d2 9c 07 17 58 0b 07 06 8e 69 32 ec 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}