
rule Trojan_BAT_Plimrost_B{
	meta:
		description = "Trojan:BAT/Plimrost.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {16 7e 15 00 00 04 a2 25 17 7e 17 00 00 04 a2 25 18 7e 19 00 00 04 a2 25 19 7e 1b 00 00 04 a2 25 1a 7e 1d 00 00 04 a2 25 1b 7e 1f 00 00 04 a2 } //01 00 
		$a_01_1 = {00 00 17 2b 0d 00 2c 03 00 2b 0d 17 2c 07 2b f0 2b 02 2b f1 00 16 2d ea 00 00 } //01 00 
		$a_03_2 = {0c 08 17 58 0c 08 07 61 0c 08 17 59 0c 08 07 59 0c 08 07 58 0c 08 20 90 01 04 61 0c 08 20 90 01 04 58 0c 06 16 07 6f 90 00 } //01 00 
		$a_01_3 = {15 7b 00 30 00 7d 00 7b 00 31 00 7d 00 2e 00 65 00 78 00 65 00 00 } //00 00 
		$a_00_4 = {5d 04 00 } //00 c1 
	condition:
		any of ($a_*)
 
}