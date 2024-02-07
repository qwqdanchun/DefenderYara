
rule TrojanDownloader_O97M_Donoff_DZ{
	meta:
		description = "TrojanDownloader:O97M/Donoff.DZ,SIGNATURE_TYPE_MACROHSTR_EXT,1a 00 1a 00 0f 00 00 14 00 "
		
	strings :
		$a_02_0 = {41 72 72 61 79 28 4a 6f 69 6e 28 41 72 72 61 79 28 90 1d 10 00 29 28 30 29 2c 20 22 22 29 29 28 30 29 90 0c 02 00 90 1d 10 00 2e 52 75 6e 20 90 1d 10 00 2c 20 76 62 48 69 64 65 90 00 } //01 00 
		$a_00_1 = {22 63 4d 22 29 28 31 29 } //01 00  "cM")(1)
		$a_00_2 = {22 44 2e 22 29 28 31 29 } //01 00  "D.")(1)
		$a_00_3 = {22 2f 73 22 29 28 31 29 } //01 00  "/s")(1)
		$a_00_4 = {22 65 61 22 29 28 31 29 } //01 00  "ea")(1)
		$a_00_5 = {22 72 63 22 29 28 31 29 } //01 00  "rc")(1)
		$a_00_6 = {22 68 2e 22 29 28 31 29 } //01 00  "h.")(1)
		$a_00_7 = {22 70 68 22 29 28 31 29 } //01 00  "ph")(1)
		$a_00_8 = {22 70 27 22 29 28 31 29 } //01 00  "p'")(1)
		$a_00_9 = {22 44 6f 22 29 28 31 29 } //01 00  "Do")(1)
		$a_00_10 = {22 57 6e 22 29 28 31 29 } //01 00  "Wn")(1)
		$a_00_11 = {22 46 69 22 29 28 31 29 } //01 00  "Fi")(1)
		$a_00_12 = {22 4c 65 22 29 28 31 29 } //01 00  "Le")(1)
		$a_00_13 = {22 68 74 22 29 28 31 29 } //01 00  "ht")(1)
		$a_00_14 = {22 74 70 22 29 28 31 29 } //00 00  "tp")(1)
		$a_00_15 = {5d 04 00 00 3b 99 03 80 5c 23 00 00 3c 99 03 80 00 00 01 00 04 } //00 0d 
	condition:
		any of ($a_*)
 
}