
rule TrojanDownloader_O97M_SmkLdr_V_MTB{
	meta:
		description = "TrojanDownloader:O97M/SmkLdr.V!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_81_0 = {57 53 63 72 69 70 74 2e 53 68 65 6c 6c } //01 00 
		$a_03_1 = {68 74 74 70 3a 2f 2f 34 35 2e 31 34 37 2e 32 33 31 2e 90 02 04 2f 6c 64 72 2e 65 78 65 90 00 } //01 00 
		$a_81_2 = {63 3a 5c 41 74 74 61 35 5c 6c 64 72 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}