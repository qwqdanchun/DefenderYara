
rule Trojan_O97M_Obfuse_YB_MTB{
	meta:
		description = "Trojan:O97M/Obfuse.YB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 28 22 90 02 0a 2b 90 02 0a 2b 90 02 0a 2b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}