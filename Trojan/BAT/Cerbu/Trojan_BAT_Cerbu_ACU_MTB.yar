
rule Trojan_BAT_Cerbu_ACU_MTB{
	meta:
		description = "Trojan:BAT/Cerbu.ACU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {16 0a 2b 39 02 28 17 00 00 0a 72 01 00 00 70 06 17 58 0b 12 01 28 18 00 00 0a 28 19 00 00 0a 6f 1a 00 00 0a 28 10 00 00 06 72 0d 00 00 70 28 19 00 00 0a 6f 16 00 00 0a 00 06 17 58 0a 06 1c fe 04 0c 08 2d bf } //01 00 
		$a_01_1 = {48 00 65 00 61 00 6c 00 74 00 68 00 20 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 69 00 6e 00 67 00 20 00 41 00 70 00 70 00 20 00 69 00 73 00 20 00 61 00 20 00 63 00 6f 00 6d 00 70 00 72 00 65 00 68 00 65 00 6e 00 73 00 69 00 76 00 65 00 20 00 74 00 6f 00 6f 00 6c 00 20 00 66 00 6f 00 72 00 20 00 74 00 72 00 61 00 63 00 6b 00 69 00 6e 00 67 00 20 00 61 00 6e 00 64 00 20 00 69 00 6d 00 70 00 72 00 6f 00 76 00 69 00 6e 00 67 00 20 00 79 00 6f 00 75 00 72 00 20 00 6f 00 76 00 65 00 72 00 61 00 6c 00 6c 00 20 00 77 00 65 00 6c 00 6c 00 6e 00 65 00 73 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}