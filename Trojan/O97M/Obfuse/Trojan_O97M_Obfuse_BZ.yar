
rule Trojan_O97M_Obfuse_BZ{
	meta:
		description = "Trojan:O97M/Obfuse.BZ,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {53 68 61 70 65 73 28 90 02 20 20 2b 20 22 90 02 20 22 20 2b 20 90 02 20 29 2e 54 65 78 74 46 72 61 6d 65 90 00 } //01 00 
		$a_03_1 = {49 6e 74 65 72 61 63 74 69 6f 6e 90 02 0f 53 68 65 6c 6c 90 00 } //01 00 
		$a_01_2 = {43 6f 6e 74 61 69 6e 69 6e 67 52 61 6e 67 65 } //00 00 
	condition:
		any of ($a_*)
 
}