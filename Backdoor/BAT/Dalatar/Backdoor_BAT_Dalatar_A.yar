
rule Backdoor_BAT_Dalatar_A{
	meta:
		description = "Backdoor:BAT/Dalatar.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 42 00 73 00 42 53 00 41 72 72 61 79 00 66 78 00 57 52 44 00 } //01 00 
		$a_01_1 = {49 73 42 75 7a 79 00 } //01 00 
		$a_01_2 = {59 79 00 48 4f 53 54 00 70 6f 72 74 00 } //01 00 
		$a_01_3 = {43 6f 6e 6e 65 63 74 00 68 00 70 00 53 50 4c 00 44 69 73 43 6f 6e 6e 65 63 74 00 53 65 6e 64 00 52 43 00 } //00 00 
	condition:
		any of ($a_*)
 
}