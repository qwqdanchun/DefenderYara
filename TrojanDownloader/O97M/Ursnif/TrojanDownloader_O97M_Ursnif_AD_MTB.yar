
rule TrojanDownloader_O97M_Ursnif_AD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.AD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {26 20 22 5c 90 02 10 22 20 26 20 53 74 72 52 65 76 65 72 73 65 28 22 6c 73 78 2e 22 29 90 00 } //01 00 
		$a_03_1 = {3d 20 43 68 72 28 22 26 68 22 20 26 20 4d 69 64 28 90 02 10 2c 20 90 02 10 2c 20 32 29 29 90 00 } //01 00 
		$a_01_2 = {3d 20 22 61 70 70 64 61 74 61 22 } //01 00  = "appdata"
		$a_01_3 = {3d 20 22 22 } //01 00  = ""
		$a_01_4 = {3d 20 4e 65 77 20 57 73 68 53 68 65 6c 6c } //01 00  = New WshShell
		$a_03_5 = {3d 20 45 6e 76 69 72 6f 6e 28 90 02 10 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}