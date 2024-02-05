
rule PWS_Win32_Steam_C{
	meta:
		description = "PWS:Win32/Steam.C,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 44 00 6f 00 6b 00 75 00 6d 00 65 00 6e 00 74 00 65 00 20 00 75 00 6e 00 64 00 20 00 45 00 69 00 6e 00 73 00 74 00 65 00 6c 00 6c 00 75 00 6e 00 67 00 65 00 6e 00 5c 00 41 00 64 00 6d 00 69 00 6e 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 6b 00 74 00 65 00 5c 00 53 00 74 00 65 00 61 00 6d 00 20 00 53 00 74 00 65 00 61 00 6c 00 30 00 72 00 } //01 00 
		$a_01_1 = {53 48 44 6f 63 56 77 43 74 6c 2e 57 65 62 42 72 6f 77 73 65 72 } //01 00 
		$a_01_2 = {3f 00 69 00 6e 00 66 00 6f 00 3d 00 53 00 74 00 65 00 61 00 6d 00 20 00 53 00 74 00 65 00 61 00 6c 00 30 00 72 00 20 00 76 00 32 00 20 00 62 00 79 00 20 00 2d 00 3d 00 50 00 6c 00 61 00 79 00 65 00 72 00 3d 00 2d 00 26 00 61 00 63 00 63 00 3d 00 } //01 00 
		$a_00_3 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 73 68 64 6f 63 76 77 2e 6f 63 61 } //01 00 
		$a_00_4 = {63 00 3a 00 5c 00 65 00 72 00 72 00 6f 00 72 00 5f 00 6c 00 6f 00 67 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_5 = {46 2d 41 37 45 42 50 72 6f 6a 65 63 74 31 } //00 00 
	condition:
		any of ($a_*)
 
}