
rule Trojan_Win32_Waqlop_A{
	meta:
		description = "Trojan:Win32/Waqlop.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {8a 54 1f ff f6 d2 88 54 18 ff 43 4e 75 } //01 00 
		$a_01_1 = {a3 b2 96 9c 8d 90 8c 90 99 8b a3 00 } //01 00 
		$a_01_2 = {9e 8f 8f 9b 9e 8b 9e 00 } //01 00 
		$a_03_3 = {57 51 4c 00 90 01 08 53 45 4c 45 43 54 20 2a 20 46 52 4f 4d 20 57 69 6e 33 32 5f 4f 70 65 72 61 74 69 6e 67 53 79 73 74 65 6d 90 00 } //01 00 
		$a_11_4 = {55 73 65 72 73 5c 50 75 62 6c 69 63 5c 57 69 6e 73 65 74 75 70 33 32 00 } //00 03 
	condition:
		any of ($a_*)
 
}