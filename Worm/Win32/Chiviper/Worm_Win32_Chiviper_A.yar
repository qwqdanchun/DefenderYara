
rule Worm_Win32_Chiviper_A{
	meta:
		description = "Worm:Win32/Chiviper.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 3e 33 d2 59 f7 f1 46 83 fe 0a 8a 82 90 01 04 88 86 90 01 04 7c e2 90 00 } //01 00 
		$a_01_1 = {80 3e 00 75 04 8b 74 24 14 8a 0e 28 08 8a 08 8a 16 32 d1 46 88 10 40 4f 75 e6 } //00 00 
	condition:
		any of ($a_*)
 
}