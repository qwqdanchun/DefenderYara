
rule Trojan_Win32_NativeZone_E_dha{
	meta:
		description = "Trojan:Win32/NativeZone.E!dha,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {41 50 50 44 41 54 41 00 5c 00 00 00 2e 5c 00 00 72 75 6e 74 69 6d 65 6d 73 74 72 63 2e 65 78 65 00 00 00 00 73 68 61 72 65 64 72 75 90 01 01 74 69 6d 65 74 72 63 2e 64 6c 6c 00 00 00 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 00 00 00 90 00 } //02 00 
		$a_03_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 90 01 01 73 69 6f 6e 5c 52 75 6e 00 00 00 22 2c 49 6e 66 6c 61 74 65 48 61 73 68 00 00 00 43 3a 5c 57 69 6e 64 6f 77 73 5c 53 79 73 74 65 6d 33 32 5c 72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 22 00 00 4d 53 56 52 75 6e 74 69 6d 65 00 90 00 } //01 00 
		$a_03_2 = {5e 87 44 24 04 89 54 24 90 01 01 ba 29 cb 07 19 87 54 24 90 01 01 87 04 24 c3 90 00 } //01 00 
		$a_03_3 = {87 3c 24 89 7c 24 c0 87 7c 24 04 89 4c 24 90 01 01 87 3c 24 89 74 24 90 01 01 be 42 41 4c ed 87 74 24 e0 c3 90 00 } //01 00 
		$a_03_4 = {87 3c 24 87 7c 24 04 87 3c 90 01 01 c3 0b d6 21 72 08 ff 77 08 8b 46 18 89 79 90 01 01 23 46 08 fa b9 a4 dd 7e b3 90 00 } //01 00 
		$a_03_5 = {87 14 24 52 8b d6 5a 87 54 24 04 87 14 90 01 01 52 8b d7 5a c3 52 8b d6 5a 90 90 66 9d 31 08 f7 e6 ba 2d eb 38 ef 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}