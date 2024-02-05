
rule Trojan_Win32_Vecebot_A{
	meta:
		description = "Trojan:Win32/Vecebot.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 2a 8d 83 00 18 00 00 50 8d 8b 00 10 00 00 51 8d 93 00 08 00 00 52 } //01 00 
		$a_01_1 = {50 68 fa 00 00 00 56 } //01 00 
		$a_00_2 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 00 00 00 00 63 00 6f 00 6e 00 66 00 69 00 72 00 6d 00 5f 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 00 00 00 00 44 00 48 00 43 00 50 00 20 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 20 00 36 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Vecebot_A_2{
	meta:
		description = "Trojan:Win32/Vecebot.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {25 00 73 00 2e 00 6d 00 75 00 69 00 00 00 00 00 25 00 73 00 2e 00 6e 00 65 00 77 00 00 00 00 00 63 00 6f 00 6e 00 66 00 69 00 72 00 6d 00 5f 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 } //01 00 
		$a_00_1 = {77 00 75 00 61 00 75 00 73 00 65 00 72 00 76 00 63 00 6f 00 6d 00 00 00 73 00 65 00 74 00 68 00 63 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_03_2 = {6a 04 6a 5d b9 90 01 04 8d b5 90 01 04 e8 90 01 04 6a 04 68 90 01 01 90 90 04 00 b9 90 01 04 8d b5 90 01 04 e8 90 01 04 6a 04 68 f2 7a 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}