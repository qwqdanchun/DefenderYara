
rule TrojanDownloader_O97M_Donoff_BO{
	meta:
		description = "TrojanDownloader:O97M/Donoff.BO,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 69 64 28 73 68 65 6c 6c 43 6f 64 65 2c } //01 00  Mid(shellCode,
		$a_00_1 = {72 4c 2c 20 7a 4c 2c 20 26 48 35 30 30 30 2c 20 26 48 31 30 30 30 2c 20 26 48 34 30 29 } //00 00  rL, zL, &H5000, &H1000, &H40)
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Donoff_BO_2{
	meta:
		description = "TrojanDownloader:O97M/Donoff.BO,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {43 61 6c 6c 20 53 68 65 6c 6c 28 90 02 20 2c 20 76 62 4e 6f 72 6d 61 6c 46 6f 63 75 73 29 90 00 } //01 00 
		$a_01_1 = {45 6e 76 69 72 6f 6e 24 28 43 68 72 28 38 34 29 20 2b 20 43 68 72 28 37 37 29 20 2b 20 43 68 72 28 38 30 29 29 } //01 00  Environ$(Chr(84) + Chr(77) + Chr(80))
		$a_01_2 = {43 68 72 28 34 36 29 20 2b 20 43 68 72 28 31 30 31 29 20 2b 20 43 68 72 28 31 32 30 29 20 2b 20 43 68 72 28 31 30 31 29 } //01 00  Chr(46) + Chr(101) + Chr(120) + Chr(101)
		$a_01_3 = {3d 20 43 68 72 28 31 30 34 29 20 2b 20 43 68 72 28 31 31 36 29 20 2b 20 43 68 72 28 31 31 36 29 20 2b 20 43 68 72 28 31 31 32 29 20 2b 20 43 68 72 28 31 31 35 29 20 2b 20 43 68 72 28 35 38 29 20 2b 20 43 68 72 28 34 37 29 20 2b 20 43 68 72 28 34 37 29 } //01 00  = Chr(104) + Chr(116) + Chr(116) + Chr(112) + Chr(115) + Chr(58) + Chr(47) + Chr(47)
		$a_01_4 = {2b 20 43 68 72 28 34 36 29 20 2b 20 43 68 72 28 31 31 35 29 20 2b 20 43 68 72 28 39 39 29 20 2b 20 43 68 72 28 31 31 34 29 } //00 00  + Chr(46) + Chr(115) + Chr(99) + Chr(114)
		$a_00_5 = {5d 04 00 } //00 4d 
	condition:
		any of ($a_*)
 
}