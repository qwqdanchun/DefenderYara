
rule Trojan_Win32_Desurou_A{
	meta:
		description = "Trojan:Win32/Desurou.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 04 00 "
		
	strings :
		$a_03_0 = {7e 17 99 b9 00 01 00 00 f7 f9 8b 45 90 01 01 30 14 90 01 01 40 3b 45 90 01 01 89 45 90 01 01 7c e9 90 00 } //01 00 
		$a_00_1 = {5b 77 79 62 68 6f 69 6e 69 5d 00 } //01 00 
		$a_01_2 = {6c 6f 63 6b 68 6f 6d 65 70 61 67 65 00 } //01 00 
		$a_01_3 = {73 6f 75 67 6f 75 73 65 61 72 63 68 6e 61 76 } //01 00  sougousearchnav
		$a_01_4 = {67 6f 6f 67 6c 65 73 65 61 72 63 68 6e 61 76 } //01 00  googlesearchnav
		$a_03_5 = {81 7d 0c fa 00 00 00 0f 85 90 01 02 00 00 83 7f 08 05 0f 82 90 00 } //01 00 
		$a_01_6 = {00 63 73 79 73 2e 64 61 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}