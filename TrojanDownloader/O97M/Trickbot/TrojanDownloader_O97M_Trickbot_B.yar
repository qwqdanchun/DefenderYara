
rule TrojanDownloader_O97M_Trickbot_B{
	meta:
		description = "TrojanDownloader:O97M/Trickbot.B,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {56 42 5f 42 61 73 65 20 3d 20 22 30 7b 43 34 42 32 38 34 30 41 2d 43 37 34 42 2d 34 37 35 43 2d 38 41 46 44 2d 35 42 42 37 38 34 33 45 30 34 37 42 7d 7b 36 44 32 38 36 41 43 37 2d 33 30 32 30 2d 34 33 42 45 2d 41 34 31 38 2d 34 32 46 41 36 46 34 33 43 42 35 45 7d 22 } //01 00 
		$a_00_1 = {49 66 20 69 20 3d 20 34 31 30 20 54 68 65 6e 20 53 68 65 6c 6c 20 2e 4c 61 73 74 54 65 78 74 2c 20 30 20 2a 20 69 } //01 00 
		$a_00_2 = {50 72 69 76 61 74 65 20 53 75 62 20 4c 65 72 63 65 6e 74 5f 43 68 61 6e 67 65 28 29 } //00 00 
	condition:
		any of ($a_*)
 
}