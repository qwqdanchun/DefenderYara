
rule Trojan_AndroidOS_SmsThief_X{
	meta:
		description = "Trojan:AndroidOS/SmsThief.X,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {4b 45 59 5f 4c 41 53 54 5f 52 45 41 44 5f 53 4d 53 5f 49 44 } //02 00 
		$a_01_1 = {72 65 61 64 43 6f 6e 74 61 63 74 73 53 6d 73 } //02 00 
		$a_01_2 = {2f 69 6e 64 65 78 2e 70 68 70 2f 69 6e 64 65 78 2f 73 6d 73 2f 73 61 76 65 73 6d 73 } //00 00 
	condition:
		any of ($a_*)
 
}