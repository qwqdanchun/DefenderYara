
rule TrojanSpy_AndroidOS_SmsThief_AG_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/SmsThief.AG!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {2f 73 6f 61 70 69 2f 67 65 74 6d 73 67 73 } //01 00 
		$a_00_1 = {4a 48 49 4e 4d 73 67 52 65 63 65 69 76 65 72 } //01 00 
		$a_00_2 = {73 74 61 72 74 47 65 74 4d 73 67 73 } //01 00 
		$a_00_3 = {49 6e 62 6f 78 54 6f 53 65 72 76 65 72 54 68 72 65 61 64 } //01 00 
		$a_00_4 = {73 65 6e 64 53 4d 53 32 4c 6f 6e 67 } //01 00 
		$a_00_5 = {53 4d 53 5f 43 48 41 4e 47 45 5f 53 45 52 56 45 52 } //00 00 
	condition:
		any of ($a_*)
 
}