
rule TrojanSpy_AndroidOS_MobaileSpy_A_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/MobaileSpy.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 6f 6d 2e 73 61 73 61 2e 73 70 79 } //01 00 
		$a_03_1 = {6b 73 61 2d 73 65 66 2e 63 6f 6d 2f 48 61 63 6b 90 02 05 4d 6f 62 61 69 6c 65 90 00 } //01 00 
		$a_01_2 = {75 73 65 72 53 4d 53 } //01 00 
		$a_01_3 = {75 73 65 72 43 6f 6e 74 61 63 74 73 } //01 00 
		$a_01_4 = {75 73 65 72 63 61 6c 6c 6c 6f 67 } //01 00 
		$a_01_5 = {2f 41 64 64 41 6c 6c 4c 6f 67 43 61 6c 6c 2e 70 68 70 } //00 00 
	condition:
		any of ($a_*)
 
}