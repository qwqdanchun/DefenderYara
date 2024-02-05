
rule Trojan_Win64_Alureon_gen_N{
	meta:
		description = "Trojan:Win64/Alureon.gen!N,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 8b c8 ff 15 90 01 04 33 d2 48 8d 4c 24 78 c7 44 24 70 68 00 00 00 44 8d 42 60 e8 49 01 00 00 48 8d 15 90 01 04 48 8d 0d 90 00 } //01 00 
		$a_01_1 = {5c 73 76 63 68 6f 73 74 2e 65 78 65 00 00 00 5c 5c 2e 5c 67 6c 6f 62 61 6c 72 6f 6f 74 5c 73 79 73 74 65 6d 72 6f 6f 74 5c 73 79 73 77 6f 77 36 34 5c 77 69 6e 72 73 68 6f 73 74 2e 65 78 65 } //01 00 
		$a_01_2 = {00 57 6f 77 36 34 53 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}