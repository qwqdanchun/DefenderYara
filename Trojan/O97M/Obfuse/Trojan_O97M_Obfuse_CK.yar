
rule Trojan_O97M_Obfuse_CK{
	meta:
		description = "Trojan:O97M/Obfuse.CK,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {41 72 72 61 79 28 90 02 19 2c 20 90 02 0f 2c 20 90 02 0a 2c 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 73 63 52 69 70 74 2e 73 48 65 4c 6c 22 29 2e 52 75 6e 90 02 01 28 28 22 22 20 2b 20 90 02 5a 2e 54 65 78 74 42 6f 78 31 90 02 46 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}