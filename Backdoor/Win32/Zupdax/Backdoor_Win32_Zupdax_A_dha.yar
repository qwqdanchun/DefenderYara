
rule Backdoor_Win32_Zupdax_A_dha{
	meta:
		description = "Backdoor:Win32/Zupdax.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 6f 61 64 5f 73 68 65 6c 6c 63 6f 64 65 20 6d 65 6d 66 69 6e 64 20 70 72 6f 67 72 61 6d 00 } //01 00 
		$a_01_1 = {6d 79 74 68 72 65 61 64 20 73 74 61 72 74 20 73 6c 65 65 70 00 } //01 00 
		$a_01_2 = {6f 70 65 6e 20 66 69 6c 65 20 64 62 20 65 72 72 6f 72 00 } //01 00 
		$a_01_3 = {c6 44 24 28 73 c6 44 24 29 65 88 5c 24 2a c6 44 24 2b 76 c6 44 24 2c 65 88 5c 24 2d c6 44 24 2e 2e c6 44 24 2f 64 c6 44 24 30 62 89 44 24 31 66 89 44 24 35 ff d7 } //00 00 
		$a_00_4 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}