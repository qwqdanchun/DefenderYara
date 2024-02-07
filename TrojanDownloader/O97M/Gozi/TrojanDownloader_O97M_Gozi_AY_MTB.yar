
rule TrojanDownloader_O97M_Gozi_AY_MTB{
	meta:
		description = "TrojanDownloader:O97M/Gozi.AY!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_00_0 = {3d 20 22 43 3a 5c 75 73 65 72 73 5c 50 75 62 6c 69 63 5c 32 35 36 2e 70 6e 67 22 } //01 00  = "C:\users\Public\256.png"
		$a_00_1 = {3d 20 22 68 74 74 70 22 } //01 00  = "http"
		$a_00_2 = {2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 55 73 65 72 46 6f 72 6d 31 2e } //01 00  .Open "GET", UserForm1.
		$a_00_3 = {50 74 72 2e 4f 70 65 6e } //01 00  Ptr.Open
		$a_03_4 = {53 68 65 6c 6c 40 20 28 90 01 06 43 6c 61 73 73 20 2b 20 22 33 32 20 22 20 26 90 00 } //01 00 
		$a_00_5 = {28 22 3a 2f 2f 6c 69 6e 65 73 74 61 74 73 2e 63 79 6f 75 2f 66 30 74 30 73 2e 6a 70 67 22 29 } //01 00  ("://linestats.cyou/f0t0s.jpg")
		$a_03_6 = {50 74 72 2e 57 72 69 74 65 20 90 02 0f 2e 52 65 73 70 6f 6e 73 65 42 6f 64 79 90 00 } //01 00 
		$a_00_7 = {2e 53 61 76 65 54 6f 46 69 6c 65 } //01 00  .SaveToFile
		$a_00_8 = {2e 53 65 6e 64 } //00 00  .Send
	condition:
		any of ($a_*)
 
}