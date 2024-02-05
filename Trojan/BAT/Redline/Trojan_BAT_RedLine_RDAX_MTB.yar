
rule Trojan_BAT_RedLine_RDAX_MTB{
	meta:
		description = "Trojan:BAT/RedLine.RDAX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {65 64 34 39 63 61 38 32 2d 37 32 61 33 2d 34 61 33 33 2d 61 64 30 35 2d 63 39 33 66 32 34 62 39 39 31 38 62 } //02 00 
		$a_03_1 = {91 61 d2 9c 90 01 0a 6f 94 00 00 0a 17 59 fe 01 0b 07 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}