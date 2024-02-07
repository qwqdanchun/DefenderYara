
rule Trojan_BAT_Improv_A{
	meta:
		description = "Trojan:BAT/Improv.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {37 65 31 61 61 36 30 32 2d 31 36 64 63 2d 34 35 31 61 2d 38 65 35 34 2d 31 37 63 39 66 39 35 39 61 31 39 63 } //01 00  7e1aa602-16dc-451a-8e54-17c9f959a19c
		$a_01_1 = {43 6f 70 79 72 69 67 68 74 20 49 6d 70 72 6f 76 50 6f 73 65 20 32 30 32 31 } //01 00  Copyright ImprovPose 2021
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 74 00 65 00 6e 00 73 00 6f 00 72 00 66 00 6c 00 6f 00 77 00 2e 00 6f 00 72 00 67 00 2f 00 64 00 6f 00 63 00 73 00 2f 00 } //01 00  http://tensorflow.org/docs/
		$a_01_3 = {54 00 72 00 61 00 69 00 6e 00 20 00 6d 00 6f 00 64 00 65 00 6c 00 } //00 00  Train model
	condition:
		any of ($a_*)
 
}