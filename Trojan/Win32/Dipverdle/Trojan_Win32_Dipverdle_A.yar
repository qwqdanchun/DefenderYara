
rule Trojan_Win32_Dipverdle_A{
	meta:
		description = "Trojan:Win32/Dipverdle.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {c1 eb 06 8d 45 90 01 01 8b d3 83 e2 3f 42 8b 90 02 05 8a 54 11 ff e8 90 00 } //01 00 
		$a_01_1 = {49 64 65 6e 74 69 74 69 65 73 5c 49 64 65 6e 74 69 74 79 5f 54 44 4e 00 } //01 00 
		$a_01_2 = {6d 70 73 73 76 63 20 73 74 61 72 74 3d 44 69 73 61 62 6c 65 64 00 6e 65 74 73 68 20 61 64 76 66 69 72 65 77 61 6c 6c } //01 00 
		$a_03_3 = {75 69 64 3d 90 01 0c 26 76 65 72 3d 90 01 0b 26 64 6c 3d 31 90 01 0b 26 64 6c 3d 30 90 01 0b 26 64 69 70 3d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}