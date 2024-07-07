
rule TrojanDownloader_O97M_Powdow_RSO_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RSO!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,09 00 09 00 07 00 00 "
		
	strings :
		$a_00_0 = {2e 6f 44 6e 77 6f 6c 64 61 54 73 69 72 67 6e 28 27 68 27 74 74 3a 70 2f 2f 72 67 75 6f 73 70 75 2e 2e 73 6f 74 36 3a 2f 39 27 64 29 22 29 } //5 .oDnwoldaTsirgn('h'tt:p//rguospu..sot6:/9'd)")
		$a_00_1 = {34 34 36 46 37 37 36 45 36 43 36 46 36 31 36 34 37 33 35 34 37 32 36 39 36 45 36 37 32 37 32 38 32 37 36 38 37 34 37 34 37 30 33 41 32 46 32 46 36 37 37 32 36 46 37 35 37 30 37 33 32 45 37 35 37 33 32 45 37 34 36 46 33 41 33 36 33 39 32 46 36 34 32 37 32 39 } //5 446F776E6C6F6164735472696E67272827687474703A2F2F67726F7570732E75732E746F3A36392F642729
		$a_00_2 = {43 68 72 28 31 31 36 29 20 2b 20 43 68 72 28 31 31 32 29 20 2b 20 43 68 72 28 35 38 29 20 2b 20 43 68 72 28 34 37 29 20 2b 20 43 68 72 28 34 37 29 20 2b 20 43 68 72 28 31 30 33 29 20 2b 20 43 68 72 28 31 31 34 29 20 2b 20 43 68 72 28 31 31 31 29 20 2b 20 43 68 72 28 31 31 37 29 20 5f 0d 0a 20 2b 20 43 68 72 28 31 31 32 29 20 2b 20 43 68 72 28 31 31 35 29 20 2b 20 43 68 72 28 34 36 29 20 2b 20 43 68 72 28 31 31 37 29 20 2b 20 43 68 72 28 31 31 35 29 20 2b 20 43 68 72 28 34 36 29 20 2b 20 43 68 72 28 31 31 36 29 20 2b 20 43 68 72 28 31 31 31 29 20 2b 20 43 68 72 28 35 38 29 20 5f 0d 0a 20 2b 20 43 68 72 28 35 34 29 20 2b 20 43 68 72 28 35 37 29 20 2b 20 43 68 72 28 34 37 29 20 2b 20 43 68 72 28 31 30 30 29 } //5
		$a_00_3 = {73 30 20 28 70 30 29 } //1 s0 (p0)
		$a_00_4 = {62 30 20 3d 20 64 30 2e 47 65 74 28 22 77 49 6e 33 32 5f 70 52 6f 43 65 53 73 22 29 } //1 b0 = d0.Get("wIn32_pRoCeSs")
		$a_00_5 = {47 65 74 4f 62 6a 65 63 74 28 22 57 69 4e 6d 47 6d 54 73 3a 7b 49 6d 50 65 52 73 4f 6e 41 74 49 6f 4e 6c 45 76 45 6c 3d 49 6d 50 65 52 73 4f 6e 41 74 45 7d 21 5c 5c 2e 5c 52 6f 4f 74 5c 43 69 4d 76 32 22 29 } //1 GetObject("WiNmGmTs:{ImPeRsOnAtIoNlEvEl=ImPeRsOnAtE}!\\.\RoOt\CiMv2")
		$a_00_6 = {62 30 2e 43 72 65 61 74 65 28 6e 30 2c 20 4e 75 6c 6c 29 } //1 b0.Create(n0, Null)
	condition:
		((#a_00_0  & 1)*5+(#a_00_1  & 1)*5+(#a_00_2  & 1)*5+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=9
 
}