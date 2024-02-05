
rule TrojanSpy_AndroidOS_GoneSixty_A{
	meta:
		description = "TrojanSpy:AndroidOS/GoneSixty.A,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 6f 6d 2e 67 6f 6e 65 36 30 2e 67 6f 6e 65 36 30 2e 72 65 66 72 65 73 68 } //01 00 
		$a_01_1 = {55 70 6c 6f 61 64 69 6e 67 20 74 6f 20 67 69 36 30 73 2e 63 6f 6d 2e 2e } //01 00 
		$a_01_2 = {4c 63 6f 6d 2f 67 6f 6e 65 36 30 2f 67 6f 6e 65 36 30 24 44 61 74 61 55 70 64 61 74 65 52 65 63 65 69 76 65 72 } //01 00 
		$a_01_3 = {61 6e 64 72 6f 69 64 2e 69 6e 74 65 6e 74 2e 61 63 74 69 6f 6e 2e 44 45 4c 45 54 45 } //01 00 
		$a_01_4 = {74 65 78 74 76 69 65 77 5f 63 6f 6e 74 61 63 74 73 } //00 00 
	condition:
		any of ($a_*)
 
}