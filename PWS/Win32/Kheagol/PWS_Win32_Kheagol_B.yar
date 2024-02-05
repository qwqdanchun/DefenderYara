
rule PWS_Win32_Kheagol_B{
	meta:
		description = "PWS:Win32/Kheagol.B,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {6d 79 69 65 2e 65 78 65 90 02 10 6d 61 78 74 68 6f 6e 2e 65 78 65 90 02 10 61 76 61 6e 74 2e 65 78 65 00 90 00 } //01 00 
		$a_03_1 = {73 65 61 6d 6f 6e 6b 65 79 2e 65 78 65 90 02 10 6d 6f 7a 69 6c 6c 61 2e 65 78 65 00 90 00 } //05 00 
		$a_03_2 = {50 52 5f 57 72 69 74 65 90 02 10 50 52 5f 43 6c 6f 73 65 00 90 00 } //05 00 
		$a_03_3 = {50 46 58 49 6d 70 6f 72 74 43 65 72 74 53 74 6f 72 65 90 02 10 55 53 45 52 33 32 2e 44 4c 4c 90 02 10 47 65 74 57 69 6e 64 6f 77 54 65 78 74 41 00 90 00 } //01 00 
		$a_03_4 = {74 66 8b d2 c6 44 24 90 01 01 68 90 02 01 c6 44 24 90 01 01 6f 90 02 01 c6 44 24 90 01 01 6e 90 00 } //01 00 
		$a_03_5 = {61 66 87 d2 c6 44 24 90 01 01 76 90 02 03 c6 44 24 90 01 01 61 90 02 02 c6 44 24 90 01 01 6e 90 02 02 c6 44 24 90 01 01 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}