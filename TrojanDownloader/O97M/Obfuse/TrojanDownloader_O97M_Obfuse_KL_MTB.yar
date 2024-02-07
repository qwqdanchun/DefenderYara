
rule TrojanDownloader_O97M_Obfuse_KL_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.KL!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 54 61 67 20 26 20 22 35 33 35 22 20 2b 20 22 5c 61 73 22 20 2b 20 22 70 6f 22 20 2b 20 22 74 6f 2e 65 22 20 2b 20 22 78 65 22 } //01 00  .Tag & "535" + "\as" + "po" + "to.e" + "xe"
		$a_01_1 = {2b 20 22 5c 41 70 22 20 2b 20 22 70 44 61 22 20 2b 20 22 74 61 5c 52 22 20 2b 20 22 6f 61 22 20 2b 20 22 6d 69 22 20 2b 20 22 6e 67 22 20 26 20 22 5c 22 } //01 00  + "\Ap" + "pDa" + "ta\R" + "oa" + "mi" + "ng" & "\"
		$a_01_2 = {3d 20 22 72 2d 70 61 79 6d 22 20 2b 20 22 65 6e 74 2f 69 6d 61 22 20 2b 20 22 67 65 73 2f 73 68 22 20 2b 20 22 61 6f 2e 6a 22 20 2b 20 22 70 67 22 } //01 00  = "r-paym" + "ent/ima" + "ges/sh" + "ao.j" + "pg"
		$a_01_3 = {26 20 22 27 2c 20 27 25 41 50 50 44 41 54 41 25 5c 6d 6f 27 20 2b 20 27 6c 32 35 27 20 2b 20 27 33 35 5c 61 73 27 20 2b 20 27 70 6f 74 27 20 2b 20 27 6f 2e 65 78 27 20 2b 20 27 65 27 29 22 } //00 00  & "', '%APPDATA%\mo' + 'l25' + '35\as' + 'pot' + 'o.ex' + 'e')"
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_KL_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.KL!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {4f 70 65 6e 20 22 43 3a 5c 44 69 73 6b 44 72 69 76 65 5c 31 5c 56 6f 6c 75 6d 65 5c 90 02 14 2e 62 61 74 22 90 00 } //02 00 
		$a_00_1 = {66 53 74 72 46 6f 72 50 61 74 68 4c 6f 61 64 20 3d 20 66 53 74 72 46 6f 72 50 61 74 68 4c 6f 61 64 20 26 20 22 5c 22 } //01 00  fStrForPathLoad = fStrForPathLoad & "\"
		$a_03_2 = {45 6e 76 69 72 6f 6e 28 22 61 70 70 64 61 74 61 22 29 20 26 20 22 90 02 0a 22 90 00 } //01 00 
		$a_03_3 = {4f 70 65 6e 20 22 43 3a 5c 44 69 73 6b 44 72 69 76 65 5c 31 5c 56 6f 6c 75 6d 65 5c 90 02 0a 2e 6a 73 65 22 90 00 } //01 00 
		$a_03_4 = {43 3a 5c 44 69 73 6b 44 72 69 76 65 5c 31 5c 56 6f 6c 75 6d 65 5c 90 02 14 2e 65 78 65 22 90 00 } //01 00 
		$a_00_5 = {43 61 70 74 69 6f 6e 20 26 20 47 69 66 74 54 6f 50 61 70 70 65 72 2e 44 65 66 61 75 6c 74 54 61 72 67 65 74 46 72 61 6d 65 20 26 20 22 } //00 00  Caption & GiftToPapper.DefaultTargetFrame & "
	condition:
		any of ($a_*)
 
}