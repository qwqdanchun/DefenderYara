
rule PWS_Win32_Tibia_BF{
	meta:
		description = "PWS:Win32/Tibia.BF,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 62 69 5f 72 65 61 64 65 64 5f 64 61 74 61 28 00 } //01 00 
		$a_01_1 = {74 62 69 5f 64 61 74 61 30 00 } //01 00 
		$a_01_2 = {38 37 2e 39 38 2e 31 34 31 2e 31 33 30 00 } //01 00 
		$a_01_3 = {5b 00 44 00 45 00 42 00 55 00 47 00 5d 00 } //01 00 
		$a_03_4 = {ff 0f 1f 00 e8 90 09 04 00 50 6a 00 68 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}