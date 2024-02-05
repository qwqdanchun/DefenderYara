
rule Trojan_Win32_Adclicker_gen_KX{
	meta:
		description = "Trojan:Win32/Adclicker.gen!KX,SIGNATURE_TYPE_PEHSTR,05 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 62 61 6e 6e 65 72 2e 61 75 63 74 69 6f 6e 2e 63 6f 2e 6b 72 2f 62 6e 5f 72 65 64 69 72 65 63 74 2e 61 73 70 3f 69 64 3d 42 4e 30 30 30 32 31 37 37 36 } //01 00 
		$a_01_1 = {68 74 74 70 3a 2f 2f 62 61 6e 6e 65 72 2e 61 75 63 74 69 6f 6e 2e 63 6f 2e 6b 72 2f 62 6e 5f 72 65 64 69 72 65 63 74 2e 61 73 70 3f 49 44 3d 42 4e 30 30 30 34 30 33 30 31 } //01 00 
		$a_01_2 = {68 74 74 70 3a 2f 2f 62 61 6e 6e 65 72 2e 61 75 63 74 69 6f 6e 2e 63 6f 2e 6b 72 2f 62 6e 5f 72 65 64 69 72 65 63 74 2e 61 73 70 3f 49 44 3d 42 4e 30 30 30 34 30 33 30 39 } //01 00 
		$a_01_3 = {68 74 74 70 3a 2f 2f 62 61 6e 6e 65 72 2e 61 75 63 74 69 6f 6e 2e 63 6f 2e 6b 72 2f 62 6e 5f 72 65 64 69 72 65 63 74 2e 61 73 70 3f 69 64 3d 42 4e 30 30 30 31 37 36 33 32 } //01 00 
		$a_01_4 = {68 74 74 70 3a 2f 2f 62 61 6e 6e 65 72 2e 61 75 63 74 69 6f 6e 2e 63 6f 2e 6b 72 2f 62 6e 5f 72 65 64 69 72 65 63 74 2e 61 73 70 3f 69 64 3d 42 4e 30 30 30 31 37 36 32 38 } //01 00 
		$a_01_5 = {68 74 74 70 3a 2f 2f 63 6c 69 63 6b 2e 6c 69 6e 6b 70 72 69 63 65 2e 63 6f 6d 2f 63 6c 69 63 6b 2e 70 68 70 3f 6d 3d 69 6e 74 65 72 70 61 72 6b 26 61 3d 41 31 30 30 32 30 35 35 38 34 26 6c 3d 30 } //01 00 
		$a_01_6 = {7a 65 72 6f 61 75 63 74 69 6f 6e 2e 63 6f 2e 6b 72 2f 70 72 6f 6d 6f 74 69 6f 6e 5f 6e 65 77 2f 69 6e 74 72 6f 2e 61 73 70 3f 6d 65 5f 63 6f 64 65 3d 4d 32 32 36 30 30 31 } //00 00 
	condition:
		any of ($a_*)
 
}