
rule Backdoor_Win32_Hanove_A{
	meta:
		description = "Backdoor:Win32/Hanove.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 6f 6e 74 65 6e 74 2d 44 69 73 70 6f 73 69 74 69 6f 6e 3a 20 66 6f 72 6d 2d 64 61 74 61 3b 20 6e 61 6d 65 3d 22 75 70 6c 6f 61 64 64 69 72 22 00 } //01 00 
		$a_00_1 = {66 6f 72 6d 2d 64 61 74 61 3b 20 6e 61 6d 65 3d 22 66 69 6c 65 6e 61 6d 65 22 3b 20 66 69 6c 65 6e 61 6d 65 3d 22 25 73 22 00 } //01 00 
		$a_03_2 = {8b 10 8b c8 8b 42 0c ff d0 83 c0 10 89 07 6a 04 68 90 01 04 8d 4c 24 14 c7 44 24 18 01 00 00 00 e8 90 01 04 6a 02 68 90 01 04 8d 4c 24 14 e8 90 01 04 6a 30 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}