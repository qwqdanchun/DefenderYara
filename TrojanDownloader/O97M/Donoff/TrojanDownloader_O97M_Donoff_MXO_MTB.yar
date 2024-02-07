
rule TrojanDownloader_O97M_Donoff_MXO_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.MXO!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {4b 20 3d 20 22 6a 2e 6d 70 2f 22 } //01 00  K = "j.mp/"
		$a_01_1 = {54 20 3d 20 22 68 75 69 64 79 77 71 75 64 62 6a 68 76 63 66 67 6a 64 61 67 73 68 64 6a 22 } //01 00  T = "huidywqudbjhvcfgjdagshdj"
		$a_01_2 = {4c 20 3d 20 22 70 22 } //01 00  L = "p"
		$a_01_3 = {46 20 3d 20 22 20 48 22 20 2b 20 44 20 2b 20 44 20 2b 20 4c 20 2b 20 22 3a 2f 2f 22 20 2b 20 4b 20 2b 20 54 } //01 00  F = " H" + D + D + L + "://" + K + T
		$a_01_4 = {70 69 6e 67 73 20 3d 20 58 20 2b 20 59 20 2b 20 5a 20 2b 20 44 20 2b 20 45 20 2b 20 46 } //01 00  pings = X + Y + Z + D + E + F
		$a_01_5 = {6d 65 69 6e 6b 6f 6e 68 75 6e 20 3d 20 47 65 74 4f 62 6a 65 63 74 28 22 22 20 2b 20 22 6e 22 20 2b 20 22 65 22 20 2b 20 22 77 22 20 2b 20 22 3a 22 20 2b 20 22 46 39 33 22 20 2b 20 22 35 22 20 2b 20 22 44 22 20 2b 20 22 43 22 20 2b 20 22 32 22 20 2b 20 22 32 22 20 2b 20 22 2d 22 20 2b 20 22 31 22 20 2b 20 22 43 22 20 2b 20 22 46 22 } //01 00  meinkonhun = GetObject("" + "n" + "e" + "w" + ":" + "F93" + "5" + "D" + "C" + "2" + "2" + "-" + "1" + "C" + "F"
		$a_01_6 = {6d 65 69 6e 6b 6f 6e 68 75 6e 2e 45 58 45 43 20 70 69 6e 67 73 } //00 00  meinkonhun.EXEC pings
	condition:
		any of ($a_*)
 
}