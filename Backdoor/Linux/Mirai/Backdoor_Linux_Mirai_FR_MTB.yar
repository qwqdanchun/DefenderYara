
rule Backdoor_Linux_Mirai_FR_MTB{
	meta:
		description = "Backdoor:Linux/Mirai.FR!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {30 40 2d e9 10 20 90 01 01 e5 18 30 90 01 01 e5 03 00 52 e1 00 40 a0 e1 08 51 9f e5 01 00 d2 34 05 50 8f e0 0c d0 4d e2 10 20 84 35 3a 90 01 03 b0 30 d4 e1 83 30 03 e2 80 00 53 e3 03 90 01 03 80 10 a0 e3 6a 04 00 eb 00 00 50 e3 90 00 } //01 00 
		$a_03_1 = {10 10 84 e2 0a 00 91 e8 01 00 53 e1 01 00 d1 14 10 10 84 15 20 90 01 03 04 30 94 e5 02 00 73 e3 04 30 82 03 00 00 e0 03 b0 30 c4 01 1a 90 01 03 03 0c 12 e3 70 30 9f 15 03 00 95 17 e5 fe ff 1b 08 20 84 e2 0c 00 92 e8 02 00 53 e1 0a 90 01 03 18 20 84 e5 04 00 a0 e1 39 04 00 eb 00 00 50 e3 0c 90 01 03 14 30 94 e5 18 30 84 e5 10 30 94 e5 01 00 d3 e4 10 30 84 e5 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}