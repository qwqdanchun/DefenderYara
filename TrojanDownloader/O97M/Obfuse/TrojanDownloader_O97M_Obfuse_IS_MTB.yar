
rule TrojanDownloader_O97M_Obfuse_IS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.IS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 22 63 6d 64 20 2f 63 20 6d 53 69 65 5e 78 5e 45 43 20 22 20 26 20 43 68 72 28 32 36 31 20 2d 20 32 31 34 29 20 26 20 43 68 72 28 34 31 34 20 2d 20 33 30 39 29 20 26 20 43 68 72 28 31 33 37 20 2d 20 31 30 35 29 20 26 20 43 68 72 28 34 35 36 20 2d 20 33 35 32 29 20 26 20 43 68 72 28 34 33 34 20 2d 20 33 31 38 29 20 26 20 43 68 72 28 33 35 38 20 2d 20 32 34 32 29 20 26 20 43 68 72 28 34 31 32 20 2d 20 33 30 30 29 20 26 20 43 68 72 28 32 38 33 20 2d 20 32 32 35 29 20 26 } //01 00  = "cmd /c mSie^x^EC " & Chr(261 - 214) & Chr(414 - 309) & Chr(137 - 105) & Chr(456 - 352) & Chr(434 - 318) & Chr(358 - 242) & Chr(412 - 300) & Chr(283 - 225) &
		$a_01_1 = {3d 20 22 57 53 43 52 69 70 74 2e 73 48 45 4c 6c 22 } //01 00  = "WSCRipt.sHELl"
		$a_01_2 = {2e 52 75 6e } //00 00  .Run
	condition:
		any of ($a_*)
 
}