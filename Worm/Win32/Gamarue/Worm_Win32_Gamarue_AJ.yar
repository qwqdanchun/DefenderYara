
rule Worm_Win32_Gamarue_AJ{
	meta:
		description = "Worm:Win32/Gamarue.AJ,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {99 b9 a0 1f 00 00 f7 f9 6a 04 90 02 05 68 00 10 00 00 8d 72 01 8b de 6b db 07 90 00 } //01 00 
		$a_01_1 = {99 b9 a0 1f 00 00 f7 f9 8d 7a 01 8b f7 6b f6 07 } //01 00 
		$a_01_2 = {4e 8d 50 01 8a 08 40 84 c9 75 f9 2b c2 8b c8 0f 31 89 } //00 00 
		$a_00_3 = {80 } //10 00 
	condition:
		any of ($a_*)
 
}