
rule HackTool_AndroidOS_Didat_A_MTB{
	meta:
		description = "HackTool:AndroidOS/Didat.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 4d 53 42 6f 6d 62 65 72 } //01 00  SMSBomber
		$a_00_1 = {53 4d 53 42 6f 6d 62 65 72 24 43 6f 6e 74 61 63 74 4c 69 73 74 } //01 00  SMSBomber$ContactList
		$a_00_2 = {70 69 63 6b 43 6f 6e 74 61 63 74 73 } //01 00  pickContacts
		$a_01_3 = {4d 45 53 53 41 47 45 5f 43 4f 55 4e 54 } //01 00  MESSAGE_COUNT
		$a_00_4 = {74 65 78 74 66 6c 6f 6f 64 65 72 } //01 00  textflooder
		$a_00_5 = {66 6f 72 63 65 5f 63 6c 6f 73 65 5f 6d 61 78 } //00 00  force_close_max
		$a_00_6 = {5d 04 00 00 82 } //93 04 
	condition:
		any of ($a_*)
 
}