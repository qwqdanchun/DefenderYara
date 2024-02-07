
rule Trojan_O97M_Vobfus_A{
	meta:
		description = "Trojan:O97M/Vobfus.A,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //01 00  Sub AutoOpen()
		$a_03_1 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 20 22 90 02 10 22 2c 20 90 00 } //02 00 
		$a_03_2 = {2d 20 52 6f 75 6e 64 28 90 02 10 20 2a 20 43 53 6e 67 28 90 02 10 20 2a 20 43 49 6e 74 28 90 02 10 29 29 20 2b 20 90 02 10 20 2d 20 52 6f 75 6e 64 28 90 02 10 29 29 20 2d 20 90 02 10 20 2f 20 43 69 4d 63 74 20 2b 20 90 00 } //02 00 
		$a_03_3 = {52 6e 64 28 90 02 10 29 20 2a 20 28 90 02 10 20 2f 20 43 44 62 6c 28 90 02 10 29 20 2b 20 28 90 02 10 20 2f 20 43 42 79 74 65 28 90 02 10 20 2f 20 43 44 62 6c 28 90 02 10 29 20 2d 20 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}