
rule Trojan_BAT_Karxcue_A{
	meta:
		description = "Trojan:BAT/Karxcue.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 03 00 "
		
	strings :
		$a_02_0 = {2e 00 66 00 61 00 73 00 90 02 08 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 90 02 08 48 00 69 00 64 00 64 00 65 00 6e 00 90 00 } //02 00 
		$a_00_1 = {61 00 72 00 78 00 46 00 75 00 63 00 6b 00 65 00 72 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00 
		$a_00_2 = {46 00 75 00 63 00 6b 00 20 00 59 00 6f 00 75 00 21 00 } //01 00 
		$a_00_3 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 41 00 75 00 74 00 6f 00 64 00 65 00 73 00 6b 00 5c 00 41 00 75 00 74 00 6f 00 43 00 41 00 44 00 } //00 00 
	condition:
		any of ($a_*)
 
}