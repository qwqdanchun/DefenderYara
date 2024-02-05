
rule TrojanSpy_AndroidOS_SmsThief_AC{
	meta:
		description = "TrojanSpy:AndroidOS/SmsThief.AC,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {65 78 74 72 61 63 74 4d 65 73 73 61 67 65 73 } //01 00 
		$a_01_1 = {44 61 74 61 52 65 71 75 65 73 74 28 73 65 6e 64 65 72 5f 6e 6f 3d } //01 00 
		$a_00_2 = {67 65 74 6d 6f 62 69 6c 6e 6f } //01 00 
		$a_00_3 = {39 31 31 38 39 31 39 36 37 38 } //01 00 
		$a_01_4 = {63 6f 6d 2f 68 65 6c 70 64 65 76 2f 6b 79 63 66 6f 72 6d } //00 00 
	condition:
		any of ($a_*)
 
}