
rule Worm_Win32_Vobfus_CI{
	meta:
		description = "Worm:Win32/Vobfus.CI,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 2e 8d 85 90 01 04 50 e8 90 01 04 6a 70 e8 90 01 04 89 85 90 02 0e c7 85 90 02 12 c7 85 90 02 12 c7 85 90 02 12 6a 65 90 00 } //01 00 
		$a_03_1 = {6a 2e 8d 45 90 01 01 50 e8 90 01 04 c7 85 90 02 12 6a 69 e8 90 01 04 89 85 90 02 0e 6a 64 e8 90 01 04 89 85 90 02 0e 6a 65 90 00 } //01 00 
		$a_03_2 = {6a 74 8d 85 90 01 04 50 e8 90 01 04 6a 61 e8 90 01 04 89 85 90 02 0e 6a 73 8d 85 90 01 04 50 e8 90 01 04 6a 6b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}