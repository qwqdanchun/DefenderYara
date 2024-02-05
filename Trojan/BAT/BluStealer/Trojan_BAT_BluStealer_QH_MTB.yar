
rule Trojan_BAT_BluStealer_QH_MTB{
	meta:
		description = "Trojan:BAT/BluStealer.QH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 0a 00 "
		
	strings :
		$a_03_0 = {09 13 05 08 13 06 11 05 11 06 3d 90 01 03 00 72 90 01 03 70 02 09 18 6f 90 01 03 0a 28 90 01 03 0a 28 90 01 03 0a 03 11 04 6f 90 01 03 0a 28 90 01 03 0a 6a 61 69 28 90 01 03 0a 28 90 01 03 0a 13 07 06 11 07 6f 90 01 03 0a 26 11 04 03 90 00 } //01 00 
		$a_01_1 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00 
		$a_80_2 = {2e 6c 6e 6b } //.lnk  00 00 
	condition:
		any of ($a_*)
 
}