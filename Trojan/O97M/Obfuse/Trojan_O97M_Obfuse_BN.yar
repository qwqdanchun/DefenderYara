
rule Trojan_O97M_Obfuse_BN{
	meta:
		description = "Trojan:O97M/Obfuse.BN,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {50 72 69 76 61 74 65 20 53 75 62 20 4c 65 72 63 65 6e 74 5f 43 68 61 6e 67 65 28 29 0d 0a 44 69 6d 20 69 6e 64 31 20 41 73 20 53 74 72 69 6e 67 0d 0a 69 6e 64 31 20 3d 20 22 31 30 30 36 22 0d 0a 45 6e 64 20 53 75 62 } //01 00 
		$a_00_1 = {2e 54 65 78 74 31 2c 20 4c 65 6e 28 } //01 00 
		$a_02_2 = {20 3d 20 4c 65 6e 28 90 02 20 2e 4c 61 73 74 54 65 78 74 29 90 00 } //01 00 
		$a_02_3 = {20 54 68 65 6e 20 53 68 65 6c 6c 20 2e 4c 61 73 74 54 65 78 74 2c 20 90 02 0f 0d 0a 45 6e 64 20 57 69 74 68 0d 0a 45 6e 64 20 53 75 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}