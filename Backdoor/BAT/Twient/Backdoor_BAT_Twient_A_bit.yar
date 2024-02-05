
rule Backdoor_BAT_Twient_A_bit{
	meta:
		description = "Backdoor:BAT/Twient.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 4f 00 4e 00 4e 00 45 00 43 00 54 00 45 00 44 00 2d 00 43 00 55 00 54 00 2d 00 } //01 00 
		$a_01_1 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 20 00 28 00 78 00 38 00 36 00 29 00 5c 00 50 00 44 00 54 00 53 00 5c 00 65 00 64 00 75 00 43 00 6c 00 69 00 65 00 6e 00 74 00 } //01 00 
		$a_01_2 = {63 68 65 63 6b 70 61 6e 69 63 } //01 00 
		$a_03_3 = {43 00 4f 00 4d 00 4d 00 41 00 4e 00 44 00 90 01 02 43 00 4f 00 4d 00 4d 00 41 00 4e 00 44 00 5f 00 45 00 4e 00 44 00 90 00 } //03 00 
		$a_01_4 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 74 00 77 00 69 00 74 00 74 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 2f 00 65 00 64 00 75 00 43 00 6c 00 69 00 65 00 6e 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}