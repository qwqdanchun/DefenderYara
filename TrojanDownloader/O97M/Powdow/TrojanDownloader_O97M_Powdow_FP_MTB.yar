
rule TrojanDownloader_O97M_Powdow_FP_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.FP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 6d 70 20 3d 20 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 5c 69 6e 69 74 2e 65 78 65 22 } //01 00  tmp = Environ("TEMP") & "\init.exe"
		$a_01_1 = {52 65 73 75 6c 74 20 3d 20 77 6d 2e 43 72 65 61 74 65 28 73 74 72 2c 20 4e 75 6c 6c 2c 20 77 6d 61 2c 20 70 72 6f 63 65 73 73 69 64 29 } //01 00  Result = wm.Create(str, Null, wma, processid)
		$a_03_2 = {6f 62 6a 48 54 54 50 2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 22 68 74 74 70 73 3a 2f 2f 6d 6f 76 69 65 64 76 64 70 6f 77 65 72 2e 63 6f 6d 2f 43 56 5f 53 45 4f 5f 41 44 53 5f 44 61 76 69 64 5f 41 6c 76 61 72 65 7a 2e 74 78 74 22 2c 20 46 61 6c 73 65 90 0c 02 00 6f 62 6a 48 54 54 50 2e 73 65 6e 64 20 28 22 22 29 90 00 } //01 00 
		$a_03_3 = {72 65 73 20 3d 20 6a 2e 43 6f 70 79 46 69 6c 65 28 73 74 72 2c 20 74 6d 70 29 90 0c 02 00 53 65 74 20 77 6d 20 3d 20 47 65 74 4f 62 6a 65 63 74 28 58 6f 72 43 28 22 78 78 78 47 59 90 00 } //01 00 
		$a_03_4 = {43 61 6c 6c 20 43 61 6c 6c 50 90 0c 02 00 43 61 6c 6c 20 53 65 74 43 6f 6e 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}