
rule Trojan_BAT_Remcos_AOBV_MTB{
	meta:
		description = "Trojan:BAT/Remcos.AOBV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {06 08 06 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 06 17 6f 90 01 03 0a 28 90 01 03 06 0d 07 06 6f 90 00 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00 
	condition:
		any of ($a_*)
 
}