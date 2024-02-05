
rule Ransom_Win32_Revil_A{
	meta:
		description = "Ransom:Win32/Revil.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b c1 8a 1c 39 33 d2 0f b6 cb f7 75 10 8b 45 0c 0f b6 04 02 03 c6 03 c8 0f b6 f1 8b 4d fc 8a 04 3e 88 04 39 41 88 1c 3e 89 4d fc 81 f9 00 01 00 00 72 cd } //01 00 
		$a_01_1 = {8b 55 08 40 0f b6 c8 8b 45 08 89 4d 10 8b 5d 10 8a 0c 01 0f b6 c1 03 c6 0f b6 f0 8b 45 08 8a 04 06 88 04 13 8b c2 8b d3 8b 5d 14 88 0c 06 } //01 00 
		$a_01_2 = {0f b6 04 02 8b 55 0c 0f b6 c9 03 c8 0f b6 c1 8b 4d 08 8a 04 08 32 04 1a 88 03 43 8b 45 10 89 5d 14 83 ef 01 75 ac } //00 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Revil_A_2{
	meta:
		description = "Ransom:Win32/Revil.A,SIGNATURE_TYPE_PEHSTR,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 63 6e 61 6d 65 00 00 64 61 74 61 00 00 00 00 66 69 6c 65 73 69 7a 65 00 00 00 00 00 00 00 00 66 72 61 6d 65 73 69 7a 65 00 00 00 00 00 00 00 66 72 61 6d 65 6e 75 6d 00 00 00 00 00 00 00 00 66 69 6c 65 63 72 63 00 66 69 6c 65 6e 61 6d 65 00 00 00 00 6c 6f 63 6b 65 64 00 00 2e 6c 6f 63 6b 00 00 00 2a 00 00 00 25 00 73 00 25 00 73 00 } //01 00 
		$a_01_1 = {5b 62 79 74 65 5b 5d 5d 40 28 2c 20 30 20 2a 20 31 6d 62 29 3b 20 53 65 74 2d 43 6f 6e 74 65 6e 74 20 2d 50 61 74 68 20 24 70 72 6f 63 2e 46 69 6c 65 4e 61 6d 65 20 2d 46 6f 72 63 65 20 2d 43 6f 6e 66 69 72 6d 3a 30 20 2d 56 61 6c 75 65 20 24 62 75 66 66 3b 20 52 65 6d 6f 76 65 2d 49 74 65 6d 20 2d 50 61 74 68 20 24 70 72 6f 63 2e 46 69 6c 65 4e 61 6d 65 20 2d 46 6f 72 63 65 20 2d 43 6f 6e 66 69 72 6d 3a 30 20 22 00 } //00 00 
	condition:
		any of ($a_*)
 
}