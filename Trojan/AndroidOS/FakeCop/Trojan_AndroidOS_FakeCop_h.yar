
rule Trojan_AndroidOS_FakeCop_h{
	meta:
		description = "Trojan:AndroidOS/FakeCop.h,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 4d 53 e6 94 b6 4e 4f 57 } //01 00 
		$a_00_1 = {63 6c 69 65 6e 74 20 72 65 63 65 69 76 65 64 2e 2e 2e 2e } //01 00  client received....
		$a_00_2 = {55 5f 53 45 4e 44 5f 4c 49 53 54 } //01 00  U_SEND_LIST
		$a_00_3 = {55 5f 53 45 4e 44 5f 43 4f 4d 50 4c 45 54 45 44 } //00 00  U_SEND_COMPLETED
		$a_00_4 = {5d 04 00 } //00 29 
	condition:
		any of ($a_*)
 
}