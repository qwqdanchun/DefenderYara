
rule Worm_Win32_Flame_gen_E{
	meta:
		description = "Worm:Win32/Flame.gen!E,SIGNATURE_TYPE_PEHSTR,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 44 24 04 8d 48 11 83 c0 0b 0f af c8 8b c1 8b d1 25 00 00 ff 00 c1 ea 08 33 c2 8b d1 c1 e8 08 66 81 e2 00 ff 33 c2 c1 e8 08 33 c1 } //01 00 
		$a_01_1 = {5c 47 6c 6f 62 61 6c 5c 4a 63 76 45 76 65 6e 74 33 } //01 00 
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 53 79 6d 61 6e 74 65 63 5c } //01 00 
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 46 61 72 53 74 6f 6e 65 5c } //01 00 
		$a_01_4 = {72 6f 6f 74 40 31 39 35 2e 39 37 2e 37 38 2e 31 36 32 20 2d 50 20 34 34 33 } //00 00 
	condition:
		any of ($a_*)
 
}