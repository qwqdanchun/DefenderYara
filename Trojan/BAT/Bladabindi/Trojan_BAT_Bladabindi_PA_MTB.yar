
rule Trojan_BAT_Bladabindi_PA_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 00 6e 00 74 00 72 00 79 00 50 00 6f 00 69 00 6e 00 74 00 } //01 00  EntryPoint
		$a_01_1 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 } //0a 00  Invoke
		$a_02_2 = {70 18 18 28 90 01 01 00 00 06 6f 90 01 01 00 00 0a 90 01 02 14 72 90 01 01 00 00 70 14 14 14 14 28 90 01 01 00 00 0a 14 72 90 01 01 00 00 70 18 8d 01 00 00 01 90 02 04 16 16 8c 90 01 01 00 00 01 a2 90 02 02 14 14 14 28 90 01 01 00 00 0a 90 02 02 2a 90 0a a0 00 28 90 01 01 00 00 06 90 01 01 28 90 01 01 00 00 0a 06 90 02 02 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 90 00 } //0a 00 
		$a_02_3 = {0a 0b 06 6f 90 01 01 00 00 0a 90 02 02 73 90 01 01 00 00 0a 0c 08 07 6f 90 01 01 00 00 0a 90 02 02 08 04 6f 90 01 01 00 00 0a 90 02 02 08 05 6f 90 01 01 00 00 0a 90 02 02 08 6f 90 01 01 00 00 0a 90 02 02 02 16 02 8e 69 6f 90 01 01 00 00 0a 90 02 02 0d 08 6f 90 01 01 00 00 0a 90 02 02 09 13 04 11 04 2a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}