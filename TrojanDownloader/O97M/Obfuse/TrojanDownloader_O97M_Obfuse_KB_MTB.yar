
rule TrojanDownloader_O97M_Obfuse_KB_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.KB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0e 00 0e 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {5c 54 65 6d 70 5c 90 02 15 20 26 20 22 2e 6a 22 20 26 20 22 73 22 90 00 } //01 00 
		$a_01_1 = {3d 20 45 6e 76 69 72 6f 6e 28 64 29 } //01 00  = Environ(d)
		$a_01_2 = {2e 43 6f 6e 74 72 6f 6c 73 } //01 00  .Controls
		$a_03_3 = {4f 70 65 6e 20 90 02 24 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 90 00 } //01 00 
		$a_01_4 = {2e 43 61 70 74 69 6f 6e } //01 00  .Caption
		$a_01_5 = {3d 20 22 6e 65 77 3a 31 33 37 30 39 36 32 30 2d 43 32 37 39 2d 31 31 43 45 2d 41 34 39 45 2d 34 34 34 35 35 33 35 34 30 30 30 30 22 } //00 00  = "new:13709620-C279-11CE-A49E-444553540000"
	condition:
		any of ($a_*)
 
}