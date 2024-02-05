
rule Backdoor_Win32_Morix_J{
	meta:
		description = "Backdoor:Win32/Morix.J,SIGNATURE_TYPE_PEHSTR_EXT,09 00 08 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 73 65 63 69 76 72 65 53 5c 74 65 53 6c 6f 72 74 6e 6f 43 74 6e 65 72 72 75 43 5c 4d 45 54 53 59 53 } //01 00 
		$a_00_1 = {73 79 73 74 65 6d 5c 63 55 52 52 45 4e 54 63 4f 4e 54 52 4f 4c 53 45 54 5c 73 45 52 56 49 43 45 53 5c 74 45 52 4d 53 45 52 56 49 43 45 } //01 00 
		$a_00_2 = {43 4d 44 2e 45 58 45 20 2f 43 20 4e 45 54 20 55 53 45 52 20 47 55 45 53 54 20 2f 41 43 54 49 56 45 3a 59 45 53 20 26 26 20 4e 45 54 20 55 53 45 52 20 47 55 45 53 54 } //01 00 
		$a_00_3 = {30 4e 4f 47 4f 4c 4e 49 77 5c 4e 4f 49 53 52 45 76 54 4e 45 52 52 55 63 5c 74 6e 20 53 57 4f 44 4e 49 77 5c 54 46 4f 53 4f 52 43 49 6d 5c 65 72 61 77 74 66 6f 73 } //05 00 
		$a_01_4 = {c6 85 58 5e ff ff 4e c6 85 59 5e ff ff 57 c6 85 5a 5e ff ff 41 c6 85 5b 5e ff ff 41 c6 85 5c 5e ff ff 41 c6 85 5d 5e ff ff 41 c6 85 5e 5e ff ff 5c c6 85 5f 5e ff ff 42 c6 85 60 5e ff ff 4c c6 85 61 5e ff ff 41 c6 85 62 5e ff ff 43 c6 85 63 5e ff ff 4b } //00 00 
	condition:
		any of ($a_*)
 
}