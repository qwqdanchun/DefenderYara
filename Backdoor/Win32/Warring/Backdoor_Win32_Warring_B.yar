
rule Backdoor_Win32_Warring_B{
	meta:
		description = "Backdoor:Win32/Warring.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {50 68 04 00 00 98 8b 46 04 50 e8 90 01 04 40 74 02 b3 01 90 00 } //01 00 
		$a_00_1 = {77 61 72 72 69 6e 67 2e 2e 2e 00 00 63 6f 6e 6e 65 63 74 20 31 32 37 2e 30 2e 30 2e 31 3a 31 32 33 34 35 21 } //00 00 
	condition:
		any of ($a_*)
 
}