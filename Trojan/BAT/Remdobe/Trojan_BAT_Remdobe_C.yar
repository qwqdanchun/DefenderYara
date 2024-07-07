
rule Trojan_BAT_Remdobe_C{
	meta:
		description = "Trojan:BAT/Remdobe.C,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {11 72 01 00 00 70 72 2b 00 00 70 28 90 04 01 03 14 15 16 00 00 06 90 03 02 02 0a 06 0b 07 28 90 00 } //1
		$a_03_1 = {13 04 12 04 20 00 01 00 00 28 12 00 00 06 28 90 01 01 00 00 0a 72 90 01 02 00 70 72 2b 00 00 70 28 90 04 01 03 14 15 16 00 00 06 28 90 01 01 00 00 0a 72 90 01 02 00 70 72 2b 00 00 70 28 90 04 01 03 14 15 16 00 00 06 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}