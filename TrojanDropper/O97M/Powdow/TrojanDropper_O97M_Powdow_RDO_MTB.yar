
rule TrojanDropper_O97M_Powdow_RDO_MTB{
	meta:
		description = "TrojanDropper:O97M/Powdow.RDO!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {73 68 65 6c 6c 65 78 65 63 75 74 65 28 31 2c 73 74 72 72 65 76 65 72 73 65 28 22 6e 65 70 6f 22 29 2c 73 74 72 72 65 76 65 72 73 65 28 22 65 78 65 2e 6c 6c 65 68 73 72 65 77 6f 70 22 29 2c 73 74 72 72 65 76 65 72 73 65 28 22 65 78 65 2e [0-1f] 5c 70 6d 65 74 5c 73 77 6f 64 6e 69 77 5c 3a 63 [0-1f] 2e 90 1b 00 5c 70 6d 65 74 5c 73 77 6f 64 6e 69 77 5c 3a 63 6f 2d 65 78 65 2e [0-2f] 2f 6e 69 6d 64 61 2d 78 6d 61 74 7a 2f 6d 6f 63 2e 6e 72 75 74 71 65 74 2f 2f 3a 73 70 74 74 68 74 65 67 77 6e 65 64 64 69 68 65 6c 79 74 73 77 6f 64 6e 69 77 2d 22 29 2c 73 74 72 72 65 76 65 72 73 65 28 22 5c 30 2e 31 76 5c 6c 6c 65 68 73 72 65 77 6f 70 73 77 6f 64 6e 69 77 5c 32 33 6d 65 74 73 79 73 5c 73 77 6f 64 6e 69 77 5c 3a 63 22 29 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}