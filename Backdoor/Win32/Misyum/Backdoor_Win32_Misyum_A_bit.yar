
rule Backdoor_Win32_Misyum_A_bit{
	meta:
		description = "Backdoor:Win32/Misyum.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {81 e2 ff 00 00 80 79 08 4a 81 ca 00 ff ff ff 42 8a 54 90 01 02 8a 1c 38 32 da 88 1c 38 40 3b c5 7c 8e 90 00 } //01 00 
		$a_03_1 = {6a 04 51 c7 44 90 01 02 78 56 34 12 e8 90 01 03 00 6a 1e 68 90 01 03 00 8d 54 90 01 02 6a 04 52 e8 90 01 03 00 8b 3d 90 01 03 00 6a 00 83 ef 0a 89 3d 90 01 03 00 ff 15 90 01 03 00 90 00 } //01 00 
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {00 61 6b 73 70 62 75 2e 74 78 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}