
rule Trojan_BAT_AgentTesla_DFD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DFD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {08 06 07 6f 90 01 03 0a 26 08 06 07 6f 90 01 03 0a 28 90 01 03 0a 13 08 11 04 09 11 08 d2 9c 07 17 58 0b 07 08 6f 90 01 03 0a 32 d4 09 17 58 0d 06 17 58 0a 90 00 } //0a 00 
		$a_03_1 = {16 13 05 2b 2f 00 09 11 04 11 05 6f 90 01 03 0a 13 08 09 11 04 11 05 6f 90 01 03 0a 13 09 11 09 28 90 01 03 0a 13 0a 08 07 11 0a d2 9c 00 11 05 17 58 13 05 11 05 09 6f 90 01 03 0a fe 04 13 0b 11 0b 2d 90 00 } //01 00 
		$a_01_2 = {47 65 74 50 69 78 65 6c } //01 00  GetPixel
		$a_01_3 = {54 6f 57 69 6e 33 32 } //01 00  ToWin32
		$a_01_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_5 = {47 65 74 54 79 70 65 } //00 00  GetType
	condition:
		any of ($a_*)
 
}