
rule TrojanDropper_Win32_Delf_ZA{
	meta:
		description = "TrojanDropper:Win32/Delf.ZA,SIGNATURE_TYPE_PEHSTR_EXT,ffffffa4 06 ffffffdc 05 08 00 00 ffffffe8 03 "
		
	strings :
		$a_02_0 = {b8 0a 00 00 00 e8 90 01 04 84 c0 74 90 01 01 6a 01 a1 90 01 04 e8 90 01 04 50 e8 90 01 04 e8 90 01 04 a1 90 01 04 8b 00 e8 90 01 04 eb 68 b2 04 90 00 } //64 00 
		$a_00_1 = {43 3a 5c 6d 73 68 79 77 69 6e 2e 64 6c 6c } //64 00 
		$a_00_2 = {64 65 6c 68 75 79 73 74 61 2e 62 61 74 } //64 00 
		$a_00_3 = {67 68 6e 61 76 64 2e 65 78 65 } //64 00 
		$a_00_4 = {4c 69 75 5f 6d 61 7a 69 } //64 00 
		$a_00_5 = {64 65 6c 20 25 30 } //64 00 
		$a_00_6 = {3a 74 72 79 31 } //64 00 
		$a_00_7 = {20 67 6f 74 6f 20 74 72 79 31 } //00 00 
	condition:
		any of ($a_*)
 
}