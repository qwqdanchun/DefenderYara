
rule Trojan_Linux_Zonsterarch_A{
	meta:
		description = "Trojan:Linux/Zonsterarch.A,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 04 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {7a 69 70 6d 6f 6e 73 74 65 72 2e 72 75 } //01 00 
		$a_01_1 = {72 75 6c 65 73 3a 20 75 72 6c 3d 20 25 40 2c 20 73 6d 73 63 6f 75 6e 74 3d 20 25 69 } //01 00 
		$a_01_2 = {53 4d 53 20 66 6f 72 20 61 63 74 69 76 61 74 69 6f 6e } //01 00 
		$a_01_3 = {6f 6e 63 6c 69 63 6b 3d 66 75 6e 63 74 69 6f 6e 28 29 7b 69 66 28 63 6f 6e 73 6f 6c 65 29 7b 63 6f 6e 73 6f 6c 65 2e 6c 6f 67 28 27 7a 6d 5f 73 6d 73 69 6e 66 6f } //01 00 
		$a_01_4 = {7a 6d 5f 65 6d 70 61 79 5f 6c 69 6e 6b } //01 00 
		$a_01_5 = {7a 6d 5f 61 72 63 6f 70 65 6e } //01 00 
		$a_01_6 = {63 66 67 5f 61 72 63 68 69 76 65 5f 6e 61 6d 65 } //00 00 
		$a_00_7 = {5d 04 00 } //00 37 
	condition:
		any of ($a_*)
 
}