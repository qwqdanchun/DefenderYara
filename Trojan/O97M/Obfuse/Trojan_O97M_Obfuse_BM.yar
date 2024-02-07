
rule Trojan_O97M_Obfuse_BM{
	meta:
		description = "Trojan:O97M/Obfuse.BM,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {41 74 74 72 69 62 75 74 65 20 56 42 5f 4e 61 6d 65 20 3d 20 22 6b 61 69 70 77 55 7a 77 42 22 } //01 00  Attribute VB_Name = "kaipwUzwB"
		$a_00_1 = {56 42 5f 4e 61 6d 65 20 3d 20 22 62 77 69 4f 6e 69 69 7a 56 42 68 22 } //01 00  VB_Name = "bwiOniizVBh"
		$a_00_2 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //01 00  Sub AutoOpen()
		$a_02_3 = {3d 20 22 22 20 2b 20 90 12 08 00 20 2b 20 90 12 08 00 20 2b 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 4e 61 6d 65 20 2b 20 90 12 08 00 20 2b 20 90 12 09 00 90 00 } //01 00 
		$a_02_4 = {49 66 20 44 69 72 28 90 12 08 00 29 20 3d 20 22 22 20 54 68 65 6e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}