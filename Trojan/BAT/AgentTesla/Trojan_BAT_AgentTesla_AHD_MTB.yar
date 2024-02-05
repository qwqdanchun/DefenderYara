
rule Trojan_BAT_AgentTesla_AHD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AHD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {07 02 08 18 5a 18 6f 90 01 03 0a 1f 10 28 90 01 03 0a 6f 90 01 03 0a 00 00 08 17 58 0c 08 06 fe 04 0d 09 2d da 90 00 } //0a 00 
		$a_03_1 = {16 9a 13 05 11 05 14 72 90 01 03 70 17 8d 90 01 03 01 25 16 72 90 01 03 70 a2 14 14 28 90 01 03 0a 13 06 11 06 14 72 90 01 03 70 18 8d 90 01 03 01 25 16 16 8c 90 01 03 01 a2 25 17 06 a2 14 14 90 00 } //02 00 
		$a_80_2 = {47 65 74 4d 65 74 68 6f 64 } //GetMethod  02 00 
		$a_80_3 = {49 6e 76 6f 6b 65 } //Invoke  02 00 
		$a_80_4 = {52 65 70 6c 61 63 65 } //Replace  02 00 
		$a_80_5 = {54 6f 43 68 61 72 41 72 72 61 79 } //ToCharArray  00 00 
	condition:
		any of ($a_*)
 
}