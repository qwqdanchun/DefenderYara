
rule Ransom_Win32_Cerber_L_bit{
	meta:
		description = "Ransom:Win32/Cerber.L!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 17 69 d2 90 01 04 c1 c2 90 01 01 69 d2 90 01 04 33 da c1 c3 90 01 01 6b db 90 01 01 83 c7 90 01 01 81 c3 90 01 04 3b 7d 90 01 01 72 d9 90 00 } //01 00 
		$a_03_1 = {0f b6 07 c1 e0 90 01 01 c1 e9 90 01 01 4a 0b c8 47 46 83 fe 90 01 01 75 1f 69 c9 90 01 04 c1 c1 90 01 01 69 c9 90 01 04 33 d9 c1 c3 90 01 01 6b db 90 01 01 81 c3 90 01 04 33 f6 85 d2 75 90 00 } //01 00 
		$a_03_2 = {2b ca c1 e1 90 01 01 d3 e8 69 c0 90 01 04 c1 c0 90 01 01 69 c0 90 01 04 33 f0 33 74 24 90 01 01 8b c6 c1 e8 90 01 01 33 c6 69 c0 90 01 04 8b c8 c1 e9 90 01 01 33 c8 69 c9 90 01 04 8b c1 c1 e8 90 01 01 33 c1 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}