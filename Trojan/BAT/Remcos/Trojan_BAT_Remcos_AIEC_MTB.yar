
rule Trojan_BAT_Remcos_AIEC_MTB{
	meta:
		description = "Trojan:BAT/Remcos.AIEC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {16 0d 2b 4e 00 16 13 04 2b 34 00 08 09 11 04 28 90 01 03 06 28 90 01 03 06 00 28 90 01 03 06 28 90 01 03 06 28 90 00 } //01 00 
		$a_01_1 = {4d 00 61 00 74 00 63 00 68 00 69 00 6e 00 67 00 47 00 61 00 6d 00 65 00 } //01 00 
		$a_01_2 = {47 65 74 50 69 78 65 6c } //00 00 
	condition:
		any of ($a_*)
 
}