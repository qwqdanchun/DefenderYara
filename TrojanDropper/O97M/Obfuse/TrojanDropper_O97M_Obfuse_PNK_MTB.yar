
rule TrojanDropper_O97M_Obfuse_PNK_MTB{
	meta:
		description = "TrojanDropper:O97M/Obfuse.PNK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {3d 20 52 65 70 6c 61 63 65 28 [0-0f] 2c 20 22 20 ?? 22 2c 20 22 22 29 } //1
		$a_03_1 = {3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-10] 28 22 [0-25] 26 20 22 20 ?? 2e 53 68 20 ?? 65 6c 20 ?? 6c 22 29 29 2c 20 43 6f 6d 6d 61 6e 64 42 75 74 74 6f 6e 31 2e 43 61 70 74 69 6f 6e 2c } //1
		$a_03_2 = {26 20 22 5c 22 20 26 20 4d 65 2e 4e 61 6d 65 20 26 20 [0-10] 20 26 20 22 2e [0-10] 2e 22 } //1
		$a_03_3 = {4e 61 6d 65 20 [0-10] 20 41 73 20 [0-10] 20 26 20 [0-10] 28 22 [0-03] 6a [0-03] 73 65 22 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}