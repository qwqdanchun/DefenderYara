
rule Ransom_Win32_LockScreen_AN{
	meta:
		description = "Ransom:Win32/LockScreen.AN,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {32 51 13 14 71 33 81 ff da 00 0c 03 01 00 02 11 03 11 00 3f 00 f9 20 a7 ed 9c 01 d9 8f e4 6a 7d } //01 00 
		$a_03_1 = {30 04 39 04 c7 85 90 01 04 34 04 51 04 c7 85 90 01 04 42 04 35 04 c7 85 90 01 04 20 00 3a 04 c7 85 90 01 04 3e 04 34 04 90 00 } //01 00 
		$a_01_2 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 46 00 20 00 2f 00 49 00 4d 00 20 00 74 00 61 00 73 00 6b 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}