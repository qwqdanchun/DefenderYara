
rule Trojan_Win32_Reccoon_A{
	meta:
		description = "Trojan:Win32/Reccoon.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {51 00 57 00 65 00 76 00 75 00 78 00 65 00 70 00 69 00 67 00 65 00 6b 00 69 00 6b 00 20 00 79 00 65 00 6d 00 61 00 6e 00 20 00 78 00 6f 00 67 00 6f 00 73 00 69 00 6b 00 69 00 6a 00 61 00 6b 00 20 00 6a 00 65 00 77 00 61 00 6c 00 75 00 73 00 20 00 7a 00 75 00 78 00 61 00 73 00 6f 00 7a 00 6f 00 74 00 69 00 63 00 69 00 6d 00 20 00 74 00 6f 00 73 00 6f 00 66 00 20 00 62 00 75 00 79 00 61 00 64 00 69 00 62 00 6f 00 62 00 61 00 20 00 73 00 65 00 74 00 6f 00 6b 00 61 00 72 00 69 00 70 00 61 00 } //01 00 
		$a_01_1 = {4b 00 61 00 67 00 6f 00 6d 00 6f 00 72 00 69 00 74 00 75 00 6d 00 69 00 37 00 43 00 65 00 76 00 6f 00 63 00 65 00 6d 00 65 00 7a 00 6f 00 20 00 73 00 61 00 70 00 20 00 6e 00 69 00 76 00 61 00 76 00 75 00 62 00 20 00 67 00 65 00 64 00 75 00 73 00 75 00 78 00 69 00 73 00 6f 00 20 00 6d 00 61 00 6c 00 6f 00 6d 00 20 00 6b 00 65 00 77 00 69 00 67 00 69 00 6b 00 75 00 70 00 75 00 74 00 75 00 73 00 69 00 70 00 } //01 00 
		$a_01_2 = {4a 00 69 00 6c 00 69 00 64 00 69 00 78 00 65 00 63 00 47 00 57 00 75 00 6b 00 6f 00 6b 00 69 00 63 00 6f 00 66 00 6f 00 20 00 7a 00 69 00 68 00 61 00 20 00 6c 00 75 00 78 00 75 00 20 00 6d 00 61 00 6b 00 69 00 6a 00 69 00 64 00 65 00 73 00 65 00 63 00 61 00 64 00 75 00 78 00 20 00 62 00 75 00 6a 00 20 00 62 00 61 00 66 00 20 00 63 00 6f 00 6d 00 65 00 67 00 61 00 7a 00 61 00 66 00 65 00 66 00 61 00 70 00 69 00 72 00 20 00 72 00 65 00 6d 00 6f 00 20 00 7a 00 6f 00 6c 00 65 00 6e 00 41 00 4b 00 65 00 67 00 75 00 72 00 6f 00 7a 00 69 00 77 00 69 00 20 00 79 00 69 00 66 00 69 00 70 00 69 00 72 00 69 00 77 00 69 00 79 00 75 00 70 00 } //01 00 
		$a_01_3 = {47 00 65 00 6b 00 6f 00 67 00 4e 00 69 00 74 00 20 00 62 00 61 00 78 00 75 00 76 00 75 00 6e 00 75 00 79 00 75 00 64 00 20 00 79 00 6f 00 6d 00 65 00 73 00 69 00 64 00 65 00 78 00 69 00 20 00 67 00 6f 00 7a 00 61 00 74 00 69 00 72 00 61 00 74 00 65 00 7a 00 65 00 6a 00 75 00 6c 00 20 00 67 00 61 00 66 00 75 00 7a 00 6f 00 70 00 61 00 20 00 6e 00 6f 00 77 00 75 00 74 00 6f 00 20 00 77 00 6f 00 66 00 6f 00 70 00 69 00 64 00 6f 00 7a 00 75 00 64 00 6f 00 6e 00 6f 00 72 00 20 00 64 00 69 00 70 00 61 00 70 00 20 00 66 00 75 00 7a 00 61 00 6c 00 75 00 6c 00 75 00 20 00 6d 00 65 00 64 00 6f 00 74 00 65 00 74 00 69 00 72 00 6f 00 63 00 69 00 62 00 } //01 00 
		$a_01_4 = {4c 00 69 00 77 00 75 00 66 00 65 00 70 00 6f 00 6a 00 6f 00 74 00 61 00 70 00 61 00 78 00 20 00 70 00 61 00 72 00 75 00 20 00 74 00 65 00 76 00 65 00 79 00 75 00 72 00 65 00 68 00 65 00 20 00 79 00 61 00 6e 00 69 00 6c 00 75 00 67 00 6f 00 76 00 75 00 20 00 78 00 65 00 79 00 61 00 79 00 65 00 72 00 20 00 6c 00 6f 00 68 00 61 00 67 00 61 00 67 00 75 00 6c 00 6f 00 76 00 65 00 } //01 00 
		$a_01_5 = {56 00 69 00 73 00 6f 00 63 00 75 00 68 00 75 00 20 00 6b 00 75 00 7a 00 75 00 66 00 75 00 77 00 69 00 78 00 6f 00 58 00 4a 00 75 00 67 00 65 00 6d 00 6f 00 6a 00 6f 00 76 00 65 00 74 00 6f 00 20 00 67 00 65 00 72 00 65 00 70 00 65 00 76 00 65 00 72 00 69 00 70 00 75 00 20 00 7a 00 65 00 79 00 75 00 77 00 75 00 20 00 78 00 6f 00 78 00 65 00 67 00 61 00 7a 00 6f 00 72 00 20 00 6e 00 61 00 76 00 61 00 63 00 75 00 6a 00 65 00 78 00 75 00 64 00 65 00 66 00 20 00 64 00 75 00 76 00 65 00 78 00 69 00 67 00 75 00 72 00 61 00 6e 00 75 00 6e 00 65 00 66 00 20 00 62 00 69 00 73 00 61 00 6b 00 65 00 6c 00 75 00 6e 00 61 00 66 00 75 00 68 00 69 00 79 00 } //00 00 
	condition:
		any of ($a_*)
 
}