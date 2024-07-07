
rule TrojanDropper_AndroidOS_Banker_X_MTB{
	meta:
		description = "TrojanDropper:AndroidOS/Banker.X!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_02_0 = {35 12 0f 00 48 05 03 02 dc 06 02 02 48 06 08 06 b7 65 8d 55 4f 05 04 02 d8 02 02 01 28 f2 90 01 18 11 00 90 00 } //5
		$a_00_1 = {35 95 1e 00 d9 03 04 44 48 04 00 05 14 06 fd 6d 0d 00 b0 36 dc 07 05 02 48 07 02 07 d8 08 06 e5 d8 08 08 26 91 03 08 03 b7 74 8d 44 4f 04 01 05 93 04 03 06 d8 05 05 01 01 64 28 e3 } //5
		$a_00_2 = {35 95 24 00 14 06 9e c7 02 00 b0 36 48 03 00 05 b3 64 dc 07 05 01 48 07 02 07 14 08 ce cc 05 00 92 08 08 06 b0 84 b7 73 8d 33 4f 03 01 05 14 03 e3 a0 05 00 14 07 b6 ed 06 00 b0 63 93 07 04 07 b1 73 d8 05 05 01 28 dd } //5
	condition:
		((#a_02_0  & 1)*5+(#a_00_1  & 1)*5+(#a_00_2  & 1)*5) >=5
 
}