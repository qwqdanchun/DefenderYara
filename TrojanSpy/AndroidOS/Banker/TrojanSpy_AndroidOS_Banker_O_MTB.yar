
rule TrojanSpy_AndroidOS_Banker_O_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Banker.O!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {12 01 21 72 35 21 ?? ?? 71 10 ?? ?? 06 00 0a 02 d8 02 02 01 d4 22 00 01 59 62 0d 00 71 10 82 00 06 00 0a 02 71 10 84 00 06 00 0c 03 71 10 85 00 06 00 0a 04 44 05 03 04 b0 52 d4 22 00 01 59 62 0e 00 71 10 ?? ?? 06 00 0a 02 71 40 ?? ?? 46 32 71 10 ?? ?? 06 00 0c 02 71 10 ?? ?? 06 00 0a 03 44 03 02 03 71 10 ?? ?? 06 00 0a 04 44 04 02 04 b0 43 d4 33 00 01 44 02 02 03 48 03 07 01 b7 32 8d 22 4f 02 00 01 d8 01 01 01 28 bc 11 00 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}