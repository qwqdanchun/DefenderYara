
rule Trojan_BAT_Keylogger_PSSV_MTB{
	meta:
		description = "Trojan:BAT/Keylogger.PSSV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {11 21 07 16 12 0e 7b 21 00 00 04 28 90 01 01 00 00 0a 06 72 2f 0f 00 70 28 90 01 01 00 00 0a 07 6f 90 01 01 00 00 0a 28 90 01 01 00 00 0a 0a 06 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}