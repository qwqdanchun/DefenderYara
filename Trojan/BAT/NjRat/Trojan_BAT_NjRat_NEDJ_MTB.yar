
rule Trojan_BAT_NjRat_NEDJ_MTB{
	meta:
		description = "Trojan:BAT/NjRat.NEDJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 03 00 00 0a 00 "
		
	strings :
		$a_03_0 = {13 0d 08 17 d6 0c 00 08 09 fe 02 16 fe 01 13 10 11 10 3a 53 ff ff ff 28 90 01 01 00 00 0a 11 0d 28 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 0a 06 14 90 00 } //02 00 
		$a_01_1 = {45 00 6e 00 74 00 72 00 79 00 50 00 6f 00 69 00 6e 00 74 00 } //02 00  EntryPoint
		$a_01_2 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 } //00 00  Invoke
	condition:
		any of ($a_*)
 
}