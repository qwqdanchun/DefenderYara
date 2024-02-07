
rule TrojanDropper_AndroidOS_SAgent_CA_MTB{
	meta:
		description = "TrojanDropper:AndroidOS/SAgent.CA!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,08 00 08 00 06 00 00 05 00 "
		
	strings :
		$a_03_0 = {21 30 23 00 90 01 02 12 01 21 32 35 21 0c 00 48 02 03 01 df 02 02 90 01 01 8d 22 4f 02 00 01 d8 01 01 01 28 f4 90 00 } //01 00 
		$a_01_1 = {61 73 73 65 74 5f 6e 61 6d 65 } //01 00  asset_name
		$a_01_2 = {64 65 78 5f 6e 61 6d 65 } //01 00  dex_name
		$a_01_3 = {73 74 61 72 74 44 65 6c 61 79 65 64 4f 70 65 6e 41 64 54 69 6d 65 72 } //01 00  startDelayedOpenAdTimer
		$a_01_4 = {67 65 74 44 65 78 43 6c 61 73 73 6c 6f 61 64 65 72 } //01 00  getDexClassloader
		$a_01_5 = {67 65 74 41 73 73 65 74 73 } //00 00  getAssets
	condition:
		any of ($a_*)
 
}