
rule Backdoor_Win32_Quisbot_A{
	meta:
		description = "Backdoor:Win32/Quisbot.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {42 6f 74 20 69 64 3a 20 25 73 0a 00 2f 73 00 } //01 00 
		$a_01_1 = {50 61 72 61 6d 3a 20 2f 73 74 61 72 74 0a 00 } //01 00 
		$a_01_2 = {2f 75 70 64 61 74 65 2e 70 68 70 3f 69 64 3d 00 } //01 00 
		$a_01_3 = {0a 53 42 4f 54 20 73 74 61 72 74 0a 00 } //01 00 
		$a_01_4 = {25 73 5c 4d 69 63 72 6f 73 6f 66 74 5c 25 73 5c 25 73 2e 65 78 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}