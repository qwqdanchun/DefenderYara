
rule Trojan_BAT_Fonper_A{
	meta:
		description = "Trojan:BAT/Fonper.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 00 79 00 50 00 68 00 6f 00 6e 00 65 00 49 00 6e 00 66 00 6f 00 50 00 65 00 72 00 69 00 6f 00 64 00 69 00 63 00 41 00 67 00 65 00 6e 00 74 00 } //01 00 
		$a_01_1 = {4d 00 79 00 50 00 68 00 6f 00 6e 00 65 00 49 00 6e 00 66 00 6f 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 49 00 6e 00 74 00 65 00 6e 00 73 00 69 00 76 00 65 00 41 00 67 00 65 00 6e 00 74 00 } //01 00 
		$a_01_2 = {4d 00 79 00 20 00 50 00 68 00 6f 00 6e 00 65 00 20 00 49 00 6e 00 66 00 6f 00 20 00 61 00 20 00 72 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 2d 00 69 00 6e 00 74 00 65 00 6e 00 73 00 69 00 76 00 65 00 20 00 74 00 61 00 73 00 6b 00 2e 00 } //01 00 
		$a_01_3 = {42 00 4e 00 53 00 20 00 45 00 72 00 72 00 6f 00 72 00 3a 00 20 00 54 00 68 00 65 00 20 00 61 00 63 00 74 00 69 00 6f 00 6e 00 20 00 69 00 73 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 64 00 } //01 00 
		$a_01_4 = {42 00 4e 00 53 00 20 00 45 00 72 00 72 00 6f 00 72 00 3a 00 20 00 54 00 68 00 65 00 20 00 6d 00 61 00 78 00 69 00 6d 00 75 00 6d 00 20 00 6e 00 75 00 6d 00 62 00 65 00 72 00 20 00 6f 00 66 00 20 00 53 00 63 00 68 00 65 00 64 00 75 00 6c 00 65 00 64 00 41 00 63 00 74 00 69 00 6f 00 6e 00 73 00 20 00 6f 00 66 00 20 00 74 00 68 00 69 00 73 00 20 00 74 00 79 00 70 00 65 00 20 00 68 00 61 00 76 00 65 00 20 00 61 00 6c 00 72 00 65 00 61 00 64 00 79 00 20 00 62 00 65 00 65 00 6e 00 20 00 61 00 64 00 64 00 65 00 64 00 2e 00 } //01 00 
		$a_01_5 = {46 69 72 6d 77 61 72 65 20 72 65 76 69 73 69 6f 6e } //00 00 
		$a_00_6 = {5d 04 00 00 } //7f 40 
	condition:
		any of ($a_*)
 
}