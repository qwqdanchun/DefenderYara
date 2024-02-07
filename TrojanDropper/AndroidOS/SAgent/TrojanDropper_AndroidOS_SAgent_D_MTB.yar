
rule TrojanDropper_AndroidOS_SAgent_D_MTB{
	meta:
		description = "TrojanDropper:AndroidOS/SAgent.D!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 6f 61 64 44 65 78 } //01 00  loadDex
		$a_01_1 = {67 65 74 43 6c 61 73 73 4c 6f 61 64 65 72 } //01 00  getClassLoader
		$a_03_2 = {0c 11 08 00 11 00 6e 20 90 01 02 0d 00 0c 0c 71 10 90 01 02 0c 00 0c 11 74 01 90 01 02 11 00 0c 11 1a 12 90 01 02 74 02 90 01 02 11 00 0c 06 6e 10 90 01 02 06 00 0a 11 39 11 09 00 13 11 01 00 02 00 11 00 6e 20 90 01 02 06 00 90 00 } //01 00 
		$a_03_3 = {0b 0e 74 01 90 01 02 17 00 0c 11 74 01 90 01 02 11 00 0c 11 74 01 90 01 02 11 00 0c 11 77 01 90 01 02 11 00 0c 11 1f 11 90 01 02 1a 12 90 01 02 74 02 90 01 02 11 00 0c 0d 6e 10 90 01 02 0d 00 0a 11 39 11 09 00 13 11 01 00 02 00 11 00 6e 20 90 01 02 0d 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}