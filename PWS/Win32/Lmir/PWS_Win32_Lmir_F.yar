
rule PWS_Win32_Lmir_F{
	meta:
		description = "PWS:Win32/Lmir.F,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0d 00 0e 00 00 03 00 "
		
	strings :
		$a_00_0 = {2f 6c 69 6e 2e 61 73 70 7c 68 74 74 70 3a 2f 2f } //03 00 
		$a_00_1 = {66 7a 7a 7e 34 21 21 79 79 79 } //05 00 
		$a_02_2 = {83 c4 1c b8 01 00 00 00 8a 94 24 90 01 02 00 00 8a 8c 04 90 01 02 00 00 32 ca 88 8c 04 90 01 02 00 00 40 3d 80 00 00 00 7c e1 90 00 } //02 00 
		$a_00_3 = {68 ff 0f 1f 00 ff 15 } //01 00 
		$a_00_4 = {20 2f 25 78 40 00 } //02 00 
		$a_00_5 = {2e 65 78 65 20 2f 31 30 30 } //02 00 
		$a_00_6 = {2f 31 30 30 33 40 43 3a 5c } //01 00 
		$a_00_7 = {6d 68 73 32 2e 65 78 65 } //01 00 
		$a_00_8 = {6d 68 73 2e 65 78 65 } //01 00 
		$a_00_9 = {53 6f 66 74 57 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00 
		$a_00_10 = {23 33 32 37 37 30 } //01 00 
		$a_00_11 = {80 40 00 6a 65 } //01 00 
		$a_00_12 = {6d 73 65 6e 64 } //01 00 
		$a_00_13 = {52 61 76 4d 6f 6e 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}