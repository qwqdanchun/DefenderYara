
rule Trojan_Win32_Carberp_gen_B{
	meta:
		description = "Trojan:Win32/Carberp.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {80 39 36 75 04 8b c1 eb 09 c6 00 36 c6 40 01 34 } //01 00 
		$a_03_1 = {66 3d 46 4a 74 0d 83 c6 90 01 01 0f b7 06 66 85 c0 75 90 00 } //01 00 
		$a_00_2 = {66 81 78 04 64 86 75 08 8b 80 88 00 00 00 eb 03 8b 40 78 } //01 00 
		$a_01_3 = {8b 31 8d 51 08 8b 0a 83 c1 01 81 e1 fe 00 00 00 ff 34 ca } //01 00 
		$a_01_4 = {56 6e 63 44 4c 4c 2e 64 6c 6c 00 56 6e 63 53 72 76 57 6e 64 50 72 6f 63 00 56 6e 63 53 74 61 72 74 53 65 72 76 65 72 00 56 6e 63 53 74 6f 70 53 65 72 76 65 72 00 } //01 00 
	condition:
		any of ($a_*)
 
}