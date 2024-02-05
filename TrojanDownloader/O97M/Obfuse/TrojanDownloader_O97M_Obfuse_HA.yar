
rule TrojanDownloader_O97M_Obfuse_HA{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.HA,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 47 65 74 4f 62 6a 65 63 74 28 22 6e 65 77 3a 22 20 2b } //01 00 
		$a_01_1 = {2b 20 76 62 4e 75 6c 6c 53 74 72 69 6e 67 20 3d 20 76 62 4e 75 6c 6c 53 74 72 69 6e 67 20 54 68 65 6e } //01 00 
		$a_03_2 = {2e 52 75 6e 21 20 90 02 14 2c 20 30 20 2b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}