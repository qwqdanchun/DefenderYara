
rule Trojan_Win32_Banboro_A{
	meta:
		description = "Trojan:Win32/Banboro.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 52 42 20 42 61 6e 6b 6e 65 74 20 96 20 42 61 6e 63 6f 20 64 65 20 42 72 61 73 ed 6c 69 61 } //01 00 
		$a_01_1 = {34 44 36 46 37 41 36 39 36 43 36 43 36 31 32 30 34 36 36 39 37 32 36 35 36 36 36 46 37 38 } //01 00 
		$a_01_2 = {47 65 72 65 6e 63 69 61 64 6f 72 20 64 65 20 54 61 72 65 66 61 73 20 64 6f 20 57 69 6e 64 6f 77 73 } //00 00 
		$a_00_3 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}