
rule Worm_Win32_Kasidet_I_bit{
	meta:
		description = "Worm:Win32/Kasidet.I!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {64 a1 30 00 00 00 8b 40 0c 53 8b 58 0c 56 57 8b 7d 08 8b f3 81 f7 90 01 04 8b 56 30 e8 90 01 03 ff 8b c8 e8 90 01 03 ff 3b c7 74 17 8b 36 3b de 74 0a 85 f6 74 06 83 7e 30 00 75 dd 33 c0 5f 5e 5b 5d c3 8b 46 18 eb f6 90 00 } //02 00 
		$a_03_1 = {6a 42 58 6a 59 66 89 45 90 01 01 58 6a 2a 66 89 45 90 01 01 58 6a 52 66 89 45 90 01 01 58 6a 55 66 89 45 90 01 01 58 6a 2a 66 89 45 90 01 01 58 6a 4b 66 89 45 90 01 01 58 66 89 45 90 01 01 6a 5a 58 66 89 45 90 01 01 33 c0 66 89 45 90 00 } //01 00 
		$a_03_2 = {68 4c 5e 28 03 6a 01 e8 90 01 03 ff 59 59 6a 04 68 00 30 00 00 ff 75 08 6a 00 ff d0 5d c3 90 00 } //01 00 
		$a_03_3 = {66 83 34 46 90 01 01 40 3b c7 72 f6 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}