
rule TrojanDownloader_O97M_Valyria_H_MTB{
	meta:
		description = "TrojanDownloader:O97M/Valyria.H!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {3d 20 22 70 6f 77 65 72 73 68 65 6c 6c 2e 65 78 65 20 20 20 2e 20 28 20 28 5b 73 54 72 49 4e 67 5d 24 56 65 52 42 4f 53 65 50 52 65 66 65 52 45 6e 43 65 29 5b 31 2c 33 5d 2b 27 78 27 2d 4a 4f 49 6e 27 27 29 } //01 00  = "powershell.exe   . ( ([sTrINg]$VeRBOSePRefeREnCe)[1,3]+'x'-JOIn'')
		$a_02_1 = {28 28 27 28 27 2b 90 02 0f 53 27 2b 27 74 90 02 0f 2b 90 02 0f 61 72 27 2b 27 74 27 2b 27 2d 50 72 6f 63 65 73 27 2b 27 90 02 40 73 90 02 50 68 74 74 27 2b 27 70 73 3a 2f 2f 66 69 27 2b 27 6c 65 27 2b 27 90 02 40 2e 63 90 02 40 61 74 90 02 40 62 6f 78 27 2b 27 2e 27 2b 27 6d 90 02 40 6f 65 2f 90 02 40 75 35 74 27 2b 27 90 02 40 37 90 02 40 6e 27 2b 27 6c 2e 70 27 2b 27 6e 27 2b 27 67 27 2b 27 90 02 40 29 90 00 } //01 00 
		$a_02_2 = {2e 52 65 70 6c 41 63 27 2b 27 45 27 2b 27 28 28 5b 63 48 61 27 2b 27 72 5d 35 35 2b 5b 63 48 61 72 27 2b 27 5d 27 2b 27 38 33 2b 5b 63 27 2b 27 48 27 2b 27 61 27 2b 27 72 5d 39 30 29 2c 5b 27 2b 27 73 54 52 27 2b 27 69 6e 27 2b 27 67 5d 5b 63 48 61 72 27 2b 27 5d 27 2b 27 33 27 2b 27 34 27 2b 27 29 20 90 02 40 20 26 20 28 20 90 02 50 29 27 29 2e 52 45 50 4c 61 43 45 28 27 90 02 0f 27 2c 5b 73 54 52 49 6e 47 5d 5b 43 68 61 72 5d 31 32 34 29 2e 52 45 50 4c 61 43 45 28 27 90 02 0f 27 2c 5b 73 54 52 49 6e 47 5d 5b 43 68 61 72 5d 33 36 29 2e 52 45 50 4c 61 43 45 28 28 5b 43 68 61 72 5d 31 30 35 2b 5b 43 68 61 72 5d 37 35 2b 5b 43 68 61 72 5d 37 38 29 2c 5b 73 54 52 49 6e 47 5d 5b 43 68 61 72 5d 33 39 29 20 29 20 22 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}