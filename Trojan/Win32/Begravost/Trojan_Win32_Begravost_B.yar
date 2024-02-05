
rule Trojan_Win32_Begravost_B{
	meta:
		description = "Trojan:Win32/Begravost.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {8b 96 38 1d 00 00 68 e8 03 00 00 56 ff d2 81 c7 e8 03 00 00 83 c4 08 81 ff 60 ea 00 00 76 b2 } //01 00 
		$a_00_1 = {25 00 73 00 26 00 65 00 63 00 3d 00 25 00 64 00 26 00 68 00 72 00 3d 00 25 00 23 00 30 00 38 00 78 00 } //01 00 
		$a_00_2 = {76 00 61 00 72 00 20 00 73 00 42 00 6f 00 74 00 56 00 65 00 72 00 3d 00 } //01 00 
		$a_00_3 = {46 00 75 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 20 00 49 00 45 00 42 00 69 00 6e 00 61 00 72 00 79 00 5f 00 67 00 65 00 74 00 4c 00 65 00 6e 00 67 00 74 00 68 00 28 00 73 00 74 00 72 00 42 00 69 00 6e 00 61 00 72 00 79 00 29 00 } //01 00 
		$a_00_4 = {76 00 61 00 72 00 20 00 63 00 61 00 70 00 74 00 63 00 68 00 61 00 3d 00 27 00 } //00 00 
	condition:
		any of ($a_*)
 
}