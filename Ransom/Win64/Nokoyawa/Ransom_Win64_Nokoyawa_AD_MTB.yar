
rule Ransom_Win64_Nokoyawa_AD_MTB{
	meta:
		description = "Ransom:Win64/Nokoyawa.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {b8 04 00 00 00 48 6b c0 90 01 01 b9 04 00 00 00 48 6b c9 90 01 01 8b 4c 0c 20 8b 44 04 20 33 c1 b9 04 00 00 00 48 6b c9 90 01 01 33 44 0c 20 b9 04 00 00 00 48 6b c9 90 01 01 33 44 0c 20 89 04 24 8b 04 24 d1 e0 8b 0c 24 c1 e9 1f 0b c1 90 00 } //01 00 
		$a_03_1 = {89 84 24 74 01 00 00 48 8b 84 24 c0 01 00 00 8b 8c 24 74 01 00 00 89 48 0c 8b 84 24 74 01 00 00 89 44 24 10 48 8b 84 24 c0 01 00 00 8b 4c 24 14 8b 40 10 03 c1 89 84 24 78 01 00 00 48 8b 84 24 c0 01 00 00 8b 8c 24 78 01 00 00 89 48 10 8b 84 24 78 01 00 00 89 44 24 14 e9 90 01 02 ff ff 48 81 c4 a8 01 00 00 90 00 } //01 00 
		$a_01_2 = {45 6e 63 72 79 70 74 20 6f 6e 6c 79 20 73 65 6c 65 63 74 65 64 20 66 69 6c 65 } //00 00 
	condition:
		any of ($a_*)
 
}