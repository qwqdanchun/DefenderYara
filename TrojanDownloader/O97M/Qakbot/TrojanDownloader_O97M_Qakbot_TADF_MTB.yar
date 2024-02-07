
rule TrojanDownloader_O97M_Qakbot_TADF_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.TADF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 68 65 65 74 73 28 22 4e 6f 69 65 65 74 66 64 68 67 22 29 2e 52 61 6e 67 65 28 22 48 31 30 22 29 20 3d 20 22 3d 4b 6f 70 61 73 74 28 30 2c 48 32 34 26 4b 31 37 26 4b 31 38 2c 47 31 30 2c 30 2c 30 29 } //01 00  Sheets("Noieetfdhg").Range("H10") = "=Kopast(0,H24&K17&K18,G10,0,0)
		$a_01_1 = {53 68 65 65 74 73 28 22 4e 6f 69 65 65 74 66 64 68 67 22 29 2e 52 61 6e 67 65 28 22 48 31 31 22 29 20 3d 20 22 3d 4b 6f 70 61 73 74 28 30 2c 48 32 35 26 4b 31 37 26 4b 31 38 2c 47 31 31 2c 30 2c 30 29 } //01 00  Sheets("Noieetfdhg").Range("H11") = "=Kopast(0,H25&K17&K18,G11,0,0)
		$a_01_2 = {53 68 65 65 74 73 28 22 4e 6f 69 65 65 74 66 64 68 67 22 29 2e 52 61 6e 67 65 28 22 48 31 32 22 29 20 3d 20 22 3d 4b 6f 70 61 73 74 28 30 2c 48 32 36 26 4b 31 37 26 4b 31 38 2c 47 31 32 2c 30 2c 30 29 } //01 00  Sheets("Noieetfdhg").Range("H12") = "=Kopast(0,H26&K17&K18,G12,0,0)
		$a_01_3 = {43 22 20 26 20 22 65 6c 22 20 26 20 22 6f 64 22 20 26 20 22 2e 77 22 20 26 20 22 61 63 } //00 00  C" & "el" & "od" & ".w" & "ac
	condition:
		any of ($a_*)
 
}