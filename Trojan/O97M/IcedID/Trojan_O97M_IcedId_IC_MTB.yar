
rule Trojan_O97M_IcedId_IC_MTB{
	meta:
		description = "Trojan:O97M/IcedId.IC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 22 32 65 36 61 36 66 36 39 36 65 32 38 32 32 32 32 32 39 33 62 30 64 30 61 37 36 36 31 37 32 32 30 36 31 34 64 35 31 34 34 34 36 36 66 32 30 33 64 32 30 32 32 36 33 33 61 35 63 35 63 37 30 37 32 36 66 36 37 37 32 36 31 36 64 36 34 36 31 37 34 36 31 35 63 35 63 36 31 36 35 36 65 35 39 34 66 32 65 37 30 36 34 36 36 32 32 33 62 30 64 30 61 30 64 30 61 37 37 36 39 36 65 36 34 36 66 37 37 22 } //01 00 
		$a_01_1 = {32 65 37 33 37 34 36 31 37 34 37 35 37 33 32 30 33 64 32 30 33 32 33 30 33 30 32 30 35 34 36 38 36 35 36 65 30 64 30 61 30 39 35 33 36 35 37 34 32 30 36 31 35 61 36 35 33 34 34 39 32 30 33 64 32 30 34 33 37 32 36 35 36 31 37 34 36 35 34 66 36 32 36 61 36 35 36 33 37 34 32 38 32 32 36 31 36 34 36 66 36 34 36 32 32 65 37 33 37 34 37 32 36 35 36 31 36 64 32 32 32 39 30 64 30 61 30 39 } //01 00 
		$a_03_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 0a 29 2e 72 75 6e 20 28 90 02 0a 20 26 20 22 20 22 20 26 20 90 02 0a 29 90 00 } //01 00 
		$a_01_3 = {3d 20 44 65 73 28 22 37 32 36 31 36 35 35 38 34 35 37 33 37 35 36 31 36 35 35 38 34 35 37 33 36 65 36 31 36 35 35 38 34 35 37 33 36 34 36 31 36 35 35 38 34 35 37 33 36 63 36 31 36 35 35 38 34 35 37 33 36 63 36 31 36 35 35 38 34 35 37 33 33 33 36 31 36 35 35 38 34 35 37 33 33 32 36 31 36 35 35 38 34 35 37 33 32 65 36 31 36 35 35 38 34 35 37 33 36 35 36 31 36 35 35 38 34 35 37 33 37 38 36 31 36 35 35 38 34 35 37 33 36 35 36 31 36 35 35 38 34 35 37 33 32 30 36 31 36 35 35 38 34 35 37 33 37 35 } //00 00 
	condition:
		any of ($a_*)
 
}