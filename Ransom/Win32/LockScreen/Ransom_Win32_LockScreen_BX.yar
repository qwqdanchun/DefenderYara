
rule Ransom_Win32_LockScreen_BX{
	meta:
		description = "Ransom:Win32/LockScreen.BX,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {53 69 6c 65 6e 63 65 90 01 01 6c 6f 63 6b 90 01 01 62 6f 74 2e 70 64 62 90 00 } //01 00 
		$a_02_1 = {70 61 79 6d 65 6e 74 20 76 61 6c 69 64 61 74 69 6f 6e 20 77 69 6c 6c 20 74 61 6b 65 90 02 20 62 65 66 6f 72 65 20 79 6f 75 20 77 69 6c 6c 20 67 65 74 20 61 63 63 65 73 73 20 74 6f 20 79 6f 75 72 20 73 79 73 74 65 6d 90 00 } //01 00 
		$a_03_2 = {80 fa 37 75 90 01 01 80 3d 90 01 04 36 75 90 01 01 80 3d 90 01 04 33 75 90 01 01 38 15 90 01 04 0f 84 90 01 04 8b c6 8d 70 01 8a 08 40 3a cb 75 90 01 01 2b c6 83 f8 13 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}