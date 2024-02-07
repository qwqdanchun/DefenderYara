
rule Trojan_O97M_Obfuse_BAT_MTB{
	meta:
		description = "Trojan:O97M/Obfuse.BAT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 75 6e 63 74 69 6f 6e 20 64 66 39 65 31 32 32 65 28 61 36 30 30 61 66 35 38 29 } //01 00  Function df9e122e(a600af58)
		$a_01_1 = {53 65 74 20 62 38 61 63 66 61 62 66 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 } //01 00  Set b8acfabf = CreateObject("wscript.shell")
		$a_01_2 = {43 61 6c 6c 20 62 38 61 63 66 61 62 66 2e 65 78 65 63 28 61 36 30 30 61 66 35 38 29 } //01 00  Call b8acfabf.exec(a600af58)
		$a_01_3 = {64 63 64 33 66 36 36 35 20 3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 53 68 61 70 65 73 28 31 29 2e 54 69 74 6c 65 20 2b 20 22 20 22 20 2b 20 66 35 64 31 31 32 61 30 } //01 00  dcd3f665 = ActiveDocument.Shapes(1).Title + " " + f5d112a0
		$a_01_4 = {65 35 66 62 64 39 39 64 20 3d 20 66 35 61 34 31 39 62 37 2e 63 34 39 32 62 39 62 39 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 53 68 61 70 65 73 28 65 64 37 31 65 65 34 63 29 2e 41 6c 74 65 72 6e 61 74 69 76 65 54 65 78 74 29 } //00 00  e5fbd99d = f5a419b7.c492b9b9(ActiveDocument.Shapes(ed71ee4c).AlternativeText)
	condition:
		any of ($a_*)
 
}