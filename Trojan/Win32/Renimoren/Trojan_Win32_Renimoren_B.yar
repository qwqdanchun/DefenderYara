
rule Trojan_Win32_Renimoren_B{
	meta:
		description = "Trojan:Win32/Renimoren.B,SIGNATURE_TYPE_CMDHSTR_EXT,ffffff98 00 ffffff98 00 07 00 00 64 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //32 00 
		$a_00_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6c 00 75 00 72 00 63 00 68 00 6d 00 61 00 74 00 68 00 2e 00 6f 00 72 00 67 00 2f 00 77 00 6f 00 72 00 64 00 70 00 72 00 65 00 73 00 73 00 2d 00 74 00 65 00 6d 00 70 00 2f 00 77 00 70 00 2d 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2f 00 70 00 6c 00 75 00 67 00 69 00 6e 00 73 00 2f 00 } //32 00 
		$a_00_2 = {2f 00 70 00 6c 00 75 00 67 00 69 00 6e 00 73 00 2f 00 6d 00 69 00 6e 00 65 00 2e 00 62 00 61 00 74 00 } //01 00 
		$a_00_3 = {2e 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 66 00 69 00 6c 00 65 00 28 00 } //01 00 
		$a_00_4 = {2e 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 } //01 00 
		$a_00_5 = {47 00 65 00 74 00 54 00 65 00 6d 00 70 00 46 00 69 00 6c 00 65 00 4e 00 61 00 6d 00 65 00 } //01 00 
		$a_00_6 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 4e 00 65 00 74 00 2e 00 57 00 65 00 62 00 43 00 6c 00 69 00 65 00 6e 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}