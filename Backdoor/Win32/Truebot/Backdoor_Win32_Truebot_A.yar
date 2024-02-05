
rule Backdoor_Win32_Truebot_A{
	meta:
		description = "Backdoor:Win32/Truebot.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 72 00 6a 00 79 00 79 00 74 00 72 00 6e 00 00 00 } //01 00 
		$a_01_1 = {68 00 74 00 63 00 6e 00 66 00 68 00 6e 00 00 00 } //01 00 
		$a_01_2 = {79 00 74 00 6e 00 70 00 66 00 6c 00 66 00 79 00 62 00 71 00 00 00 } //01 00 
		$a_01_3 = {26 00 62 00 78 00 79 00 3d 00 00 00 } //01 00 
		$a_01_4 = {55 00 70 00 73 00 73 00 73 00 2e 00 20 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 65 00 78 00 69 00 74 00 20 00 63 00 6f 00 64 00 65 00 } //00 00 
		$a_00_5 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}