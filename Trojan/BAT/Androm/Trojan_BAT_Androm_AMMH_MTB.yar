
rule Trojan_BAT_Androm_AMMH_MTB{
	meta:
		description = "Trojan:BAT/Androm.AMMH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 13 04 11 04 72 90 01 01 00 00 70 28 90 01 01 00 00 0a 72 90 01 01 00 00 70 28 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 13 05 73 90 01 01 00 00 0a 13 06 07 73 90 01 01 00 00 0a 13 07 11 07 11 05 16 73 90 01 01 00 00 0a 13 08 11 08 11 06 6f 90 01 01 00 00 0a 11 06 6f 90 01 01 00 00 0a 0b dd 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}