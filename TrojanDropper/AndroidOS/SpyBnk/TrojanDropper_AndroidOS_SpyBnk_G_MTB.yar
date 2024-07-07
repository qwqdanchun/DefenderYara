
rule TrojanDropper_AndroidOS_SpyBnk_G_MTB{
	meta:
		description = "TrojanDropper:AndroidOS/SpyBnk.G!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {13 06 00 08 23 66 90 01 02 6e 20 90 01 02 62 00 0a 07 12 f8 33 87 90 01 02 70 40 90 01 02 1a 64 6e 10 90 01 02 01 00 0c 01 6e 10 90 01 02 00 00 0c 02 71 20 90 01 02 12 00 22 01 90 01 02 22 02 90 01 02 70 10 90 01 02 02 00 6e 10 90 01 02 0a 00 0c 03 6e 10 90 01 02 03 00 0c 03 6e 20 90 01 02 32 00 1a 03 04 00 6e 20 90 01 02 32 00 6e 10 90 01 02 02 00 0c 02 70 20 90 01 02 21 00 6e 10 90 01 02 01 00 6e 10 90 01 02 00 00 0c 00 22 01 90 01 02 70 10 90 01 02 01 00 6e 10 90 01 02 0a 00 0c 02 6e 10 90 01 02 02 00 0c 02 6e 20 90 01 02 21 00 1a 02 04 00 6e 20 90 01 02 21 00 6e 10 90 01 02 01 00 0c 01 70 30 90 01 02 0a 01 0e 00 12 08 35 78 0b 00 48 09 06 08 b7 39 8d 99 4f 09 06 08 d8 08 08 01 28 f6 6e 40 90 01 02 64 75 90 00 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}