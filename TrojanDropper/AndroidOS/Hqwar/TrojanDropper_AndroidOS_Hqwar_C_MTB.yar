
rule TrojanDropper_AndroidOS_Hqwar_C_MTB{
	meta:
		description = "TrojanDropper:AndroidOS/Hqwar.C!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {d2 00 99 0b 90 02 04 b0 30 90 02 04 54 d3 0c 00 90 02 04 21 33 90 02 04 54 d4 0f 00 90 02 04 21 44 90 02 04 b1 43 90 02 04 b0 30 90 02 04 52 d3 14 00 90 02 04 d0 33 5d 09 90 02 04 d0 33 12 05 90 02 04 d8 03 03 48 90 02 04 52 d4 07 00 90 02 04 b0 43 90 02 04 b0 30 90 02 04 59 d0 08 00 90 02 04 54 d0 09 00 90 02 04 21 00 90 02 04 d1 00 0f 3f 90 02 04 52 d3 0b 00 90 02 04 b1 30 90 02 04 52 d3 14 00 90 02 04 b0 30 90 02 04 d8 03 00 e6 90 02 04 55 d0 11 00 90 02 04 38 00 90 02 07 01 10 90 00 } //01 00 
		$a_00_1 = {63 6f 6d 2f 6e 65 6f 68 62 69 2f 63 65 76 7a 73 69 77 } //00 00  com/neohbi/cevzsiw
	condition:
		any of ($a_*)
 
}