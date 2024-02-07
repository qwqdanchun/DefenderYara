
rule MonitoringTool_AndroidOS_Ceshark_A_MTB{
	meta:
		description = "MonitoringTool:AndroidOS/Ceshark.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 65 6c 6c 53 68 61 72 6b 43 6f 6e 74 61 63 74 73 } //01 00  CellSharkContacts
		$a_01_1 = {50 55 53 48 5f 43 4f 4e 54 41 43 54 53 } //01 00  PUSH_CONTACTS
		$a_00_2 = {74 6f 53 68 61 72 6b 6e 65 74 } //01 00  toSharknet
		$a_00_3 = {53 65 74 74 69 6e 67 20 63 65 6c 6c 20 73 68 61 72 6b 20 74 6f 20 6f 70 65 72 61 74 69 6f 6e 61 6c 20 6d 6f 64 65 } //01 00  Setting cell shark to operational mode
		$a_00_4 = {52 65 67 69 73 74 65 72 69 6e 67 20 53 4d 53 20 6f 62 73 65 72 76 65 72 } //00 00  Registering SMS observer
		$a_00_5 = {5d 04 00 00 } //78 94 
	condition:
		any of ($a_*)
 
}