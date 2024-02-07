
rule Trojan_O97M_Obfuse_PFF{
	meta:
		description = "Trojan:O97M/Obfuse.PFF,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 37 62 65 33 34 64 33 20 3d 20 53 74 72 43 6f 6e 76 28 63 33 30 64 32 64 38 37 2c 20 76 62 55 6e 69 63 6f 64 65 29 } //01 00  b7be34d3 = StrConv(c30d2d87, vbUnicode)
		$a_01_1 = {65 61 30 33 39 34 65 38 20 3d 20 53 70 6c 69 74 28 65 39 62 35 64 65 37 34 2c 20 22 7c 22 29 } //01 00  ea0394e8 = Split(e9b5de74, "|")
		$a_01_2 = {61 30 37 61 35 37 35 32 2e 66 64 61 30 35 31 34 39 20 62 64 33 65 34 63 35 65 28 30 29 20 2b 20 22 20 22 20 2b 20 64 61 30 33 64 32 34 66 28 22 70 64 66 22 29 } //00 00  a07a5752.fda05149 bd3e4c5e(0) + " " + da03d24f("pdf")
	condition:
		any of ($a_*)
 
}