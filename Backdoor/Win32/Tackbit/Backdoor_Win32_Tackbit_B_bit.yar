
rule Backdoor_Win32_Tackbit_B_bit{
	meta:
		description = "Backdoor:Win32/Tackbit.B!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {65 7a 72 65 61 6c 90 02 10 73 70 61 63 65 90 02 10 6c 69 6e 65 2d 63 6c 69 65 6e 74 90 00 } //02 00 
		$a_03_1 = {53 79 73 49 6e 66 6f 90 02 10 42 61 74 63 68 43 6f 6d 6d 61 6e 64 90 02 10 4c 6f 63 61 6c 55 70 64 61 74 65 90 02 10 49 6e 73 74 61 6c 6c 90 02 10 55 6e 69 6e 73 74 61 6c 6c 90 02 10 50 69 6e 67 90 00 } //01 00 
		$a_01_2 = {00 46 69 6c 65 53 70 79 00 } //01 00 
		$a_01_3 = {00 4b 65 79 4c 6f 67 67 65 72 00 } //00 00 
		$a_00_4 = {5d 04 00 } //00 5e 
	condition:
		any of ($a_*)
 
}