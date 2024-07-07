
rule Trojan_O97M_Obfuse_B{
	meta:
		description = "Trojan:O97M/Obfuse.B,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 0a 28 22 4d 90 01 02 69 90 01 02 63 90 01 02 72 90 01 02 6f 90 01 02 73 90 01 02 6f 90 01 02 66 90 01 02 74 90 01 02 2e 90 01 02 58 90 01 02 4d 90 01 02 4c 90 01 02 48 90 01 02 54 90 01 02 54 90 01 02 50 90 01 02 22 29 29 90 00 } //1
		$a_03_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 0a 28 22 41 90 01 02 44 90 01 02 4f 90 01 02 44 90 01 02 42 90 01 02 2e 90 01 02 53 90 01 02 74 90 01 02 72 90 01 02 65 90 01 02 61 90 01 02 6d 90 01 02 22 29 29 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}