
rule Trojan_BAT_AgentTesla_JSA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JSA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {70 0c 07 28 90 01 03 0a 03 6f 90 01 03 0a 6f 90 01 03 0a 0d 06 09 6f 90 01 03 0a 00 06 18 6f 90 01 03 0a 00 02 28 90 01 03 0a 13 04 28 90 01 03 0a 72 90 01 03 70 18 17 8d 90 01 03 01 25 16 06 6f 90 00 } //01 00 
		$a_01_1 = {24 61 37 66 34 65 65 62 37 2d 39 38 38 63 2d 34 34 35 34 2d 39 36 31 38 2d 39 62 30 62 32 66 39 31 61 36 30 65 } //01 00  $a7f4eeb7-988c-4454-9618-9b0b2f91a60e
		$a_01_2 = {5f 58 5f 58 30 46 54 5f 46 54 32 } //01 00  _X_X0FT_FT2
		$a_01_3 = {5f 58 5f 58 30 46 54 5f 46 54 31 } //01 00  _X_X0FT_FT1
		$a_01_4 = {5f 58 5f 54 53 53 33 } //00 00  _X_TSS3
	condition:
		any of ($a_*)
 
}