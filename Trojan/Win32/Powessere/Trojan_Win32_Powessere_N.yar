
rule Trojan_Win32_Powessere_N{
	meta:
		description = "Trojan:Win32/Powessere.N,SIGNATURE_TYPE_CMDHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_1 = {67 00 65 00 74 00 2d 00 69 00 74 00 65 00 6d 00 70 00 72 00 6f 00 70 00 65 00 72 00 74 00 79 00 20 00 2d 00 70 00 61 00 74 00 68 00 20 00 27 00 48 00 4b 00 } //01 00 
		$a_00_2 = {5b 00 42 00 79 00 74 00 65 00 5d 00 3a 00 3a 00 50 00 61 00 72 00 73 00 65 00 28 00 24 00 } //01 00 
		$a_00_3 = {5d 00 3a 00 3a 00 48 00 65 00 78 00 4e 00 75 00 6d 00 62 00 65 00 72 00 } //01 00 
		$a_00_4 = {5d 00 3a 00 3a 00 47 00 65 00 74 00 44 00 6f 00 6d 00 61 00 69 00 6e 00 28 00 29 00 2e 00 4c 00 6f 00 61 00 64 00 28 00 24 00 } //01 00 
		$a_00_5 = {2e 00 45 00 6e 00 74 00 72 00 79 00 50 00 6f 00 69 00 6e 00 74 00 2e 00 69 00 6e 00 76 00 6f 00 6b 00 65 00 28 00 24 00 } //00 00 
	condition:
		any of ($a_*)
 
}