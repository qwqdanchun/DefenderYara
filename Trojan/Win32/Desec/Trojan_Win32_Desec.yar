
rule Trojan_Win32_Desec{
	meta:
		description = "Trojan:Win32/Desec,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 08 00 00 03 00 "
		
	strings :
		$a_01_0 = {53 74 61 72 74 53 65 72 76 69 63 65 20 66 61 69 6c 65 64 2c 20 65 72 72 6f 72 20 63 6f 64 65 20 3d 20 25 64 00 00 00 00 4f 70 65 6e 53 65 72 76 69 63 65 20 66 61 69 6c 65 64 2c 20 65 72 72 6f 72 20 63 6f 64 65 20 3d 20 25 64 00 4f 70 65 6e 53 43 4d 61 6e 61 67 65 72 20 66 61 69 6c 65 64 2c 20 65 72 72 6f 72 20 63 6f 64 65 20 3d 20 25 64 00 00 00 64 65 6c 20 25 30 00 00 69 66 20 65 78 69 73 74 20 22 25 73 22 20 20 67 6f 74 6f 20 74 72 79 0d 0a 00 00 00 64 65 6c 20 22 25 73 22 0d 0a 00 00 3a 74 72 79 0d 0a 00 00 5c 00 00 00 5c 64 73 65 74 75 70 2e 62 61 74 00 } //03 00 
		$a_02_1 = {47 6c 6f 62 61 6c 5c 00 45 72 72 6f 72 00 00 00 90 02 20 2e 64 6c 6c 90 02 0a 42 49 4e 46 49 4c 45 00 5c 73 79 73 74 65 6d 33 32 5c 90 00 } //03 00 
		$a_01_2 = {53 65 63 75 72 69 74 79 20 53 65 72 76 69 63 65 } //01 00 
		$a_01_3 = {6d 61 64 44 69 73 41 73 6d } //01 00 
		$a_01_4 = {6d 61 64 43 6f 64 65 48 6f 6f 6b } //01 00 
		$a_01_5 = {55 6e 6b 6e 6f 77 6e 20 65 78 63 65 70 74 69 6f 6e 2e 20 49 66 20 79 6f 75 20 77 61 6e 74 20 74 6f 20 6b 6e 6f 77 20 6d 6f 72 65 2c 20 79 6f 75 20 68 61 76 65 20 74 6f 20 61 64 64 20 53 79 73 55 74 69 6c 73 20 74 6f 20 79 6f 75 72 20 70 72 6f 6a 65 63 74 2e } //02 00 
		$a_01_6 = {5f 66 75 63 6b 69 6e 67 5f } //02 00 
		$a_01_7 = {5f 73 6d 6f 6b 69 6e 67 5f } //00 00 
	condition:
		any of ($a_*)
 
}