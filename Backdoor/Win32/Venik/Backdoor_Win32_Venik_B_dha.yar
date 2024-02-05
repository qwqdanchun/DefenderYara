
rule Backdoor_Win32_Venik_B_dha{
	meta:
		description = "Backdoor:Win32/Venik.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 0c 52 8d 44 24 1c 6a 0c 50 68 04 00 00 98 57 c7 44 24 90 01 01 01 00 00 00 c7 44 24 90 01 01 e8 03 00 00 ff 15 90 00 } //01 00 
		$a_01_1 = {4b 69 6c 6c 20 59 6f 75 00 00 00 00 25 34 2e 32 20 6d 47 42 00 00 00 00 25 34 2e 32 20 66 4d 42 00 } //01 00 
		$a_03_2 = {2e 50 41 58 00 00 00 00 90 01 08 2e 50 41 44 00 90 00 } //01 00 
		$a_00_3 = {25 73 5c 25 73 65 78 2e 64 6c 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}