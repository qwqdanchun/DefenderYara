
rule TrojanDropper_AndroidOS_Banker_AE_MTB{
	meta:
		description = "TrojanDropper:AndroidOS/Banker.AE!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 04 00 00 05 00 "
		
	strings :
		$a_00_0 = {35 a5 6f 00 00 00 00 00 14 03 f0 ba 01 00 00 00 00 00 91 03 04 03 00 00 00 00 48 06 00 05 00 00 13 07 3c 00 00 00 00 00 00 00 00 00 b3 37 00 00 d8 07 07 5f 00 00 b1 47 00 00 00 00 00 00 00 00 00 00 dc 04 05 02 00 00 00 00 00 00 48 04 02 04 00 00 00 00 00 00 00 00 14 08 cf 81 0b 00 00 00 00 00 92 03 03 08 00 00 00 00 d0 33 d6 89 00 00 00 00 b0 73 00 00 00 00 b7 64 00 00 8d 44 00 00 00 00 00 00 00 00 4f 04 01 05 00 00 14 04 66 2d 0d 00 00 00 00 00 00 00 92 04 04 03 00 00 00 00 00 00 b0 74 00 00 00 00 00 00 d8 05 05 01 00 00 00 00 00 00 01 49 00 00 00 00 00 00 00 00 01 34 00 00 00 00 00 00 01 93 00 00 00 00 00 00 00 00 00 00 28 97 } //05 00 
		$a_00_1 = {35 15 56 00 00 00 00 00 b0 a9 00 00 00 00 00 00 00 00 48 0b 02 05 00 00 00 00 00 00 00 00 00 00 90 0c 09 0a 00 00 dc 0d 05 02 00 00 00 00 00 00 00 00 00 00 48 0d 07 0d 00 00 b0 c9 00 00 00 00 00 00 00 00 d2 aa 35 1b 00 00 00 00 00 00 b0 a9 00 00 00 00 00 00 97 0a 0b 0d 00 00 00 00 00 00 00 00 00 00 8d aa 00 00 00 00 00 00 4f 0a 03 05 00 00 00 00 00 00 00 00 14 0a 53 c9 03 00 00 00 00 00 00 00 b1 9a 00 00 00 00 b0 ca 00 00 00 00 00 00 d8 05 05 01 00 00 00 00 00 00 01 c9 00 00 00 00 28 af } //05 00 
		$a_00_2 = {35 a5 26 00 92 04 04 03 48 06 00 05 14 07 32 86 0d 00 92 03 03 04 b0 73 dc 07 05 02 48 07 02 07 14 08 d0 95 0e 00 b0 48 b7 76 8d 66 4f 06 01 05 14 06 8d d0 04 00 92 04 04 06 b1 48 90 04 08 03 d8 05 05 01 01 49 01 34 01 93 28 db } //05 00 
		$a_00_3 = {35 06 20 00 14 07 e5 fd 0d 00 b0 75 48 07 01 06 14 08 6d 18 05 00 91 04 08 04 dc 08 06 03 48 08 03 08 d8 09 04 b2 b0 95 b7 87 8d 77 4f 07 02 06 93 07 05 04 d8 06 06 01 01 5a 01 45 01 a4 28 e1 } //00 00 
	condition:
		any of ($a_*)
 
}