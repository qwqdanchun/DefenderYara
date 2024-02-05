
rule TrojanSpy_Win32_Clitor_A_bit{
	meta:
		description = "TrojanSpy:Win32/Clitor.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 77 00 70 00 2d 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2f 00 70 00 6c 00 75 00 67 00 69 00 6e 00 73 00 2f 00 57 00 50 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 2f 00 6c 00 6f 00 61 00 64 00 2e 00 70 00 68 00 70 00 } //01 00 
		$a_01_1 = {2f 00 77 00 70 00 2d 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2f 00 70 00 6c 00 75 00 67 00 69 00 6e 00 73 00 2f 00 57 00 50 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 2f 00 64 00 61 00 74 00 61 00 2f 00 } //01 00 
		$a_01_2 = {00 00 31 00 66 00 34 00 35 00 64 00 32 00 36 00 33 00 00 00 } //01 00 
		$a_01_3 = {34 00 2c 00 32 00 7c 00 33 00 2c 00 33 00 7c 00 32 00 2c 00 34 00 } //01 00 
		$a_01_4 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00 
		$a_01_5 = {63 00 6d 00 64 00 20 00 2f 00 76 00 2f 00 63 00 20 00 28 00 73 00 65 00 74 00 20 00 66 00 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}