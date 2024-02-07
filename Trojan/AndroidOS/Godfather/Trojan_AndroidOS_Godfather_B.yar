
rule Trojan_AndroidOS_Godfather_B{
	meta:
		description = "Trojan:AndroidOS/Godfather.B,SIGNATURE_TYPE_DEXHSTR_EXT,02 00 02 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 63 6f 6d 2f 61 2f 63 2f 67 30 66 39 } //01 00  Lcom/a/c/g0f9
		$a_01_1 = {30 65 31 36 38 35 34 64 34 66 63 38 33 64 38 36 63 34 35 32 30 61 32 63 36 32 32 35 33 36 31 34 64 62 33 30 31 63 35 62 31 35 35 34 62 61 32 66 32 30 32 62 31 38 34 34 33 34 35 39 38 62 33 64 } //01 00  0e16854d4fc83d86c4520a2c62253614db301c5b1554ba2f202b184434598b3d
		$a_01_2 = {30 33 35 61 36 32 34 34 37 63 36 32 39 64 39 66 64 38 35 36 38 35 38 63 62 66 65 39 30 35 63 39 } //01 00  035a62447c629d9fd856858cbfe905c9
		$a_01_3 = {38 38 31 63 34 33 35 65 31 39 32 63 66 64 62 31 63 36 62 36 34 34 37 39 34 34 37 31 33 66 32 63 66 37 32 35 66 61 32 63 61 32 30 33 35 36 32 34 63 64 31 36 36 61 30 63 30 38 34 38 37 63 30 63 } //01 00  881c435e192cfdb1c6b6447944713f2cf725fa2ca2035624cd166a0c08487c0c
		$a_01_4 = {61 38 38 38 39 65 65 64 32 65 62 35 35 63 63 63 66 61 63 32 63 39 31 62 38 38 38 34 32 63 64 38 } //00 00  a8889eed2eb55cccfac2c91b88842cd8
	condition:
		any of ($a_*)
 
}