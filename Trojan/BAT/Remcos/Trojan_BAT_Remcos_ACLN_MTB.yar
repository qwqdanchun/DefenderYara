
rule Trojan_BAT_Remcos_ACLN_MTB{
	meta:
		description = "Trojan:BAT/Remcos.ACLN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {20 00 01 00 00 6f 90 01 03 0a 00 09 20 80 00 00 00 6f 90 01 03 0a 00 28 90 01 03 0a 03 6f 90 01 03 0a 13 04 03 07 20 e8 03 00 00 73 27 00 00 0a 13 05 09 11 05 09 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 00 09 11 05 09 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 00 09 17 6f 90 01 03 0a 00 08 09 6f 90 00 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_2 = {68 00 65 00 79 00 73 00 2e 00 68 00 65 00 79 00 73 00 } //01 00  heys.heys
		$a_01_3 = {48 00 45 00 59 00 53 00 46 00 53 00 41 00 57 00 } //00 00  HEYSFSAW
	condition:
		any of ($a_*)
 
}