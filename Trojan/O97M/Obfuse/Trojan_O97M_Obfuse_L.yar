
rule Trojan_O97M_Obfuse_L{
	meta:
		description = "Trojan:O97M/Obfuse.L,SIGNATURE_TYPE_MACROHSTR_EXT,0e 00 0e 00 05 00 00 "
		
	strings :
		$a_00_0 = {20 3d 20 4c 65 6e 28 } //1  = Len(
		$a_02_1 = {2c 20 4c 65 6e 28 [0-20] 29 20 2b 20 } //1
		$a_02_2 = {2c 20 42 79 52 65 66 20 [0-15] 29 0d 0a [0-15] 20 3d 20 52 69 67 68 74 28 4c 65 66 74 28 [0-15] 2c 20 [0-15] 29 2c 20 31 29 0d 0a 45 6e 64 20 53 75 62 } //10
		$a_02_3 = {53 75 62 20 [0-20] 28 42 79 52 65 66 20 [0-20] 2c 20 42 79 52 65 66 20 } //1
		$a_00_4 = {0d 0a 53 68 65 6c 6c 20 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*10+(#a_02_3  & 1)*1+(#a_00_4  & 1)*1) >=14
 
}