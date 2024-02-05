
rule Backdoor_Win32_Bifrose_gen_F{
	meta:
		description = "Backdoor:Win32/Bifrose.gen!F,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 07 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 6f 72 74 69 6f 6e 73 20 43 6f 70 79 72 69 67 68 74 20 28 63 29 20 31 39 39 39 2c 32 30 30 33 20 41 76 65 6e 67 65 72 20 62 79 20 4e 68 54 } //03 00 
		$a_01_1 = {61 70 30 63 61 6c 79 70 73 65 } //03 00 
		$a_01_2 = {59 75 6b 6c 65 6e 65 6e 44 69 7a 69 6e } //02 00 
		$a_01_3 = {49 6e 6a 65 63 73 69 79 6f 6e } //01 00 
		$a_01_4 = {44 69 73 61 62 6c 65 53 61 66 65 4d 6f 64 65 } //00 00 
	condition:
		any of ($a_*)
 
}