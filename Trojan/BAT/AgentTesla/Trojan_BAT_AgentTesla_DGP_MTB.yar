
rule Trojan_BAT_AgentTesla_DGP_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DGP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {16 0c 2b 43 00 07 02 6f 90 01 03 0a 18 5b 59 0d 02 6f 90 01 03 0a 18 5b 08 59 13 04 02 07 08 6f 90 01 03 0a 13 05 12 05 28 90 01 03 0a 13 06 06 09 11 04 22 90 01 04 11 06 59 6c 6f 90 01 03 06 00 00 08 17 58 0c 08 02 6f 90 00 } //01 00 
		$a_01_1 = {47 65 74 50 69 78 65 6c } //01 00  GetPixel
		$a_01_2 = {47 65 74 42 72 69 67 68 74 6e 65 73 73 } //01 00  GetBrightness
		$a_01_3 = {47 65 74 54 79 70 65 } //00 00  GetType
	condition:
		any of ($a_*)
 
}