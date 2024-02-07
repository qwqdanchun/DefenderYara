
rule Trojan_O97M_Obfuse_D{
	meta:
		description = "Trojan:O97M/Obfuse.D,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //01 00  Sub AutoOpen()
		$a_02_1 = {20 3d 20 48 65 78 28 90 01 06 29 90 00 } //01 00 
		$a_02_2 = {20 3d 20 47 65 74 4f 62 6a 65 63 74 28 22 6e 65 77 3a 37 32 43 32 34 44 44 35 2d 44 37 30 41 2d 34 33 38 42 2d 38 41 34 32 2d 39 38 34 32 34 42 38 38 41 46 42 38 22 20 2b 20 90 02 09 29 90 00 } //01 00 
		$a_00_3 = {2e 54 65 78 74 46 72 61 6d 65 2e 54 65 78 74 52 61 6e 67 65 2e 54 65 78 74 20 2b } //00 00  .TextFrame.TextRange.Text +
	condition:
		any of ($a_*)
 
}