
rule Trojan_Win32_Phires_A{
	meta:
		description = "Trojan:Win32/Phires.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 74 6f 63 6b 50 2e 6b 6e 6c } //01 00 
		$a_01_1 = {5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 53 6f 67 6f 75 49 6e 70 75 74 5c 35 2e 30 2e 30 2e 33 37 38 37 5c } //01 00 
		$a_01_2 = {3a 2f 2f 25 37 37 25 37 37 25 37 36 25 32 65 25 37 30 25 36 39 25 36 65 25 37 61 25 36 38 25 36 66 25 36 65 25 36 37 25 32 65 25 36 65 25 36 35 25 34 2f 25 36 39 25 36 65 25 36 34 25 36 35 25 37 38 25 33 31 25 32 65 25 36 38 25 34 25 36 64 } //01 00 
		$a_01_3 = {5c c3 e2 b7 d1 d4 da cf df d0 a1 d3 ce cf b7 5f 35 35 32 37 37 2e 63 6f 6d 2e 6c 6e 6b } //01 00 
		$a_01_4 = {5c d2 d7 c5 cc a3 a8 c3 e2 b7 d1 cd f8 c2 e7 d3 b2 c5 cc a3 a9 2e 6c 6e 6b } //00 00 
	condition:
		any of ($a_*)
 
}