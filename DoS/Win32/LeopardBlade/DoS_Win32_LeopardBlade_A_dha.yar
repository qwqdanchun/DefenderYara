
rule DoS_Win32_LeopardBlade_A_dha{
	meta:
		description = "DoS:Win32/LeopardBlade.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,58 02 58 02 06 00 00 64 00 "
		
	strings :
		$a_01_0 = {25 73 57 69 6e 64 6f 77 73 5c 4e 54 44 53 } //64 00 
		$a_01_1 = {73 68 61 64 6f 77 63 6f 70 79 } //64 00 
		$a_01_2 = {6d 61 69 6e 2e 65 6e 61 62 6c 65 44 69 73 61 62 6c 65 50 72 6f 63 65 73 73 50 72 69 76 69 6c 65 67 65 2e 66 75 6e 63 31 } //64 00 
		$a_01_3 = {6d 61 69 6e 2e 77 69 70 65 } //64 00 
		$a_01_4 = {6d 61 69 6e 2e 41 70 70 6c 79 2e 66 75 6e 63 31 } //64 00 
		$a_01_5 = {6d 61 69 6e 2e 77 61 6c 6b 46 75 6e 63 } //00 00 
	condition:
		any of ($a_*)
 
}