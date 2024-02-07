
rule TrojanSpy_BAT_Bobik_AB_MTB{
	meta:
		description = "TrojanSpy:BAT/Bobik.AB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {16 0b 2b 1d 06 02 07 6f 90 01 03 0a 03 61 d1 0c 12 02 28 90 01 03 0a 28 90 01 03 0a 0a 07 17 58 0b 07 02 6f 90 01 03 0a fe 04 0d 09 2d d6 90 00 } //01 00 
		$a_01_1 = {47 65 74 43 75 72 72 65 6e 74 44 69 72 65 63 74 6f 72 79 } //01 00  GetCurrentDirectory
		$a_01_2 = {47 65 74 46 69 6c 65 73 } //01 00  GetFiles
		$a_01_3 = {47 65 74 46 6c 61 67 } //01 00  GetFlag
		$a_01_4 = {54 00 73 00 27 00 6d 00 42 00 55 00 47 00 7a 00 55 00 73 00 6e 00 6b 00 27 00 6f 00 43 00 73 00 64 00 27 00 6a 00 64 00 73 00 7c 00 } //00 00  Ts'mBUGzUsnk'oCsd'jds|
	condition:
		any of ($a_*)
 
}