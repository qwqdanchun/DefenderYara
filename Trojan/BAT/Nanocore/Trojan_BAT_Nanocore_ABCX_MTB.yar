
rule Trojan_BAT_Nanocore_ABCX_MTB{
	meta:
		description = "Trojan:BAT/Nanocore.ABCX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //02 00 
		$a_01_2 = {66 00 62 00 47 00 38 00 68 00 4a 00 57 00 67 00 55 00 70 00 58 00 5a 00 53 00 53 00 5a 00 75 00 44 00 65 00 2e 00 4d 00 46 00 51 00 32 00 30 00 42 00 36 00 50 00 43 00 69 00 65 00 67 00 62 00 44 00 55 00 55 00 67 00 6e 00 } //02 00 
		$a_01_3 = {53 00 61 00 76 00 61 00 6e 00 6e 00 61 00 68 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //02 00 
		$a_01_4 = {53 00 61 00 76 00 61 00 6e 00 6e 00 61 00 68 00 } //02 00 
		$a_01_5 = {50 00 35 00 33 00 59 00 53 00 43 00 59 00 52 00 42 00 56 00 48 00 48 00 55 00 50 00 38 00 47 00 34 00 37 00 42 00 37 00 35 00 59 00 } //00 00 
	condition:
		any of ($a_*)
 
}