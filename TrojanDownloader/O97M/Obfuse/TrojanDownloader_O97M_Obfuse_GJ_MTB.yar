
rule TrojanDownloader_O97M_Obfuse_GJ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.GJ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {2e 52 75 6e 20 52 55 4e 43 4d 44 } //01 00 
		$a_00_1 = {34 33 20 33 61 20 35 63 20 35 35 20 37 33 20 36 35 20 37 32 20 37 33 20 35 63 20 35 30 20 37 35 20 36 32 20 36 63 20 36 39 20 36 33 20 35 63 20 37 33 20 37 36 20 36 33 20 36 38 20 36 66 20 37 33 20 37 34 20 33 33 20 33 32 20 32 65 20 36 35 20 37 38 20 36 35 } //01 00 
		$a_00_2 = {35 37 20 35 33 20 36 33 20 37 32 20 36 39 20 37 30 20 37 34 20 32 65 20 35 33 20 36 38 20 36 35 20 36 63 20 36 63 } //01 00 
		$a_00_3 = {36 38 20 37 34 20 37 34 20 37 30 20 33 41 20 32 46 20 32 46 20 37 34 20 36 38 20 36 46 20 36 34 20 36 39 20 36 31 20 36 33 20 36 31 20 36 44 20 37 32 20 36 31 20 36 45 20 36 38 20 32 45 20 36 33 20 36 46 20 36 44 20 32 46 20 36 42 20 36 31 20 37 33 20 36 38 20 32 45 20 36 35 20 37 38 20 36 35 } //00 00 
	condition:
		any of ($a_*)
 
}