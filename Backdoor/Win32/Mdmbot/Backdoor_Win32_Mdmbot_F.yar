
rule Backdoor_Win32_Mdmbot_F{
	meta:
		description = "Backdoor:Win32/Mdmbot.F,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 20 00 2d 00 6b 00 20 00 6e 00 65 00 74 00 73 00 76 00 63 00 73 00 } //01 00 
		$a_00_1 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 53 00 76 00 63 00 68 00 6f 00 73 00 74 00 } //01 00 
		$a_00_2 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00 
		$a_00_3 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 22 00 25 00 73 00 22 00 2c 00 20 00 4c 00 61 00 75 00 6e 00 63 00 68 00 } //01 00 
		$a_00_4 = {57 00 69 00 6e 00 53 00 74 00 61 00 30 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 } //01 00 
		$a_00_5 = {4d 00 63 00 70 00 52 00 6f 00 58 00 79 00 } //01 00 
		$a_01_6 = {72 00 61 00 74 00 5f 00 55 00 6e 00 49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}