
rule Backdoor_BAT_Ploutos_A_bit{
	meta:
		description = "Backdoor:BAT/Ploutos.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //02 00 
		$a_01_1 = {53 00 74 00 61 00 72 00 74 00 75 00 70 00 20 00 46 00 75 00 63 00 6b 00 65 00 64 00 } //01 00 
		$a_01_2 = {66 00 69 00 6c 00 65 00 68 00 65 00 6c 00 70 00 2e 00 75 00 73 00 2f 00 69 00 70 00 2e 00 70 00 68 00 70 00 } //01 00 
		$a_01_3 = {6d 00 69 00 6e 00 65 00 72 00 64 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_03_4 = {77 00 68 00 69 00 74 00 65 00 68 00 61 00 74 00 2e 00 73 00 75 00 2f 00 90 02 18 2e 00 65 00 78 00 65 00 90 00 } //02 00 
		$a_01_5 = {62 00 6f 00 74 00 6b 00 69 00 6c 00 6c 00 } //01 00 
		$a_01_6 = {73 00 6c 00 6f 00 77 00 6c 00 6f 00 72 00 69 00 73 00 } //01 00 
		$a_01_7 = {74 00 63 00 70 00 66 00 6c 00 6f 00 6f 00 64 00 } //00 00 
	condition:
		any of ($a_*)
 
}