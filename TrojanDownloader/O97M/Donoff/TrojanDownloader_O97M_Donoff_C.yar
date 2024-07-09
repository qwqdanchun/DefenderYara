
rule TrojanDownloader_O97M_Donoff_C{
	meta:
		description = "TrojanDownloader:O97M/Donoff.C,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {44 58 43 47 46 53 20 3d 20 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 28 30 2c 20 4d 56 56 41 53 5a 2c 20 43 47 56 48 49 49 2c 20 30 2c 20 30 29 } //1 DXCGFS = URLDownloadToFileA(0, MVVASZ, CGVHII, 0, 0)
		$a_01_1 = {4d 73 67 42 6f 78 20 22 45 73 74 65 20 64 6f 63 75 6d 65 6e 74 6f 20 6e 6f 20 65 73 20 63 6f 6d 70 61 74 69 62 6c 65 20 63 6f 6e 20 65 73 74 65 20 65 71 75 69 70 6f 2e 22 } //1 MsgBox "Este documento no es compatible con este equipo."
		$a_03_2 = {3c 20 33 30 30 [0-30] 3d 20 22 68 74 74 70 3a 2f 2f [0-40] 2e 65 78 65 22 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Donoff_C_2{
	meta:
		description = "TrojanDownloader:O97M/Donoff.C,SIGNATURE_TYPE_MACROHSTR_EXT,0a 00 0a 00 03 00 00 "
		
	strings :
		$a_02_0 = {50 72 69 76 61 74 65 20 53 75 62 20 41 75 74 6f 45 78 65 63 28 29 0d 0a 43 61 6c 6c 20 44 6f 77 6e 6c 6f 61 64 46 69 6c 65 28 [0-10] 22 68 [0-05] 74 [0-05] 74 [0-05] 70 [0-40] 2e [0-05] 65 [0-05] 78 [0-05] 65 [0-05] 22 2c [0-10] 2e [0-05] 65 [0-05] 78 [0-05] 65 } //1
		$a_02_1 = {50 72 69 76 61 74 65 20 53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 0d 0a 43 61 6c 6c 20 44 6f 77 6e 6c 6f 61 64 46 69 6c 65 28 [0-10] 22 68 [0-05] 74 [0-05] 74 [0-05] 70 [0-40] 2e [0-05] 65 [0-05] 78 [0-05] 65 [0-05] 22 2c [0-10] 2e [0-05] 65 [0-05] 78 [0-05] 65 } //1
		$a_02_2 = {43 61 6c 6c 20 44 6f 77 6e 6c 6f 61 64 46 69 6c 65 28 [0-10] 22 68 74 74 [0-05] 70 [0-05] 3a 2f 2f 77 77 77 2e 69 6e 74 65 72 74 65 63 6e [0-30] 2f 73 73 [0-05] 2e [0-05] 65 [0-05] 78 [0-05] 65 22 2c } //10
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*10) >=10
 
}