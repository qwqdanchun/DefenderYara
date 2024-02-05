
rule Trojan_AndroidOS_MpTest_A{
	meta:
		description = "Trojan:AndroidOS/MpTest.A,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {32 62 38 35 61 61 33 37 2d 64 66 65 63 2d 34 64 32 62 2d 38 39 38 38 2d 65 36 66 33 61 31 30 62 65 31 31 65 } //01 00 
		$a_00_1 = {33 61 37 61 65 37 30 61 2d 63 64 37 36 2d 34 33 32 31 2d 39 63 30 38 2d 37 31 61 65 31 66 37 39 66 64 65 31 } //01 00 
		$a_00_2 = {32 66 63 35 64 66 37 31 2d 38 62 66 65 2d 34 62 33 37 2d 39 34 35 30 2d 64 64 64 30 30 62 35 37 64 35 36 66 } //01 00 
		$a_00_3 = {37 61 63 31 66 61 37 66 2d 30 35 38 63 2d 34 36 64 33 2d 39 63 32 63 2d 36 37 36 63 32 31 35 37 63 65 33 33 } //01 00 
		$a_00_4 = {38 62 66 61 63 61 32 34 2d 62 35 61 38 2d 34 31 62 38 2d 62 37 61 38 2d 39 30 38 38 38 64 62 35 32 32 31 35 } //00 00 
	condition:
		any of ($a_*)
 
}