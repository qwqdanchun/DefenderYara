
rule Trojan_O97M_Donoff_GA_MSR{
	meta:
		description = "Trojan:O97M/Donoff.GA!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_02_0 = {2b 20 43 68 72 28 90 02 10 20 58 6f 72 20 90 02 10 29 90 00 } //02 00 
		$a_02_1 = {3d 20 56 61 6c 28 22 26 48 22 20 26 20 28 4d 69 64 24 28 46 46 46 46 2c 20 28 32 20 2a 20 90 02 10 29 20 2d 20 31 2c 20 32 29 29 29 90 00 } //02 00 
		$a_02_2 = {4d 69 64 28 90 02 08 2c 20 69 2c 20 31 29 20 3d 20 43 68 72 28 41 73 63 28 4d 69 64 28 90 02 08 2c 20 69 2c 20 31 29 29 20 2d 20 6e 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}