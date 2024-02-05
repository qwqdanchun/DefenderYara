
rule Adware_Win32_InfoAtoms{
	meta:
		description = "Adware:Win32/InfoAtoms,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1c 00 04 00 00 05 00 "
		
	strings :
		$a_01_0 = {2e 3f 41 56 43 49 6e 66 6f 41 74 6f 6d 73 43 6c 69 65 6e 74 49 45 4d 6f 64 75 6c 65 40 40 } //07 00 
		$a_01_1 = {28 00 43 00 29 00 20 00 32 00 30 00 31 00 32 00 20 00 49 00 6e 00 66 00 6f 00 41 00 74 00 6f 00 6d 00 73 00 20 00 49 00 6e 00 63 00 2e 00 2c 00 20 00 20 00 41 00 6c 00 6c 00 20 00 72 00 69 00 67 00 68 00 74 00 73 00 20 00 72 00 65 00 73 00 65 00 72 00 76 00 65 00 64 00 2e 00 } //08 00 
		$a_01_2 = {46 6f 72 63 65 52 65 6d 6f 76 65 20 27 7b 31 30 33 30 38 39 44 41 2d 30 46 33 31 2d 34 41 38 42 2d 38 34 33 46 2d 37 44 32 34 41 37 46 45 38 33 34 35 7d 27 20 3d 20 73 20 27 49 6e 66 6f 41 74 6f 6d 73 27 20 7b } //08 00 
		$a_01_3 = {2f 00 2f 00 77 00 69 00 64 00 67 00 65 00 74 00 73 00 2e 00 76 00 69 00 74 00 72 00 75 00 76 00 69 00 61 00 6e 00 2e 00 62 00 69 00 7a 00 2f 00 6b 00 65 00 72 00 6e 00 65 00 6c 00 2f 00 } //00 00 
		$a_00_4 = {60 0c 00 00 26 00 5c 49 6e 66 } //6f 41 
	condition:
		any of ($a_*)
 
}