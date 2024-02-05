
rule Trojan_AndroidOS_FakeInstSms_H{
	meta:
		description = "Trojan:AndroidOS/FakeInstSms.H,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {2a 43 4e 54 5f 4e 41 4d 45 2a } //01 00 
		$a_00_1 = {67 65 74 55 52 4c 48 61 73 54 6f 42 65 41 63 74 65 64 } //01 00 
		$a_01_2 = {42 45 4c 4f 52 55 53 5f 49 44 } //01 00 
		$a_01_3 = {4b 45 59 5f 4e 4f 54 49 46 49 43 41 54 49 4f 4e 5f 4e 55 4d 42 45 52 } //00 00 
		$a_00_4 = {5d 04 00 } //00 b6 
	condition:
		any of ($a_*)
 
}