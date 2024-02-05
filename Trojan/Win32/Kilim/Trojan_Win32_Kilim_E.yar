
rule Trojan_Win32_Kilim_E{
	meta:
		description = "Trojan:Win32/Kilim.E,SIGNATURE_TYPE_PEHSTR_EXT,64 00 64 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 41 5f 54 65 6d 70 25 5c 43 68 72 6f 6d 65 50 72 65 66 2e 74 78 74 } //01 00 
		$a_01_1 = {25 41 5f 54 65 6d 70 25 5c 59 61 6e 64 65 78 50 72 65 66 2e 74 78 74 } //01 00 
		$a_01_2 = {25 41 5f 54 65 6d 70 25 5c 4f 70 65 72 61 50 72 65 66 2e 74 78 74 } //01 00 
		$a_01_3 = {30 30 30 72 61 73 67 65 6c 65 6b 6c 61 73 6f 72 30 30 30 00 25 72 61 73 67 65 6c 65 6b 6c 61 73 6f 72 25 } //01 00 
		$a_01_4 = {25 41 5f 41 70 70 44 61 74 61 25 5c 69 6e 73 74 61 6c 6c 5f 62 72 6f 77 73 65 72 2e 65 78 65 } //01 00 
		$a_01_5 = {52 65 67 45 78 52 65 70 6c 61 63 65 28 43 68 72 6f 6d 65 50 72 65 66 2c 20 22 5c 5c 5c 5c 22 20 2e 20 50 72 65 66 69 78 20 2e } //01 00 
		$a_01_6 = {28 6f 70 65 72 61 20 3d 20 31 29 } //01 00 
		$a_01_7 = {54 77 61 69 6e 73 5f 36 34 00 } //00 00 
		$a_00_8 = {5d 04 00 00 3b 11 03 80 } //5c 24 
	condition:
		any of ($a_*)
 
}