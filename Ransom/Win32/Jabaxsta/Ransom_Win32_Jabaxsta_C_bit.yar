
rule Ransom_Win32_Jabaxsta_C_bit{
	meta:
		description = "Ransom:Win32/Jabaxsta.C!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 4d f4 83 c1 01 89 4d f4 8b 55 f4 3b 15 90 01 03 00 7d 26 8b 45 f4 0f b6 88 90 01 03 00 8b 45 f4 33 d2 f7 75 ec 0f be 92 90 01 03 00 33 ca 8b 45 f4 88 88 90 01 03 00 eb c6 90 00 } //01 00 
		$a_03_1 = {8b 55 f8 83 c2 01 89 55 f8 8b 45 f8 3b 05 90 01 03 00 7d 26 8b 4d f8 0f b6 89 90 01 03 00 8b 45 f8 33 d2 f7 75 ec 0f be 92 90 01 03 00 33 ca 8b 45 f8 88 88 90 01 03 00 eb c6 90 00 } //01 00 
		$a_03_2 = {b8 01 00 00 00 85 c0 74 25 ff 15 90 01 03 00 33 d2 b9 19 00 00 00 f7 f1 83 c2 41 89 55 90 01 01 8b 55 f4 66 8b 45 90 01 01 66 89 44 55 90 01 01 eb 02 eb d2 90 00 } //01 00 
		$a_01_3 = {72 51 4a 62 47 44 44 77 77 46 47 69 00 } //00 00 
	condition:
		any of ($a_*)
 
}