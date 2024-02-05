
rule Trojan_Win32_Renimoren_A{
	meta:
		description = "Trojan:Win32/Renimoren.A,SIGNATURE_TYPE_CMDHSTR_EXT,65 00 65 00 04 00 00 64 00 "
		
	strings :
		$a_01_0 = {34 00 32 00 4a 00 4b 00 7a 00 44 00 68 00 62 00 55 00 37 00 36 00 57 00 62 00 66 00 37 00 4a 00 53 00 44 00 68 00 6f 00 6d 00 77 00 36 00 75 00 74 00 77 00 4c 00 72 00 33 00 4e 00 38 00 74 00 6a 00 5a 00 58 00 4c 00 7a 00 4c 00 77 00 76 00 54 00 63 00 50 00 75 00 50 00 35 00 5a 00 47 00 5a 00 69 00 4a 00 41 00 48 00 77 00 6e 00 44 00 37 00 64 00 4e 00 66 00 32 00 5a 00 53 00 41 00 68 00 35 00 32 00 69 00 39 00 63 00 55 00 65 00 66 00 71 00 32 00 6e 00 6d 00 4c 00 4b 00 33 00 61 00 7a 00 4b 00 42 00 66 00 66 00 6b 00 42 00 4d 00 58 00 35 00 62 00 31 00 4c 00 59 00 } //01 00 
		$a_00_1 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_00_2 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_3 = {78 00 6d 00 72 00 69 00 67 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}