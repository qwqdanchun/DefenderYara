
rule Backdoor_Win32_Winsec_B_dha{
	meta:
		description = "Backdoor:Win32/Winsec.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 03 00 "
		
	strings :
		$a_01_0 = {3c 2e 74 07 3c 20 74 03 88 } //01 00 
		$a_01_1 = {2e 47 65 2e 74 45 2e 78 69 20 74 43 2e 6f 64 20 65 50 2e 20 72 6f 63 20 65 2e 73 73 00 } //01 00 
		$a_01_2 = {52 2e 20 65 2e 67 51 75 2e 2e 65 20 72 79 56 2e 61 6c 2e 75 65 45 20 78 41 00 } //01 00 
		$a_01_3 = {52 2e 2e 20 65 67 4f 70 2e 20 2e 65 6e 4b 2e 65 79 41 20 00 } //01 00 
		$a_01_4 = {52 65 2e 2e 67 44 65 6c 2e 65 74 65 56 61 2e 20 6c 75 65 57 20 00 } //00 00 
		$a_00_5 = {5d 04 00 00 } //9d 66 
	condition:
		any of ($a_*)
 
}