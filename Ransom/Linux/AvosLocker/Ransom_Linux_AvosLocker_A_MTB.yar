
rule Ransom_Linux_AvosLocker_A_MTB{
	meta:
		description = "Ransom:Linux/AvosLocker.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,07 00 07 00 04 00 00 05 00 "
		
	strings :
		$a_03_0 = {3d 3d 22 57 6f 72 6c 64 49 44 2c 44 69 73 70 6c 61 79 4e 61 6d 65 22 20 76 6d 20 70 72 6f 63 65 73 73 20 6c 69 73 74 20 7c 20 74 61 69 6c 20 2d 6e 20 2b 32 20 7c 20 61 77 6b 20 2d 46 20 90 02 08 73 79 73 74 65 6d 90 02 04 65 73 78 63 6c 69 20 76 6d 20 70 72 6f 63 65 73 73 20 6b 69 6c 6c 20 2d 2d 74 79 70 65 3d 66 6f 72 63 65 20 2d 2d 77 6f 72 6c 64 2d 69 64 90 00 } //01 00 
		$a_03_1 = {41 76 6f 73 4c 69 6e 75 78 90 02 03 42 72 61 6e 63 68 20 4e 61 75 67 68 74 79 45 4c 46 90 00 } //01 00 
		$a_03_2 = {41 74 74 65 6e 74 69 6f 6e 90 02 06 59 6f 75 72 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 90 00 } //01 00 
		$a_01_3 = {45 53 58 69 20 56 4d 73 20 77 69 6c 6c 20 62 65 20 66 6f 72 63 65 64 20 74 6f 20 73 68 75 74 64 6f 77 6e 20 77 68 65 6e 20 72 61 6e 20 61 67 61 69 6e 73 74 20 45 53 58 69 20 70 61 74 68 73 } //00 00  ESXi VMs will be forced to shutdown when ran against ESXi paths
	condition:
		any of ($a_*)
 
}