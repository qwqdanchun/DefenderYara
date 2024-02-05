
rule Trojan_Win32_Tarcloin_K{
	meta:
		description = "Trojan:Win32/Tarcloin.K,SIGNATURE_TYPE_PEHSTR_EXT,05 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 4e 00 77 00 59 00 6e 00 52 00 5a 00 6d 00 52 00 75 00 67 00 2d 00 72 00 49 00 52 00 69 00 78 00 49 00 56 00 36 00 48 00 38 00 2d 00 4c 00 42 00 6f 00 71 00 65 00 42 00 66 00 6b 00 6a 00 65 00 2d 00 47 00 57 00 50 00 31 00 76 00 32 00 38 00 44 00 37 00 73 00 } //01 00 
		$a_01_1 = {70 00 6f 00 6f 00 6c 00 73 00 22 00 3a 00 5b 00 7b 00 22 00 75 00 72 00 6c 00 22 00 3a 00 22 00 73 00 74 00 72 00 61 00 74 00 75 00 6d 00 2b 00 74 00 63 00 70 00 3a 00 2f 00 2f 00 73 00 74 00 72 00 61 00 74 00 75 00 6d 00 2e 00 67 00 69 00 76 00 65 00 2d 00 6d 00 65 00 2d 00 6c 00 74 00 63 00 2e 00 63 00 6f 00 6d 00 3a 00 33 00 33 00 33 00 33 00 } //01 00 
		$a_01_2 = {23 00 62 00 65 00 67 00 23 00 00 00 30 00 30 00 31 00 31 00 30 00 30 00 } //01 00 
		$a_01_3 = {62 00 73 00 70 00 6c 00 61 00 79 00 65 00 72 00 2e 00 65 00 78 00 65 00 7c 00 67 00 6f 00 6d 00 2e 00 65 00 78 00 65 00 7c 00 77 00 6d 00 70 00 6c 00 61 00 79 00 65 00 72 00 2e 00 65 00 78 00 65 00 7c 00 57 00 69 00 6d 00 70 00 79 00 20 00 46 00 4c 00 56 00 20 00 50 00 6c 00 61 00 79 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}