
rule Trojan_Win32_Qbot_DF_MTB{
	meta:
		description = "Trojan:Win32/Qbot.DF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_81_0 = {63 48 49 45 54 2e 64 6c 6c } //01 00 
		$a_81_1 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00 
		$a_81_2 = {50 69 53 47 7a 66 61 67 61 4e 76 4d 72 } //01 00 
		$a_81_3 = {49 4c 6e 69 54 4a 64 74 6c 68 68 } //01 00 
		$a_81_4 = {74 41 58 6f 58 43 6a 4e 58 56 55 62 4f 7a } //01 00 
		$a_81_5 = {77 4c 4a 65 43 6c 6d 6f 46 58 } //01 00 
		$a_81_6 = {4d 6a 6d 6f 56 62 46 54 } //00 00 
	condition:
		any of ($a_*)
 
}