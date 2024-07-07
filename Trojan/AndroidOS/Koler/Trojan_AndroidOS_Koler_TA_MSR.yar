
rule Trojan_AndroidOS_Koler_TA_MSR{
	meta:
		description = "Trojan:AndroidOS/Koler.TA!MSR,SIGNATURE_TYPE_DEXHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_02_0 = {22 00 33 00 1c 01 90 01 01 03 70 30 da 00 40 01 6e 20 d6 00 04 00 5b 34 90 01 01 06 22 01 33 00 1c 02 90 01 01 03 70 30 da 00 41 02 5b 31 90 01 01 06 1c 01 90 01 01 03 70 20 90 01 02 13 00 0a 01 39 01 07 00 54 31 87 06 6e 20 d6 00 14 00 6e 10 e0 00 05 00 0c 01 1a 02 06 0d 6e 20 90 01 02 21 00 0a 01 38 01 07 00 54 31 90 01 01 06 6e 20 90 01 02 41 00 0e 00 90 00 } //5
		$a_02_1 = {12 10 0f 00 90 0a 40 00 69 02 90 01 01 06 54 20 90 01 01 06 54 21 90 01 01 06 6e 30 90 01 02 02 01 22 00 90 01 02 70 20 90 01 02 20 00 5b 20 90 01 01 06 12 10 0f 00 90 00 } //5
	condition:
		((#a_02_0  & 1)*5+(#a_02_1  & 1)*5) >=10
 
}