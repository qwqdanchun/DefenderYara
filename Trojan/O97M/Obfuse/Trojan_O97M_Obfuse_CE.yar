
rule Trojan_O97M_Obfuse_CE{
	meta:
		description = "Trojan:O97M/Obfuse.CE,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {3d 20 34 34 32 32 34 34 37 34 20 2f 20 90 12 10 00 20 2d 20 35 33 36 30 38 33 37 38 36 20 2b 20 43 53 6e 67 28 90 12 10 00 29 20 2b 20 32 20 2d 20 43 68 72 28 37 30 31 33 29 20 2d 20 90 12 10 00 20 2f 20 38 35 32 37 20 2a 20 90 12 10 00 20 2b 20 46 69 78 28 37 37 39 38 29 20 2b 20 39 39 30 35 20 2a 20 53 69 6e 28 37 29 20 2f 20 33 31 30 20 2a 20 53 69 6e 28 90 12 10 00 29 90 00 } //01 00 
		$a_02_1 = {3d 20 38 37 31 20 2f 20 52 6e 64 28 34 29 20 2b 20 90 12 10 00 20 2b 20 90 12 10 00 20 2a 20 39 20 2b 20 49 6e 74 28 90 12 10 00 20 2a 20 43 53 74 72 28 90 12 10 00 29 29 20 2b 20 90 12 10 00 20 2a 20 43 44 61 74 65 28 33 36 32 34 20 2d 20 33 35 32 31 38 33 34 36 37 20 2a 20 38 34 20 2f 20 34 37 35 29 20 2f 20 90 12 10 00 20 2d 20 43 53 6e 67 28 36 32 30 29 90 00 } //01 00 
		$a_02_2 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 20 22 90 12 10 00 22 2c 20 90 12 10 00 90 00 } //01 00 
		$a_00_3 = {3d 20 4d 69 64 28 22 59 2f 2c 68 74 74 70 3a 2f 27 2b 27 2f 27 2b 27 61 72 74 65 61 6e 64 76 74 65 2b 76 74 65 69 76 74 65 2b 76 74 65 6e 69 27 2b } //00 00 
	condition:
		any of ($a_*)
 
}