
rule Trojan_BAT_Chopper_AC_MTB{
	meta:
		description = "Trojan:BAT/Chopper.AC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {25 16 06 1f 12 28 90 01 03 0a 28 90 01 03 0a a2 25 17 06 1f 2c 28 90 01 03 0a 28 90 01 03 0a a2 25 18 06 1f 16 28 90 01 03 0a 28 07 00 00 0a a2 25 19 06 17 28 90 01 03 0a 28 90 01 03 0a a2 25 1a 06 1f 25 28 90 01 03 0a 28 90 01 03 0a a2 25 1b 06 1f 0a 28 90 00 } //01 00 
		$a_01_1 = {4c 00 61 00 54 00 6b 00 57 00 66 00 49 00 36 00 34 00 58 00 65 00 44 00 41 00 58 00 5a 00 53 00 36 00 70 00 55 00 31 00 4b 00 72 00 73 00 76 00 4c 00 41 00 63 00 47 00 48 00 37 00 41 00 5a 00 4f 00 51 00 58 00 6a 00 72 00 46 00 6b 00 54 00 38 00 31 00 36 00 52 00 6e 00 46 00 59 00 4a 00 51 00 52 00 } //00 00 
	condition:
		any of ($a_*)
 
}