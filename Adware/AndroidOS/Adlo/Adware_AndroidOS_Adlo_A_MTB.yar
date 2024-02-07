
rule Adware_AndroidOS_Adlo_A_MTB{
	meta:
		description = "Adware:AndroidOS/Adlo.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,15 00 15 00 04 00 00 0a 00 "
		
	strings :
		$a_03_0 = {1c 00 00 00 6e 10 90 01 01 01 01 00 0a 00 23 00 90 01 01 00 6e 20 90 01 01 01 01 00 6e 10 90 01 01 01 01 00 71 10 90 01 01 01 00 00 0c 01 6e 20 90 01 01 01 12 00 6e 10 90 01 01 01 02 00 90 00 } //0a 00 
		$a_03_1 = {12 00 00 00 21 90 01 01 23 00 90 01 01 00 12 01 90 02 05 35 90 02 03 00 48 90 02 08 8d 90 01 01 4f 90 01 01 00 90 01 01 d8 90 02 03 01 90 00 } //01 00 
		$a_00_2 = {63 72 65 61 74 65 4e 65 77 46 69 6c 65 } //01 00  createNewFile
		$a_00_3 = {42 61 73 65 44 65 78 43 6c 61 73 73 4c 6f 61 64 65 72 } //00 00  BaseDexClassLoader
	condition:
		any of ($a_*)
 
}