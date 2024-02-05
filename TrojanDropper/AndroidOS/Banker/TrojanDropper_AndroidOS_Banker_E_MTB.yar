
rule TrojanDropper_AndroidOS_Banker_E_MTB{
	meta:
		description = "TrojanDropper:AndroidOS/Banker.E!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {13 00 75 17 12 01 13 02 0a 1a 12 02 13 03 0a 1a 13 04 09 00 35 42 07 00 d8 02 02 01 13 03 75 17 28 f8 13 02 0a 00 23 24 90 01 02 26 04 8b 00 00 00 13 05 19 00 b0 35 b1 05 23 26 90 01 02 13 07 64 00 36 75 06 00 14 03 b0 76 01 00 b0 53 12 17 23 77 90 01 02 26 07 81 00 00 00 01 58 12 05 13 09 0b 00 35 95 08 00 13 08 8b e8 b0 38 d8 05 05 01 28 f7 37 03 08 00 14 00 17 e3 05 00 92 05 03 08 b0 50 33 08 0d 00 14 03 d9 49 7b 00 14 05 98 7c 4e 00 92 09 08 00 b1 39 90 90 03 09 05 01 05 12 00 12 79 35 90 00 } //02 00 
		$a_03_1 = {10 00 14 05 fc d0 0e 00 14 09 67 6e 07 00 92 0a 03 08 b0 5a 91 05 0a 09 d8 00 00 01 28 f0 12 00 35 20 2d 00 14 08 12 2f 06 00 b1 58 48 05 04 00 14 09 61 c5 0b 00 b0 93 dc 09 00 01 48 09 07 09 14 0a 9f 55 02 00 b1 3a b1 8a 93 0b 0a 0a d8 0b 0b ff b0 5b 91 05 03 08 da 05 05 00 b0 5b b3 88 dc 08 08 01 b0 8b 97 05 0b 09 8d 55 4f 05 06 00 d8 00 00 01 01 35 01 a3 28 d4 13 00 1a 00 35 01 0a 00 14 00 c7 07 0b 00 93 00 03 00 d8 01 01 01 28 f5 22 00 90 01 02 70 20 90 01 02 60 00 11 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}