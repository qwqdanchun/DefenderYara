
rule PWS_Win32_Pony_RU{
	meta:
		description = "PWS:Win32/Pony.RU,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 62 65 32 38 36 39 66 2d 39 62 34 37 2d 34 63 64 39 2d 61 33 35 38 2d 63 32 32 39 30 34 64 62 61 37 66 37 } //01 00 
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4d 61 72 74 69 6e 20 50 72 69 6b 72 79 6c } //01 00 
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 46 54 50 57 61 72 65 5c 43 4f 52 45 46 54 50 5c 53 69 74 65 73 } //01 00 
		$a_01_3 = {53 6f 66 74 77 61 72 65 5c 56 61 6e 44 79 6b 65 5c 53 65 63 75 72 65 46 58 } //01 00 
		$a_01_4 = {66 75 6c 6c 20 61 64 64 72 65 73 73 3a 73 3a } //01 00 
		$a_01_5 = {5c 4a 61 78 78 5c 4c 6f 63 61 6c 20 53 74 6f 72 61 67 65 5c 66 69 6c 65 5f 5f 30 2e 6c 6f 63 61 6c 73 74 6f 72 61 67 65 } //01 00 
		$a_01_6 = {73 75 70 65 72 6d 61 6e } //01 00 
		$a_01_7 = {73 74 61 72 77 61 72 73 } //01 00 
		$a_01_8 = {74 72 75 73 74 6e 6f 31 } //00 00 
	condition:
		any of ($a_*)
 
}