
rule Trojan_AndroidOS_Dougalek_B{
	meta:
		description = "Trojan:AndroidOS/Dougalek.B,SIGNATURE_TYPE_DEXHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {64 65 70 6f 74 2e 62 75 6c 6b 73 2e 6a 70 2f 67 65 74 } //01 00 
		$a_00_1 = {64 6f 75 67 61 } //00 00 
	condition:
		any of ($a_*)
 
}