
rule Trojan_BAT_AveMaria_NEDQ_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.NEDQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {36 36 30 34 31 38 39 62 2d 62 33 63 37 2d 34 35 63 30 2d 62 34 61 66 2d 62 30 61 63 30 65 62 66 30 62 35 38 } //03 00  6604189b-b3c7-45c0-b4af-b0ac0ebf0b58
		$a_01_1 = {33 2e 35 38 2e 34 30 38 31 2e 32 34 35 38 36 } //03 00  3.58.4081.24586
		$a_01_2 = {50 61 69 6e 74 2e 4e 45 54 } //03 00  Paint.NET
		$a_01_3 = {44 00 65 00 62 00 75 00 67 00 67 00 65 00 72 00 20 00 64 00 65 00 74 00 65 00 63 00 74 00 65 00 64 00 20 00 28 00 4d 00 61 00 6e 00 61 00 67 00 65 00 64 00 29 00 } //01 00  Debugger detected (Managed)
		$a_01_4 = {43 6f 6e 66 75 73 65 72 20 76 31 2e 39 2e 30 2e 30 } //01 00  Confuser v1.9.0.0
		$a_01_5 = {52 50 46 3a 53 6d 61 72 74 41 73 73 65 6d 62 6c 79 } //00 00  RPF:SmartAssembly
	condition:
		any of ($a_*)
 
}