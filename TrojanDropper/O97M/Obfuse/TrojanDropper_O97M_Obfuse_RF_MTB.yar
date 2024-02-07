
rule TrojanDropper_O97M_Obfuse_RF_MTB{
	meta:
		description = "TrojanDropper:O97M/Obfuse.RF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 45 6e 76 69 72 6f 6e 28 4d 69 64 28 22 90 02 16 22 2c 20 90 02 06 29 20 26 20 4d 69 64 28 22 90 02 16 22 2c 20 90 02 02 2c 20 90 02 02 29 90 00 } //01 00 
		$a_01_1 = {26 20 43 68 72 28 39 32 29 20 26 20 52 6e 64 20 26 20 22 2e 6a 73 65 22 } //01 00  & Chr(92) & Rnd & ".jse"
		$a_01_2 = {2e 52 65 70 6c 61 63 65 6d 65 6e 74 2e 54 65 78 74 20 3d } //01 00  .Replacement.Text =
		$a_03_3 = {4f 70 65 6e 20 90 02 08 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 90 00 } //01 00 
		$a_01_4 = {50 72 69 6e 74 20 23 } //01 00  Print #
		$a_01_5 = {2e 54 65 78 74 20 3d 20 22 28 5b 2e } //00 00  .Text = "([.
	condition:
		any of ($a_*)
 
}