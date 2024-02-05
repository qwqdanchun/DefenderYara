
rule Trojan_BAT_Redline_GAC_MTB{
	meta:
		description = "Trojan:BAT/Redline.GAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 59 50 58 63 58 35 4f 56 62 57 45 62 61 37 54 33 48 52 } //01 00 
		$a_01_1 = {41 4f 58 67 76 62 35 75 6b 59 48 4d 4d 47 48 48 58 58 74 } //01 00 
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00 
	condition:
		any of ($a_*)
 
}