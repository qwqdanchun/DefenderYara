
rule Backdoor_Win32_Tofsee_E{
	meta:
		description = "Backdoor:Win32/Tofsee.E,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 3a 5c 73 70 62 6f 74 2e 6c 6f 67 2e 74 78 74 00 } //01 00 
		$a_01_1 = {69 70 20 69 6e 20 62 6c 61 63 6b 20 6c 69 73 74 20 28 6f 72 20 48 45 4c 4f 20 69 73 20 62 61 64 29 00 } //01 00 
		$a_01_2 = {73 70 62 6f 74 20 2d 3e 20 28 25 64 3a 25 64 3a 25 64 29 20 00 } //01 00 
		$a_01_3 = {5c 25 69 25 69 25 69 32 6c 64 2e 65 78 65 00 00 25 64 00 00 53 4f 46 54 57 } //00 00 
	condition:
		any of ($a_*)
 
}