
rule Trojan_BAT_Dropper_PSJ_MTB{
	meta:
		description = "Trojan:BAT/Dropper.PSJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 07 00 00 05 00 "
		
	strings :
		$a_03_0 = {00 28 12 00 00 06 28 27 90 01 03 13 06 11 05 11 06 16 11 06 8e 69 6f 28 90 01 03 00 11 05 6f 29 90 01 03 00 11 05 6f 2a 90 01 03 00 00 de 0d 90 00 } //01 00 
		$a_01_1 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_01_2 = {47 65 74 54 65 6d 70 50 61 74 68 } //01 00  GetTempPath
		$a_01_3 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //01 00  get_Assembly
		$a_01_4 = {6c 00 64 00 6b 00 6c 00 68 00 64 00 6c 00 6a 00 39 00 38 00 66 00 68 00 76 00 } //01 00  ldklhdlj98fhv
		$a_01_5 = {74 00 72 00 61 00 66 00 66 00 69 00 63 00 6c 00 69 00 67 00 68 00 74 00 79 00 65 00 6c 00 6c 00 6f 00 77 00 } //01 00  trafficlightyellow
		$a_01_6 = {74 00 72 00 61 00 66 00 66 00 69 00 63 00 6c 00 69 00 67 00 68 00 74 00 67 00 72 00 65 00 65 00 6e 00 } //00 00  trafficlightgreen
	condition:
		any of ($a_*)
 
}