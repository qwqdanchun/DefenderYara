
rule TrojanDownloader_O97M_Obfuse_HD{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.HD,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 22 57 53 43 72 69 70 74 2e 73 48 45 4c 6c 22 } //01 00  = "WSCript.sHELl"
		$a_01_1 = {3d 20 22 43 6d 64 20 2f 43 20 6d 73 49 65 5e 78 5e 65 43 20 22 20 26 20 43 68 72 28 34 34 33 20 2d 20 33 39 36 29 20 26 20 43 68 72 28 35 30 33 20 2d 20 33 39 38 29 20 26 20 43 68 72 28 31 36 37 20 2d 20 31 33 35 29 20 26 20 43 68 72 28 32 36 30 20 2d 20 31 35 36 29 20 26 20 43 68 72 28 32 30 38 20 2d 20 39 32 29 20 26 20 43 68 72 28 34 37 33 20 2d 20 33 35 37 29 20 26 20 43 68 72 28 34 39 32 20 2d 20 33 38 30 29 20 26 20 43 68 72 28 31 30 32 20 2d 20 34 34 29 20 26 20 43 68 72 28 33 30 39 20 2d 20 32 36 32 29 20 26 } //00 00  = "Cmd /C msIe^x^eC " & Chr(443 - 396) & Chr(503 - 398) & Chr(167 - 135) & Chr(260 - 156) & Chr(208 - 92) & Chr(473 - 357) & Chr(492 - 380) & Chr(102 - 44) & Chr(309 - 262) &
	condition:
		any of ($a_*)
 
}