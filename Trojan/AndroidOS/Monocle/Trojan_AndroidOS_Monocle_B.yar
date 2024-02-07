
rule Trojan_AndroidOS_Monocle_B{
	meta:
		description = "Trojan:AndroidOS/Monocle.B,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {67 65 74 55 73 65 72 44 69 63 74 4c 69 73 74 } //01 00  getUserDictList
		$a_00_1 = {67 65 74 4b 65 79 4c 6f 67 67 69 6e 67 } //01 00  getKeyLogging
		$a_00_2 = {47 65 74 49 6e 74 65 72 66 61 63 65 73 53 74 61 74 65 73 } //01 00  GetInterfacesStates
		$a_00_3 = {43 68 61 6e 67 65 43 61 6c 6c 52 65 63 6f 72 64 4d 6f 64 65 } //00 00  ChangeCallRecordMode
		$a_00_4 = {5d 04 00 } //00 c7 
	condition:
		any of ($a_*)
 
}