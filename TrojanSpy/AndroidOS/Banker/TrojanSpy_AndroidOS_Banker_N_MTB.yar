
rule TrojanSpy_AndroidOS_Banker_N_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Banker.N!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {12 00 1a 03 00 00 1a 02 00 00 01 01 13 04 0f 00 34 41 24 00 22 01 90 01 02 6e 10 90 01 02 08 00 0a 04 db 04 04 02 70 20 90 01 02 41 00 6e 10 90 01 02 08 00 0a 04 3c 04 90 01 02 6e 10 90 01 02 01 00 0c 01 21 13 6e 10 90 01 02 02 00 0a 04 34 30 54 00 22 00 90 01 02 70 20 90 01 02 10 00 11 00 22 04 90 01 02 70 10 90 01 02 04 00 6e 20 90 01 02 34 00 0c 03 71 10 90 01 02 01 00 0c 04 6e 20 90 01 02 43 00 0c 03 6e 10 90 01 02 03 00 0c 03 22 04 90 01 02 70 10 90 01 02 04 00 6e 20 90 01 02 24 00 0c 02 71 00 90 01 02 00 00 0b 04 13 06 0a 00 83 66 cd 64 8a 44 b7 14 6e 20 90 01 02 42 00 0c 02 6e 10 90 01 02 02 00 0c 02 d8 01 01 01 28 a8 90 00 } //01 00 
		$a_00_1 = {65 75 2f 63 68 61 69 6e 66 69 72 65 2f 6c 69 62 73 75 70 65 72 75 73 65 72 2f 53 68 65 6c 6c } //00 00  eu/chainfire/libsuperuser/Shell
	condition:
		any of ($a_*)
 
}