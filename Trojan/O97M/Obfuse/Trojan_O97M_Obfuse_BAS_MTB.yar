
rule Trojan_O97M_Obfuse_BAS_MTB{
	meta:
		description = "Trojan:O97M/Obfuse.BAS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 61 6c 6c 20 66 38 38 63 63 64 35 35 2e 65 78 65 63 28 64 35 33 33 61 32 36 64 29 } //01 00  Call f88ccd55.exec(d533a26d)
		$a_01_1 = {65 36 38 39 66 37 65 61 2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 66 36 63 64 33 39 64 38 2c 20 46 61 6c 73 65 } //01 00  e689f7ea.Open "GET", f6cd39d8, False
		$a_01_2 = {62 30 33 37 37 39 38 35 20 3d 20 53 70 6c 69 74 28 62 39 65 32 36 33 34 64 2c 20 22 7c 22 29 } //01 00  b0377985 = Split(b9e2634d, "|")
		$a_01_3 = {63 61 37 31 66 38 35 39 2e 64 61 35 30 32 62 36 33 20 65 35 31 36 62 39 34 65 28 30 29 20 2b } //00 00  ca71f859.da502b63 e516b94e(0) +
	condition:
		any of ($a_*)
 
}