
rule TrojanDownloader_O97M_Obfuse_OL_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.OL!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {26 20 43 68 72 24 28 56 61 6c 28 22 26 48 22 20 26 20 4d 69 64 24 28 90 02 20 2c 20 90 02 20 2c 20 32 29 29 29 90 00 } //01 00 
		$a_03_1 = {3d 20 31 20 54 6f 20 4c 65 6e 28 90 02 25 29 20 53 74 65 70 20 31 90 00 } //01 00 
		$a_01_2 = {26 20 22 34 63 22 } //01 00  & "4c"
		$a_01_3 = {26 20 22 34 66 22 20 26 } //01 00  & "4f" &
		$a_01_4 = {3d 20 46 69 78 28 } //01 00  = Fix(
		$a_01_5 = {3d 20 49 73 4e 75 6c 6c 28 22 22 29 } //01 00  = IsNull("")
		$a_01_6 = {3d 20 22 31 4e 6f 72 6d 61 6c 2e 54 68 69 73 44 6f 63 75 6d 65 6e 74 22 } //00 00  = "1Normal.ThisDocument"
	condition:
		any of ($a_*)
 
}