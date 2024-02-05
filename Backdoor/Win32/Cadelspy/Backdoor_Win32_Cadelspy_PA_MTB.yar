
rule Backdoor_Win32_Cadelspy_PA_MTB{
	meta:
		description = "Backdoor:Win32/Cadelspy.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {50 6a 00 6a 00 6a 00 6a 00 6a 00 6a 00 68 20 02 00 00 6a 20 6a 02 8d 45 90 01 01 66 90 01 04 05 50 90 00 } //01 00 
		$a_01_1 = {45 00 6c 00 65 00 76 00 61 00 74 00 69 00 6f 00 6e 00 3a 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 21 00 6e 00 65 00 77 00 3a 00 7b 00 33 00 61 00 64 00 30 00 35 00 35 00 37 00 35 00 2d 00 38 00 38 00 35 00 37 00 2d 00 34 00 38 00 35 00 30 00 2d 00 39 00 32 00 37 00 37 00 2d 00 31 00 31 00 62 00 38 00 35 00 62 00 64 00 62 00 38 00 65 00 30 00 39 00 7d 00 } //01 00 
		$a_01_2 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 79 00 73 00 45 00 76 00 65 00 6e 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_03_3 = {5c 70 69 65 63 65 6f 66 73 68 69 74 5c 90 02 10 5c 70 69 65 63 65 6f 66 73 68 69 74 2e 70 64 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}