
rule Trojan_BAT_Shelm_SPPX_MTB{
	meta:
		description = "Trojan:BAT/Shelm.SPPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 04 00 "
		
	strings :
		$a_03_0 = {13 04 06 28 90 01 03 0a 73 13 00 00 0a 13 05 11 05 11 04 08 09 6f 90 01 03 0a 16 73 15 00 00 0a 13 06 11 06 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}