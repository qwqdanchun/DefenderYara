
rule Trojan_BAT_DCRat_NTY_MTB{
	meta:
		description = "Trojan:BAT/DCRat.NTY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {28 04 00 00 06 28 90 01 03 2b 74 90 01 03 01 72 90 01 03 70 6f 90 01 03 0a 2a 90 00 } //01 00 
		$a_01_1 = {51 72 6c 79 64 63 73 7a 6f 6f } //00 00  Qrlydcszoo
	condition:
		any of ($a_*)
 
}