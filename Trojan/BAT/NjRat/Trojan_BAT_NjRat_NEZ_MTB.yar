
rule Trojan_BAT_NjRat_NEZ_MTB{
	meta:
		description = "Trojan:BAT/NjRat.NEZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 05 00 00 05 00 "
		
	strings :
		$a_03_0 = {07 06 08 9a 6f 90 01 01 00 00 0a 28 90 01 01 00 00 0a 0b 08 17 58 0c 08 06 8e 69 17 59 fe 02 16 fe 01 13 07 11 07 2d dc 90 00 } //05 00 
		$a_03_1 = {07 28 09 00 00 0a 28 90 01 01 00 00 0a 28 90 01 01 00 00 06 0d 09 90 00 } //02 00 
		$a_01_2 = {4c 00 6f 00 61 00 64 00 } //02 00 
		$a_01_3 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 } //02 00 
		$a_01_4 = {65 00 6e 00 74 00 72 00 79 00 70 00 6f 00 69 00 6e 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}