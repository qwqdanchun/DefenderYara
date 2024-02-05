
rule Worm_Win32_Padzo_A{
	meta:
		description = "Worm:Win32/Padzo.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {5b 00 45 00 6e 00 74 00 65 00 72 00 5d 00 90 02 0a 5b 00 54 00 61 00 62 00 5d 00 90 02 0a 5b 00 45 00 73 00 63 00 5d 00 90 00 } //01 00 
		$a_01_1 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 69 00 6d 00 20 00 41 00 6e 00 74 00 69 00 4c 00 6f 00 67 00 67 00 65 00 72 00 } //01 00 
		$a_03_2 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 3c 00 6d 00 79 00 65 00 6d 00 61 00 69 00 6c 00 40 00 6d 00 79 00 64 00 6f 00 6d 00 61 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 3e 00 90 02 08 46 00 72 00 6f 00 6d 00 90 02 08 6c 00 6f 00 67 00 6c 00 61 00 72 00 90 00 } //00 00 
		$a_00_3 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}