
rule Backdoor_Linux_Mirai_bc_MTB{
	meta:
		description = "Backdoor:Linux/Mirai.bc!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_02_0 = {62 69 6e 2f 62 75 73 79 62 6f 78 20 77 67 65 74 20 90 01 04 3a 2f 2f 90 02 03 2e 90 02 03 2e 90 02 03 2e 90 02 03 2f 62 69 6e 73 2f 6d 69 72 61 69 2e 6d 69 70 73 20 2d 4f 20 66 61 67 67 58 44 3b 20 2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 63 68 6d 6f 64 20 37 37 37 20 66 61 67 67 58 44 3b 20 2e 2f 66 61 67 67 58 44 29 3c 2f 4e 65 77 53 74 61 74 75 73 55 52 4c 3e 3c 4e 65 77 44 6f 77 6e 6c 6f 61 64 55 52 4c 3e 90 00 } //01 00 
		$a_02_1 = {3c 4e 65 77 49 6e 74 65 72 6e 61 6c 43 6c 69 65 6e 74 3e 60 63 64 20 2f 76 61 72 3b 20 72 6d 20 2d 72 66 20 6e 69 67 3b 20 77 67 65 74 20 90 01 04 3a 2f 2f 90 02 03 2e 90 02 03 2e 90 02 03 2e 90 02 03 2f 72 74 62 69 6e 20 2d 4f 20 6e 69 67 3b 20 63 68 6d 6f 64 20 37 37 37 20 6e 69 67 3b 20 2e 2f 6e 69 67 90 00 } //01 00 
		$a_00_2 = {49 4e 46 45 43 54 45 44 } //01 00 
		$a_00_3 = {6b 69 6c 6c 65 72 5f 6b 69 6c 6c 5f 62 79 5f 70 6f 72 74 } //01 00 
		$a_00_4 = {72 65 61 6c 74 65 6b 73 63 61 6e 6e 65 72 5f 73 63 61 6e 6e 65 72 5f 6b 69 6c 6c } //01 00 
		$a_00_5 = {61 6b 34 37 74 65 6c 73 63 61 6e } //01 00 
		$a_00_6 = {64 6e 73 66 6c 6f 6f 64 } //00 00 
	condition:
		any of ($a_*)
 
}