
rule TrojanDownloader_O97M_Hancitor_SS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Hancitor.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {49 66 20 44 69 72 28 4f 70 74 69 6f 6e 73 2e 44 65 66 61 75 6c 74 46 69 6c 65 50 61 74 68 28 77 64 55 73 65 72 54 65 6d 70 6c 61 74 65 73 50 61 74 68 29 20 26 20 22 5c 69 66 66 2e 62 69 6e 22 2c 20 76 62 44 69 72 65 63 74 6f 72 79 29 20 3d 20 22 22 20 54 68 65 6e } //1 If Dir(Options.DefaultFilePath(wdUserTemplatesPath) & "\iff.bin", vbDirectory) = "" Then
		$a_03_1 = {43 61 6c 6c 20 90 02 08 44 6f 63 75 6d 65 6e 74 73 2e 4f 70 65 6e 20 66 69 6c 65 4e 61 6d 65 3a 3d 76 78 63 20 26 20 22 68 65 6c 70 2e 64 6f 63 22 2c 20 50 61 73 73 77 6f 72 64 44 6f 63 75 6d 65 6e 74 3a 3d 22 64 6f 6e 74 74 6f 75 63 68 6d 65 22 90 02 03 45 6e 64 20 49 66 90 00 } //1
		$a_03_2 = {76 78 63 20 3d 20 76 78 63 20 26 20 22 68 74 74 22 90 02 03 45 6e 64 20 53 75 62 90 00 } //1
		$a_03_3 = {76 78 63 20 3d 20 76 78 63 20 26 20 22 70 3a 2f 2f 22 90 02 03 45 6e 64 20 53 75 62 90 00 } //1
		$a_03_4 = {76 78 63 20 3d 20 76 78 63 20 26 20 22 64 69 75 61 72 35 2e 72 75 2f 22 90 02 03 45 6e 64 20 53 75 62 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}