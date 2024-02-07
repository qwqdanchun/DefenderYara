
rule Trojan_O97M_Vobfush_A{
	meta:
		description = "Trojan:O97M/Vobfush.A,SIGNATURE_TYPE_MACROHSTR_EXT,11 00 11 00 06 00 00 0a 00 "
		
	strings :
		$a_02_0 = {20 2f 20 54 61 6e 28 90 1d 20 00 90 0a e0 00 20 3d 20 28 90 1f 10 00 20 2b 20 52 6f 75 6e 64 28 90 1d 20 00 29 20 2a 20 90 1f 10 00 20 2d 20 90 1d 20 00 20 2b 20 28 90 00 } //05 00 
		$a_01_1 = {53 68 65 6c 6c } //01 00  Shell
		$a_01_2 = {53 68 61 70 65 73 } //01 00  Shapes
		$a_01_3 = {54 65 78 74 46 72 61 6d 65 } //01 00  TextFrame
		$a_01_4 = {54 65 78 74 52 61 6e 67 65 } //01 00  TextRange
		$a_01_5 = {49 6e 74 65 72 61 63 74 69 6f 6e } //00 00  Interaction
		$a_00_6 = {5d 04 00 00 df c6 03 80 5c 21 00 00 e0 c6 03 } //80 00 
	condition:
		any of ($a_*)
 
}