
rule TrojanDownloader_O97M_Obfuse_OL_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.OL!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_03_0 = {26 20 43 68 72 24 28 56 61 6c 28 22 26 48 22 20 26 20 4d 69 64 24 28 [0-20] 2c 20 [0-20] 2c 20 32 29 29 29 } //1
		$a_03_1 = {3d 20 31 20 54 6f 20 4c 65 6e 28 [0-25] 29 20 53 74 65 70 20 31 } //1
		$a_01_2 = {26 20 22 34 63 22 } //1 & "4c"
		$a_01_3 = {26 20 22 34 66 22 20 26 } //1 & "4f" &
		$a_01_4 = {3d 20 46 69 78 28 } //1 = Fix(
		$a_01_5 = {3d 20 49 73 4e 75 6c 6c 28 22 22 29 } //1 = IsNull("")
		$a_01_6 = {3d 20 22 31 4e 6f 72 6d 61 6c 2e 54 68 69 73 44 6f 63 75 6d 65 6e 74 22 } //1 = "1Normal.ThisDocument"
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}