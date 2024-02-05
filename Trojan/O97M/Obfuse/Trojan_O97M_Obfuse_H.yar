
rule Trojan_O97M_Obfuse_H{
	meta:
		description = "Trojan:O97M/Obfuse.H,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 74 74 72 69 62 75 74 65 20 56 42 5f 43 6f 6e 74 72 6f 6c 20 3d 20 22 54 65 78 74 42 6f 78 90 01 01 2c 20 30 2c 20 90 01 01 2c 20 4d 53 46 6f 72 6d 73 2c 20 54 65 78 74 42 6f 78 22 90 00 } //01 00 
		$a_03_1 = {53 65 74 20 90 02 06 20 3d 20 90 02 06 2e 63 72 65 61 74 65 45 6c 65 6d 65 6e 74 28 90 02 06 29 90 00 } //01 00 
		$a_03_2 = {2e 64 61 74 61 54 79 70 65 20 3d 20 90 02 06 0d 0a 20 20 90 02 06 2e 54 65 78 74 20 3d 20 90 02 06 0d 0a 20 20 90 02 06 20 3d 20 53 74 72 43 6f 6e 76 28 90 02 06 2e 6e 6f 64 65 54 79 70 65 64 56 61 6c 75 65 2c 20 76 62 55 6e 69 63 6f 64 65 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_O97M_Obfuse_H_2{
	meta:
		description = "Trojan:O97M/Obfuse.H,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 74 74 72 69 62 75 74 65 20 56 42 5f 43 6f 6e 74 72 6f 6c 20 3d 20 22 43 6f 6d 6d 61 6e 64 42 75 74 74 6f 6e 31 2c 20 90 01 01 2c 20 90 01 01 2c 20 4d 53 46 6f 72 6d 73 2c 20 43 6f 6d 6d 61 6e 64 42 75 74 74 6f 6e 22 90 00 } //01 00 
		$a_03_1 = {53 65 74 20 90 02 06 20 3d 20 90 02 06 2e 63 72 65 61 74 65 45 6c 65 6d 65 6e 74 28 90 02 06 29 90 00 } //01 00 
		$a_03_2 = {2e 64 61 74 61 54 79 70 65 20 3d 20 90 02 06 0d 0a 20 20 90 02 06 2e 54 65 78 74 20 3d 20 90 02 06 0d 0a 20 20 90 02 06 20 3d 20 53 74 72 43 6f 6e 76 28 90 02 06 2e 6e 6f 64 65 54 79 70 65 64 56 61 6c 75 65 2c 20 76 62 55 6e 69 63 6f 64 65 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}