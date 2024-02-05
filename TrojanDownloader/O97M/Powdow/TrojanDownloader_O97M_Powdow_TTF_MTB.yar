
rule TrojanDownloader_O97M_Powdow_TTF_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.TTF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {28 6e 45 77 2d 6f 42 60 6a 65 63 54 20 4e 65 74 2e 57 65 62 63 4c 60 49 45 4e 74 29 } //01 00 
		$a_01_1 = {28 27 44 6f 77 6e 27 2b 27 6c 6f 61 64 46 69 6c 65 27 29 } //01 00 
		$a_01_2 = {74 74 70 73 3a 2f 2f 63 75 74 74 2e 6c 79 2f 5a 68 59 6f 48 53 4c } //01 00 
		$a_01_3 = {24 7b 65 6e 56 60 3a 61 70 70 64 61 74 61 7d } //00 00 
	condition:
		any of ($a_*)
 
}