
rule Trojan_Win32_Qakbot_FQ_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.FQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00 
		$a_01_1 = {43 44 55 4a 50 } //01 00 
		$a_01_2 = {44 4c 64 77 6d 70 } //01 00 
		$a_01_3 = {48 6c 56 54 39 31 6a } //01 00 
		$a_01_4 = {4e 6f 6e 43 32 } //01 00 
		$a_01_5 = {53 55 6e 31 35 44 } //00 00 
	condition:
		any of ($a_*)
 
}