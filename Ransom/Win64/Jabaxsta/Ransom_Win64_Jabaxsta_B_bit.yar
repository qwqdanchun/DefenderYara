
rule Ransom_Win64_Jabaxsta_B_bit{
	meta:
		description = "Ransom:Win64/Jabaxsta.B!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 8b d6 45 84 c0 74 0e 49 8b c7 ff c2 48 8d 40 01 44 38 28 75 f5 44 3b d2 7d 0b 41 30 09 41 ff c2 49 ff c1 eb d2 } //01 00 
		$a_01_1 = {41 8b c2 41 ff c2 99 f7 f9 48 63 c2 42 0f b6 04 20 41 30 01 49 ff c1 45 3b d3 72 c9 } //01 00 
		$a_01_2 = {65 66 6b 72 6d 34 74 67 6b 6c 34 79 74 67 34 } //01 00 
		$a_01_3 = {55 00 4e 00 49 00 51 00 55 00 45 00 5f 00 49 00 44 00 5f 00 44 00 4f 00 5f 00 4e 00 4f 00 54 00 5f 00 52 00 45 00 4d 00 4f 00 56 00 45 00 } //01 00 
		$a_01_4 = {52 00 79 00 75 00 6b 00 52 00 65 00 61 00 64 00 4d 00 65 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_03_5 = {63 00 73 00 72 00 73 00 73 00 2e 00 65 00 78 00 65 00 90 02 10 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 90 02 10 6c 00 73 00 61 00 61 00 73 00 2e 00 65 00 78 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}