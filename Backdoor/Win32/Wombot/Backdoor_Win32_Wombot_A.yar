
rule Backdoor_Win32_Wombot_A{
	meta:
		description = "Backdoor:Win32/Wombot.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 6f 74 6c 6f 67 69 6e 00 } //01 00 
		$a_01_1 = {2f 77 6d 2e 70 68 70 00 } //01 00 
		$a_01_2 = {6d 69 6e 5f 63 61 70 74 63 68 61 73 69 7a 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}