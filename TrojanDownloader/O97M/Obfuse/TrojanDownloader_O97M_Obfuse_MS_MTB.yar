
rule TrojanDownloader_O97M_Obfuse_MS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.MS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 35 28 22 71 77 6c 68 6c 73 61 64 77 71 77 6c 68 6c 73 61 64 69 6e 6d 71 77 6c 68 6c 73 61 64 67 6d 71 77 6c 68 6c 73 61 64 74 73 3a 57 71 77 6c 68 6c 73 61 64 69 6e 33 71 77 6c 68 6c 73 61 64 32 5f 50 71 77 6c 68 6c 73 61 64 72 71 77 6c 68 6c 73 61 64 6f 63 65 71 77 6c 68 6c 73 61 64 73 73 71 77 6c 68 6c 73 61 64 22 29 29 90 00 } //01 00 
		$a_03_1 = {2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //01 00 
		$a_03_2 = {3d 20 52 65 70 6c 61 63 65 28 90 02 35 2c 90 00 } //01 00 
		$a_01_3 = {4d 53 46 6f 72 6d 73 2c 20 54 65 78 74 42 6f 78 22 } //01 00  MSForms, TextBox"
		$a_01_4 = {2e 53 68 6f 77 57 69 6e 64 6f 77 20 3d } //00 00  .ShowWindow =
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_MS_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.MS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {46 75 6e 63 74 69 6f 6e 20 70 6b 6b 6b 6b 28 29 20 41 73 20 53 74 72 69 6e 67 } //01 00  Function pkkkk() As String
		$a_00_1 = {70 64 61 73 31 20 3d 20 22 73 22 } //01 00  pdas1 = "s"
		$a_00_2 = {70 64 61 73 32 20 3d 20 22 68 22 } //01 00  pdas2 = "h"
		$a_00_3 = {70 64 61 73 33 20 3d 20 22 74 22 20 2b 20 22 61 20 68 74 22 } //01 00  pdas3 = "t" + "a ht"
		$a_00_4 = {6b 6f 34 64 20 3d 20 22 74 70 3a 2f 2f 25 37 34 38 32 33 37 25 37 32 38 37 34 38 40 6a 2e 6d 70 2f 22 } //01 00  ko4d = "tp://%748237%728748@j.mp/"
		$a_00_5 = {70 64 61 73 30 20 3d 20 22 6d 22 } //01 00  pdas0 = "m"
		$a_00_6 = {6f 6b 66 66 72 20 3d 20 22 61 6b 73 64 6a 77 6f 64 6f 77 68 64 69 71 77 64 22 } //01 00  okffr = "aksdjwodowhdiqwd"
		$a_00_7 = {70 6b 6b 6b 6b 20 3d 20 70 64 61 73 30 20 2b 20 70 64 61 73 31 20 2b 20 70 64 61 73 32 20 2b 20 70 64 61 73 33 20 2b 20 6b 6f 34 64 20 2b 20 6f 6b 66 66 72 } //00 00  pkkkk = pdas0 + pdas1 + pdas2 + pdas3 + ko4d + okffr
	condition:
		any of ($a_*)
 
}