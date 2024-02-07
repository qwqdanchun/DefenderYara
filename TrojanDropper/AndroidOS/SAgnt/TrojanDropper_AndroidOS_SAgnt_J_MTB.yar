
rule TrojanDropper_AndroidOS_SAgnt_J_MTB{
	meta:
		description = "TrojanDropper:AndroidOS/SAgnt.J!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {06 01 05 34 62 0a 00 12 01 08 00 11 00 6e 40 90 01 02 40 51 01 21 28 ea dc 06 02 08 db 06 06 04 12 27 23 77 90 01 02 12 08 e0 09 0b 10 b6 a9 4b 09 07 08 12 18 e0 09 0d 10 b6 c9 4b 09 07 08 44 06 07 06 dc 07 02 04 e0 07 07 03 b9 76 8d 66 48 07 04 03 b7 76 8d 66 8d 66 8d 66 4f 06 04 03 d8 03 03 01 d8 02 02 01 28 cd 90 00 } //01 00 
		$a_03_1 = {0a 02 34 20 07 00 6e 10 90 01 02 01 00 0c 00 11 00 6e 20 90 01 02 05 00 0a 02 71 00 90 01 02 00 00 0c 03 71 00 90 01 02 00 00 12 04 49 03 03 04 b7 32 8e 22 6e 20 90 01 02 21 00 d8 00 00 01 28 e0 90 00 } //01 00 
		$a_01_2 = {67 65 74 43 6c 61 73 73 4c 6f 61 64 65 72 } //01 00  getClassLoader
		$a_01_3 = {64 65 6c 65 74 65 46 69 6c 65 } //01 00  deleteFile
		$a_01_4 = {67 65 74 41 73 73 65 74 73 } //00 00  getAssets
	condition:
		any of ($a_*)
 
}