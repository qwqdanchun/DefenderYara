
rule TrojanDownloader_Linux_Adnel_Q{
	meta:
		description = "TrojanDownloader:Linux/Adnel.Q,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {4d 6f 64 20 28 28 90 04 02 03 30 2d 39 90 05 01 03 30 2d 39 20 90 03 01 01 2b 2d 20 90 04 02 03 30 2d 39 90 05 01 03 30 2d 39 20 90 03 01 01 2b 2d 20 90 1b 00 90 1b 01 20 90 03 01 01 2b 2d 20 90 1b 03 90 1b 04 20 90 03 01 01 2b 2d 20 90 1b 00 90 1b 01 20 90 03 01 01 2b 2d 20 90 1b 03 90 1b 04 90 00 } //01 00 
		$a_03_1 = {3d 20 53 74 72 43 6f 6e 76 28 90 02 08 2c 20 28 90 04 02 03 30 2d 39 90 05 01 03 30 2d 39 20 90 03 01 01 2b 2d 20 90 04 02 03 30 2d 39 90 05 01 03 30 2d 39 20 90 03 01 01 2b 2d 20 90 1b 01 90 1b 02 20 90 03 01 01 2b 2d 20 90 1b 04 90 1b 05 20 90 03 01 01 2b 2d 20 90 1b 01 90 1b 02 20 90 03 01 01 2b 2d 20 90 1b 04 90 1b 05 90 00 } //01 00 
		$a_03_2 = {29 20 3d 20 28 90 04 02 03 30 2d 39 2e 90 05 01 03 30 2d 39 20 90 03 01 01 2b 2d 20 90 04 02 03 30 2d 39 90 05 01 03 30 2d 39 20 90 03 01 01 2b 2d 20 90 1b 00 2e 90 1b 01 20 90 03 01 01 2b 2d 20 90 1b 03 90 1b 04 20 90 03 01 01 2b 2d 20 90 1b 00 2e 90 1b 01 20 90 03 01 01 2b 2d 20 90 1b 03 90 1b 04 90 02 18 29 20 54 68 65 6e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}