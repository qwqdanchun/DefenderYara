
rule Backdoor_Win32_Nosrawec_B{
	meta:
		description = "Backdoor:Win32/Nosrawec.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 73 65 4e 61 67 6c 65 53 } //01 00 
		$a_01_1 = {54 72 61 6e 73 6d 69 74 46 69 6c 65 } //02 00 
		$a_01_2 = {77 69 6e 75 70 64 61 74 65 2e 62 61 74 } //02 00 
		$a_01_3 = {53 31 00 00 53 32 00 00 53 33 00 00 53 34 00 00 53 35 00 00 53 36 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}