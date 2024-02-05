
rule Backdoor_Win32_Slingup_A{
	meta:
		description = "Backdoor:Win32/Slingup.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 5f 53 50 41 4d 00 } //01 00 
		$a_01_1 = {50 5f 4b 45 59 4c 4f 47 47 45 52 00 } //01 00 
		$a_01_2 = {50 5f 44 53 50 52 45 41 44 00 } //01 00 
		$a_01_3 = {41 5f 4d 41 4c 57 52 00 } //01 00 
		$a_01_4 = {41 5f 53 41 4e 44 00 } //01 00 
		$a_01_5 = {50 5f 50 45 52 53 49 53 54 41 4e 43 45 00 } //01 00 
		$a_00_6 = {70 00 6c 00 75 00 67 00 69 00 6e 00 73 00 2f 00 64 00 64 00 6f 00 73 00 2e 00 70 00 } //01 00 
		$a_00_7 = {70 00 6c 00 75 00 67 00 69 00 6e 00 73 00 2f 00 73 00 70 00 61 00 6d 00 2e 00 70 00 } //01 00 
		$a_00_8 = {70 00 6c 00 75 00 67 00 69 00 6e 00 73 00 2f 00 6b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}