
rule Worm_Win32_Autorun_LF_bit{
	meta:
		description = "Worm:Win32/Autorun.LF!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {61 74 74 72 69 62 20 2b 48 20 2b 53 20 43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 5c 90 02 20 20 3e 6e 75 6c 90 00 } //01 00 
		$a_03_1 = {72 65 67 20 61 64 64 20 48 4b 43 55 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 20 2f 56 90 02 20 2f 54 20 52 45 47 5f 53 5a 20 2f 44 90 00 } //01 00 
		$a_03_2 = {72 65 67 20 61 64 64 20 22 48 4b 43 55 5c 43 6f 6e 74 72 6f 6c 20 50 61 6e 65 6c 5c 44 65 73 6b 74 6f 70 22 20 2f 56 90 02 20 2f 54 20 52 45 47 5f 53 5a 20 2f 44 20 22 43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 90 02 20 2e 73 63 72 90 00 } //01 00 
		$a_03_3 = {70 69 6e 67 20 2d 6c 20 31 30 32 34 30 90 02 40 20 3e 6e 75 6c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}