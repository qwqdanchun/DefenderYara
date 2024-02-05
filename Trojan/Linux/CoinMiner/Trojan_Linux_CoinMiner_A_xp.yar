
rule Trojan_Linux_CoinMiner_A_xp{
	meta:
		description = "Trojan:Linux/CoinMiner.A!xp,SIGNATURE_TYPE_ELFHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {00 82 00 c0 a1 49 29 08 22 14 20 40 23 08 69 00 00 00 40 01 13 a0 48 14 63 84 11 80 00 02 00 10 00 80 03 20 e2 0e 05 a8 11 00 41 } //01 00 
		$a_00_1 = {25 80 21 40 88 80 01 01 00 80 22 91 00 02 00 e4 08 d0 a5 11 ca 10 58 67 6e 38 06 20 40 84 20 40 21 41 00 00 } //01 00 
		$a_00_2 = {00 d0 30 15 31 a2 97 a8 10 00 00 01 80 70 85 45 a0 54 e0 04 2d 06 8c a5 8a 10 01 8a 44 02 00 } //00 00 
	condition:
		any of ($a_*)
 
}