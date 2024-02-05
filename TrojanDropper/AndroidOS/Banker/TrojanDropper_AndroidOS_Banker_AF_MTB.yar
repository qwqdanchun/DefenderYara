
rule TrojanDropper_AndroidOS_Banker_AF_MTB{
	meta:
		description = "TrojanDropper:AndroidOS/Banker.AF!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 04 00 00 05 00 "
		
	strings :
		$a_02_0 = {35 97 55 00 d8 01 01 01 d5 11 ff 00 48 03 08 01 b0 30 d5 00 ff 00 90 02 07 48 03 08 01 48 04 08 00 b0 43 d5 33 ff 00 48 04 0b 07 48 03 08 03 b7 43 8d 33 4f 03 02 07 d8 07 07 01 28 e1 90 00 } //05 00 
		$a_02_1 = {35 a1 49 00 d8 02 02 01 d5 23 ff 00 48 02 09 03 b0 20 d5 02 ff 00 90 02 0a 48 00 09 03 48 05 09 02 b0 50 d5 00 ff 00 90 02 04 48 05 0e 01 48 00 09 00 b7 50 8d 00 4f 00 04 01 90 00 } //05 00 
		$a_00_2 = {35 95 28 00 14 07 cf a4 0e 00 92 02 02 06 b0 72 b1 42 48 04 00 05 92 02 02 06 dc 07 05 02 48 07 03 07 14 08 5e 36 01 00 92 08 08 06 91 08 02 08 b7 74 8d 44 4f 04 01 05 14 04 e6 95 0d 00 92 06 06 08 b0 46 b1 26 d8 05 05 01 01 24 01 82 28 d9 } //05 00 
		$a_00_3 = {35 96 23 00 48 03 00 06 14 04 a2 61 0d 00 14 07 54 b2 0b 00 b3 54 b0 74 dc 05 06 01 48 05 02 05 14 07 a9 83 0a 00 92 07 07 04 14 08 5b 62 d9 01 b1 87 b7 53 8d 33 4f 03 01 06 13 03 38 01 d8 06 06 01 01 75 28 de } //00 00 
	condition:
		any of ($a_*)
 
}