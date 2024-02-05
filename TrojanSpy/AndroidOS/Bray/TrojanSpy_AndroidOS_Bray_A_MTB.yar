
rule TrojanSpy_AndroidOS_Bray_A_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Bray.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {38 03 13 00 54 23 90 01 01 00 1a 00 90 01 01 33 71 10 90 01 02 00 00 0c 00 12 01 71 30 90 01 02 03 01 0c 03 6e 10 90 01 02 03 00 90 00 } //01 00 
		$a_03_1 = {39 00 fa 02 54 80 90 01 02 62 03 90 01 02 33 30 f4 02 54 80 90 01 02 52 03 90 01 02 32 13 d0 02 32 23 04 00 90 00 } //01 00 
		$a_03_2 = {36 31 1b 00 12 21 22 03 90 01 02 70 10 90 01 02 03 00 6e 30 90 01 02 10 03 60 01 90 01 02 13 03 12 00 34 31 0c 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}