
rule Trojan_BAT_Remcos_AQ_MTB{
	meta:
		description = "Trojan:BAT/Remcos.AQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {00 1f fe 0a 18 0c 1f 0c 8d 90 01 03 01 25 16 72 90 01 03 70 72 90 01 03 70 7e 90 01 03 0a 6f 90 01 03 0a 72 90 01 03 70 72 90 01 03 70 7e 90 1b 03 0a 6f 90 1b 04 0a 7e 90 1b 03 0a 6f 90 1b 04 0a 72 90 01 03 70 72 90 01 03 70 7e 90 1b 03 0a 6f 90 01 03 0a 72 90 01 03 70 72 90 01 03 70 7e 90 1b 03 0a 6f 90 1b 04 0a 7e 90 1b 03 0a 6f 90 1b 04 0a 7e 90 1b 03 0a 6f 90 1b 04 0a 72 90 01 03 70 72 90 01 03 70 7e 90 1b 03 0a 6f 90 1b 04 0a 72 90 01 03 70 72 90 01 03 70 7e 90 1b 03 0a 6f 90 1b 04 0a 7e 90 1b 03 0a 6f 90 1b 04 0a 72 90 01 03 70 72 90 01 03 70 7e 90 1b 03 0a 6f 90 1b 04 0a 72 90 01 03 70 72 90 01 03 70 7e 90 1b 03 0a 6f 90 01 03 0a 7e 90 1b 03 0a 6f 90 1b 04 0a 7e 90 1b 03 0a 6f 90 1b 04 0a 7e 90 1b 03 0a 6f 90 01 03 0a 28 90 01 03 0a a2 25 17 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}