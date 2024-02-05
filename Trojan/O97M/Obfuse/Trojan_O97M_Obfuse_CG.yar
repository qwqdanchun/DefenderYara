
rule Trojan_O97M_Obfuse_CG{
	meta:
		description = "Trojan:O97M/Obfuse.CG,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {2e 53 68 65 6c 6c 28 } //01 00 
		$a_02_1 = {20 3d 20 41 72 72 61 79 28 90 02 10 2c 20 90 02 10 2c 20 90 02 10 2c 20 49 6e 74 65 72 61 63 74 69 6f 6e 90 00 } //01 00 
		$a_02_2 = {2e 54 65 78 74 42 6f 78 31 2e 54 65 78 74 20 2b 20 90 02 0a 20 2b 20 90 02 0a 20 2b 20 90 02 0a 20 2b 20 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}