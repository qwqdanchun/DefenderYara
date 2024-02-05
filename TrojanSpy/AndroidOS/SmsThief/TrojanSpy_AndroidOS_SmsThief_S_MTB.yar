
rule TrojanSpy_AndroidOS_SmsThief_S_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/SmsThief.S!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {67 65 74 53 6d 73 49 6e 50 68 6f 6e 65 } //01 00 
		$a_00_1 = {73 65 74 5f 63 61 6c 6c 5f 72 65 63 6f 72 64 65 72 } //01 00 
		$a_00_2 = {67 65 74 5f 61 6c 6c 5f 63 61 6c 6c 73 5f 61 6e 64 5f 73 65 6e 64 } //01 00 
		$a_00_3 = {73 65 6e 64 5f 64 65 63 65 69 76 65 5f 73 6d 73 } //01 00 
		$a_00_4 = {65 78 65 63 52 6f 6f 74 43 6d 64 53 69 6c 65 6e 74 } //01 00 
		$a_00_5 = {52 65 63 5f 53 6d 73 } //00 00 
	condition:
		any of ($a_*)
 
}