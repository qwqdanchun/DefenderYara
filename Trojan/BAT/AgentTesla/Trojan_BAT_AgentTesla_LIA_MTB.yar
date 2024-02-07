
rule Trojan_BAT_AgentTesla_LIA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LIA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 0a 00 "
		
	strings :
		$a_03_0 = {13 04 2b 31 00 08 09 11 04 6f 90 01 03 0a 13 05 08 09 11 04 6f 90 01 03 0a 13 06 16 13 07 02 11 06 28 90 01 03 06 13 07 07 06 11 07 d2 9c 00 11 04 17 58 13 04 11 04 17 fe 04 13 08 11 08 2d c4 90 00 } //0a 00 
		$a_03_1 = {13 05 2b 33 00 09 11 04 11 05 6f 90 01 03 0a 13 06 09 11 04 11 05 6f 90 01 03 0a 13 07 16 13 08 02 11 07 28 90 01 03 06 13 08 08 07 11 08 d2 9c 00 11 05 17 58 13 05 11 05 17 fe 04 13 09 11 09 2d 90 00 } //01 00 
		$a_01_2 = {47 65 74 50 69 78 65 6c } //00 00  GetPixel
	condition:
		any of ($a_*)
 
}