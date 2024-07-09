
rule Trojan_O97M_IcedID_RA_MTB{
	meta:
		description = "Trojan:O97M/IcedID.RA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_03_0 = {53 75 62 20 77 69 6e 64 6f 77 5f 6f 70 65 6e 28 [0-1f] 29 0d 0a 53 65 74 20 [0-1f] 20 3d 20 4e 65 77 20 49 57 73 68 52 75 6e 74 69 6d 65 4c 69 62 72 61 72 79 2e 57 73 68 53 68 65 6c 6c 0d 0a 90 1b 01 2e 72 75 6e 20 22 73 63 72 69 70 74 72 75 6e 6e 65 72 20 2d 61 70 70 76 73 63 72 69 70 74 20 22 20 26 20 90 1b 00 2c 20 32 } //1
		$a_03_1 = {53 75 62 20 77 69 6e 64 6f 77 5f 6f 70 65 6e 28 [0-1f] 29 0d 0a 53 65 74 20 [0-1f] 20 3d 20 4e 65 77 20 49 57 73 68 52 75 6e 74 69 6d 65 4c 69 62 72 61 72 79 2e 57 73 68 53 68 65 6c 6c 0d 0a 90 1b 01 2e 72 75 6e 20 90 1b 00 2c 20 32 } //1
		$a_03_2 = {50 75 62 6c 69 63 20 53 75 62 20 [0-0f] 28 [0-1f] 2c 20 [0-0f] 29 0d 0a 90 1b 01 20 3d 20 22 2e 22 20 26 20 90 1b 01 20 26 20 90 1b 02 0d 0a 4f 70 65 6e 20 90 1b 01 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 0d 0a 50 72 69 6e 74 20 23 31 2c 20 52 65 70 6c 61 63 65 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 2c 20 22 [0-0f] 22 2c 20 22 22 29 0d 0a 43 6c 6f 73 65 20 23 31 0d 0a 77 69 6e 64 6f 77 5f 6f 70 65 6e 20 90 1b 01 0d 0a 45 6e 64 20 53 75 62 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=2
 
}
rule Trojan_O97M_IcedID_RA_MTB_2{
	meta:
		description = "Trojan:O97M/IcedID.RA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_03_0 = {53 75 62 20 77 69 6e 64 6f 77 5f 6f 70 65 6e 28 [0-1f] 29 0d 0a 53 65 74 20 [0-1f] 20 3d 20 4e 65 77 20 49 57 73 68 52 75 6e 74 69 6d 65 4c 69 62 72 61 72 79 2e 57 73 68 53 68 65 6c 6c 0d 0a 90 1b 01 2e 72 75 6e 20 22 73 63 72 69 70 74 72 75 6e 6e 65 72 20 2d 61 70 70 76 73 63 72 69 70 74 20 22 20 26 20 90 1b 00 2c 20 32 } //5
		$a_03_1 = {53 75 62 20 77 69 6e 64 6f 77 5f 6f 70 65 6e 28 [0-1f] 29 0d 0a 53 65 74 20 [0-1f] 20 3d 20 4e 65 77 20 49 57 73 68 52 75 6e 74 69 6d 65 4c 69 62 72 61 72 79 2e 57 73 68 53 68 65 6c 6c 0d 0a 90 1b 01 2e 72 75 6e 20 90 1b 00 2c 20 32 } //5
		$a_03_2 = {50 75 62 6c 69 63 20 53 75 62 20 [0-0f] 28 [0-1f] 2c 20 [0-0f] 29 0d 0a 90 1b 01 20 3d 20 22 2e 22 20 26 20 90 1b 01 20 26 20 90 1b 02 0d 0a 4f 70 65 6e 20 90 1b 01 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 0d 0a 50 72 69 6e 74 20 23 31 2c 20 52 65 70 6c 61 63 65 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 2c 20 22 [0-0f] 22 2c 20 22 22 29 0d 0a 43 6c 6f 73 65 20 23 31 0d 0a 77 69 6e 64 6f 77 5f 6f 70 65 6e 20 90 1b 01 0d 0a 45 6e 64 20 53 75 62 } //1
		$a_03_3 = {50 75 62 6c 69 63 20 53 75 62 20 61 75 74 6f 4f 70 65 6e 28 29 0d 0a [0-0a] 20 22 22 2c 20 22 48 54 41 22 0d 0a 45 6e 64 20 53 75 62 } //1
		$a_03_4 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 [0-1f] 28 29 0d 0a 90 1b 00 20 3d 20 52 65 70 6c 61 63 65 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 2c 20 22 [0-07] 22 2c 20 22 22 29 0d 0a 45 6e 64 20 46 75 6e 63 74 69 6f 6e 0d 0a 50 75 62 6c 69 63 20 53 75 62 20 [0-0f] 28 [0-1f] 2c 20 [0-1f] 29 0d 0a 90 1b 04 20 3d 20 22 2e 22 20 26 20 90 1b 04 20 26 20 90 1b 05 0d 0a 4f 70 65 6e 20 90 1b 04 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 0d 0a 50 72 69 6e 74 20 23 31 2c 20 90 1b 00 0d 0a 43 6c 6f 73 65 20 23 31 0d 0a 77 69 6e 64 6f 77 5f 6f 70 65 6e 20 90 1b 04 0d 0a 45 6e 64 20 53 75 62 } //1
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=6
 
}