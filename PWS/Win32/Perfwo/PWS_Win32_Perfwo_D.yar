
rule PWS_Win32_Perfwo_D{
	meta:
		description = "PWS:Win32/Perfwo.D,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 } //01 00 
		$a_00_1 = {65 6c 65 6d 65 6e 74 63 6c 69 65 6e 74 } //01 00 
		$a_00_2 = {73 65 6e 64 6d 61 69 6c 2e 61 73 70 23 } //01 00 
		$a_00_3 = {50 61 73 73 3d } //01 00 
		$a_01_4 = {47 65 74 46 6f 72 65 67 72 6f 75 6e 64 57 69 6e 64 6f 77 } //01 00 
		$a_01_5 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //01 00 
		$a_00_6 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 61 70 70 6c 69 63 61 74 69 6f 6e } //00 00 
	condition:
		any of ($a_*)
 
}