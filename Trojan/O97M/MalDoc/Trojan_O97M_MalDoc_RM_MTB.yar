
rule Trojan_O97M_MalDoc_RM_MTB{
	meta:
		description = "Trojan:O97M/MalDoc.RM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {63 72 65 61 74 65 28 22 72 75 6e 64 6c 6c 33 32 20 22 20 2b 20 90 02 1f 20 26 20 22 2e 44 4c 4c 2c 53 74 61 72 74 57 22 2c 90 00 } //01 00 
		$a_01_1 = {2e 63 72 65 61 74 65 28 22 72 75 6e 64 6c 6c 33 32 20 6e 74 6c 61 6e 75 69 2e 64 6c 6c 2c 53 68 61 72 65 43 72 65 61 74 65 } //01 00  .create("rundll32 ntlanui.dll,ShareCreate
		$a_03_2 = {2e 63 72 65 61 74 65 28 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 44 65 66 61 75 6c 74 54 61 72 67 65 74 46 72 61 6d 65 20 2b 20 90 02 0f 20 2b 20 22 2e 64 6f 63 20 22 20 2b 20 90 1b 00 20 2b 20 22 2e 44 4c 4c 22 2c 20 4e 75 6c 6c 2c 20 4e 75 6c 6c 2c 90 00 } //01 00 
		$a_03_3 = {3d 20 22 43 3a 5c 41 55 47 55 53 54 90 04 02 03 30 2d 39 22 0d 0a 90 02 2f 44 6f 63 75 6d 65 6e 74 5f 46 41 51 90 00 } //00 00 
		$a_00_4 = {cf 18 00 } //00 30 
	condition:
		any of ($a_*)
 
}