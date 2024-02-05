
rule PWS_Win32_Emptybase_B{
	meta:
		description = "PWS:Win32/Emptybase.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {74 44 ff 77 04 ff 77 0c 68 90 01 04 56 e8 90 01 04 53 56 ff 75 f8 c6 06 47 c6 46 01 45 c6 46 02 54 90 00 } //01 00 
		$a_03_1 = {75 54 8d 45 e0 50 ff 75 0c e8 90 01 04 59 59 6a 06 8d 45 e0 50 ff 75 f4 e8 90 00 } //01 00 
		$a_01_2 = {55 70 64 61 74 65 00 00 53 74 6f 70 00 00 00 00 41 63 74 69 76 61 74 65 00 00 00 00 45 78 65 63 75 74 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}