
rule Trojan_BAT_NjRat_CNC_MTB{
	meta:
		description = "Trojan:BAT/NjRat.CNC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {02 11 04 17 59 6f 90 01 04 16 6f 90 01 04 28 90 01 04 6a 03 04 08 5d 8c 90 01 04 28 90 01 04 28 90 01 04 6e 59 0b 06 07 d1 8c 90 01 04 28 90 01 04 0a 00 11 04 17 58 13 04 11 04 09 fe 02 16 fe 01 13 07 11 07 2d 90 00 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}