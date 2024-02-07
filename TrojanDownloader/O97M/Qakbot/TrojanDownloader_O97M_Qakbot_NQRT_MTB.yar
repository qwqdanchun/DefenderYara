
rule TrojanDownloader_O97M_Qakbot_NQRT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.NQRT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 68 65 65 74 73 28 22 53 68 65 65 74 33 22 29 2e 52 61 6e 67 65 28 22 47 31 32 22 29 20 3d 20 22 2e 2e 5c 58 65 72 74 69 73 32 2e 64 6c 6c 22 } //01 00  Sheets("Sheet3").Range("G12") = "..\Xertis2.dll"
		$a_01_1 = {53 68 65 65 74 73 28 22 53 68 65 65 74 33 22 29 2e 52 61 6e 67 65 28 22 49 31 37 22 29 20 3d 20 22 72 65 67 73 76 72 33 32 20 2d 73 69 6c 65 6e 74 20 2e 2e 5c 58 65 72 74 69 73 2e 64 6c 6c 22 } //01 00  Sheets("Sheet3").Range("I17") = "regsvr32 -silent ..\Xertis.dll"
		$a_01_2 = {53 68 65 65 74 73 28 22 53 68 65 65 74 33 22 29 2e 52 61 6e 67 65 28 22 48 39 22 29 20 3d 20 22 3d 52 45 47 49 53 54 45 52 28 49 39 2c 49 31 30 26 4a 31 30 2c 49 31 31 2c 49 31 32 2c 2c 31 2c 39 29 22 } //01 00  Sheets("Sheet3").Range("H9") = "=REGISTER(I9,I10&J10,I11,I12,,1,9)"
		$a_01_3 = {53 68 65 65 74 73 28 22 53 68 65 65 74 33 22 29 2e 52 61 6e 67 65 28 22 4b 31 38 22 29 20 3d 20 22 2e 64 61 74 22 } //01 00  Sheets("Sheet3").Range("K18") = ".dat"
		$a_01_4 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 20 53 68 65 65 74 73 28 22 53 68 65 65 74 33 22 29 2e 52 61 6e 67 65 28 22 48 31 22 29 } //00 00  Application.Run Sheets("Sheet3").Range("H1")
	condition:
		any of ($a_*)
 
}