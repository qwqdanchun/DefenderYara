
rule TrojanDownloader_O97M_EncDoc_SCC_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SCC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 65 68 70 6b 6e 68 70 6a 66 79 75 6c 63 63 65 28 22 35 37 35 33 36 33 37 32 36 39 37 30 37 34 32 65 35 33 36 38 36 35 22 29 20 26 20 65 68 70 6b 6e 68 70 6a 66 79 75 6c 63 63 65 28 22 36 63 36 63 22 29 29 2e 52 75 6e 20 63 6d 64 4c 69 6e 65 2c 20 30 } //01 00  CreateObject(ehpknhpjfyulcce("575363726970742e536865") & ehpknhpjfyulcce("6c6c")).Run cmdLine, 0
		$a_01_1 = {2e 73 65 74 52 65 71 75 65 73 74 48 65 61 64 65 72 20 65 68 70 6b 6e 68 70 6a 66 79 75 6c 63 63 65 28 22 35 35 37 33 36 35 37 32 32 64 34 31 36 37 36 35 22 29 20 26 20 65 68 70 6b 6e 68 70 6a 66 79 75 6c 63 63 65 28 22 36 65 37 34 22 29 2c 20 65 68 70 6b 6e 68 70 6a 66 79 75 6c 63 63 65 28 22 34 64 36 66 37 61 22 29 20 26 20 65 68 70 6b 6e 68 70 6a 66 79 75 6c 63 63 65 28 22 36 39 36 63 36 63 36 31 32 66 33 34 32 65 33 30 32 30 32 38 36 33 36 66 36 64 37 30 36 31 37 34 36 39 36 32 36 63 36 35 33 62 32 30 34 64 35 33 34 39 34 35 32 30 33 36 32 65 33 30 33 62 32 30 35 37 36 39 36 65 36 34 36 66 37 37 37 33 32 30 34 65 35 34 32 30 33 35 32 65 33 30 32 39 22 29 } //01 00  .setRequestHeader ehpknhpjfyulcce("557365722d416765") & ehpknhpjfyulcce("6e74"), ehpknhpjfyulcce("4d6f7a") & ehpknhpjfyulcce("696c6c612f342e302028636f6d70617469626c653b204d53494520362e303b2057696e646f7773204e5420352e3029")
		$a_01_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 65 68 70 6b 6e 68 70 6a 66 79 75 6c 63 63 65 28 22 34 31 34 34 34 66 34 34 34 32 32 65 22 29 20 26 20 65 68 70 6b 6e 68 70 6a 66 79 75 6c 63 63 65 28 22 35 33 37 34 37 32 36 35 36 31 36 64 22 29 29 } //01 00  = CreateObject(ehpknhpjfyulcce("41444f44422e") & ehpknhpjfyulcce("53747265616d"))
		$a_01_3 = {2e 57 72 69 74 65 20 68 63 73 74 77 64 7a 75 6c 78 2e 52 65 73 70 6f 6e 73 65 42 6f 64 79 } //01 00  .Write hcstwdzulx.ResponseBody
		$a_01_4 = {66 68 6f 71 6d 78 79 63 7a 73 69 6c 6c 77 75 2e 53 61 76 65 54 6f 46 69 6c 65 20 74 72 70 63 64 6e 79 74 78 63 2c 20 32 } //00 00  fhoqmxyczsillwu.SaveToFile trpcdnytxc, 2
	condition:
		any of ($a_*)
 
}