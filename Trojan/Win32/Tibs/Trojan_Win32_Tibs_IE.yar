
rule Trojan_Win32_Tibs_IE{
	meta:
		description = "Trojan:Win32/Tibs.IE,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {42 61 63 6b 75 70 52 65 61 64 00 } //01 00 
		$a_00_1 = {46 61 75 6c 74 49 6e 49 45 46 65 61 74 75 72 65 00 } //01 00 
		$a_00_2 = {47 65 74 43 6c 61 73 73 46 69 6c 65 4f 72 4d 69 6d 65 00 } //01 00 
		$a_00_3 = {43 6f 49 6e 74 65 72 6e 65 74 50 61 72 73 65 55 72 6c 00 } //01 00 
		$a_00_4 = {49 6d 61 67 65 4c 69 73 74 5f 44 72 61 67 45 6e 74 65 72 00 } //0a 00 
		$a_03_5 = {50 15 01 00 3b 90 01 01 74 08 c1 90 04 01 03 00 2d 07 02 e9 ee ff ff ff 90 02 02 3b 90 04 01 03 c0 2d ff 90 02 02 0f 8f d2 ff ff ff 90 04 01 03 b8 2d bf 90 01 04 81 90 01 06 c3 90 09 38 00 83 90 04 01 03 c8 2d cf ff 90 01 01 03 90 01 01 24 34 81 90 04 01 03 c0 2d c7 90 01 04 81 90 04 01 03 e8 2d ef 90 01 04 81 90 04 01 03 c0 2d c7 90 01 04 81 90 04 01 03 c0 2d c7 90 01 04 8d 90 01 05 81 90 04 01 03 c0 2d c7 90 01 04 81 90 04 01 03 c0 2d c7 90 01 06 2b 90 01 02 90 04 01 03 b8 2d bf 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}