
rule Worm_Win32_Flame_gen_B{
	meta:
		description = "Worm:Win32/Flame.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 04 00 00 04 00 "
		
	strings :
		$a_01_0 = {66 81 3f 4d 5a 89 85 e4 fe ff ff 0f 85 a3 00 00 00 8b 47 3c 8d 74 38 18 6a 04 56 ff d3 85 c0 0f 85 8f 00 00 00 66 81 3e 0b 01 } //01 00 
		$a_01_1 = {55 00 50 00 44 00 54 00 5f 00 53 00 59 00 4e 00 43 00 5f 00 4d 00 54 00 58 00 5f 00 54 00 4d 00 45 00 } //01 00 
		$a_01_2 = {54 00 48 00 5f 00 50 00 4f 00 4f 00 4c 00 5f 00 53 00 48 00 44 00 5f 00 } //01 00 
		$a_01_3 = {53 00 3a 00 28 00 4d 00 4c 00 3b 00 3b 00 4e 00 57 00 3b 00 3b 00 3b 00 4c 00 57 00 29 00 44 00 3a 00 28 00 41 00 3b 00 4f 00 49 00 43 00 49 00 3b 00 47 00 41 00 3b 00 3b 00 3b 00 57 00 44 00 29 00 } //00 00 
	condition:
		any of ($a_*)
 
}