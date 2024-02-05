
rule TrojanSpy_Win32_Chymine_A{
	meta:
		description = "TrojanSpy:Win32/Chymine.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_02_0 = {41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 73 00 5c 00 69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 5c 00 73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 90 02 08 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 2f 00 34 00 2e 00 30 00 20 00 28 00 63 00 6f 00 6d 00 70 00 61 00 74 00 69 00 62 00 6c 00 65 00 29 00 90 00 } //02 00 
		$a_02_1 = {5b 00 4e 00 75 00 6d 00 20 00 4c 00 6f 00 63 00 6b 00 5d 00 90 02 08 5b 00 44 00 6f 00 77 00 6e 00 5d 00 90 02 08 5b 00 52 00 69 00 67 00 68 00 74 00 5d 00 90 02 08 5b 00 55 00 50 00 5d 00 90 02 08 5b 00 4c 00 65 00 66 00 74 00 5d 00 90 02 08 5b 00 50 00 61 00 67 00 65 00 44 00 6f 00 77 00 6e 00 5d 00 90 00 } //02 00 
		$a_02_2 = {2e 00 6c 00 6f 00 67 00 90 02 08 25 00 64 00 2e 00 62 00 61 00 6b 00 90 00 } //01 00 
		$a_02_3 = {5c 00 54 00 65 00 73 00 74 00 4c 00 70 00 63 00 53 00 63 00 72 00 65 00 65 00 6e 00 57 00 72 00 69 00 74 00 65 00 90 02 08 5c 00 54 00 65 00 73 00 74 00 4c 00 70 00 63 00 53 00 63 00 72 00 65 00 65 00 6e 00 52 00 65 00 61 00 64 00 90 00 } //01 00 
		$a_02_4 = {43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 55 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 90 02 08 5c 00 54 00 65 00 73 00 74 00 4c 00 70 00 63 00 53 00 79 00 73 00 74 00 65 00 6d 00 90 02 08 43 00 56 00 69 00 64 00 65 00 6f 00 43 00 61 00 70 00 90 00 } //01 00 
		$a_00_5 = {25 00 64 00 2e 00 25 00 64 00 2e 00 25 00 64 00 2e 00 25 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}