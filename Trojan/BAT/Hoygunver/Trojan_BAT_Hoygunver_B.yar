
rule Trojan_BAT_Hoygunver_B{
	meta:
		description = "Trojan:BAT/Hoygunver.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 69 6e 00 72 75 6e 00 67 6f 00 63 72 65 61 74 65 00 68 65 79 } //01 00 
		$a_01_1 = {72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  rsion\Run
		$a_03_2 = {7e 0c 00 00 0a 72 90 01 01 00 00 70 17 6f 0d 00 00 0a 02 7e 01 00 00 04 6f 0e 00 00 0a 2a 90 00 } //01 00 
		$a_03_3 = {28 0f 00 00 0a 72 90 01 01 00 00 70 28 10 00 00 0a 80 01 00 00 04 72 90 01 01 00 00 70 80 02 00 00 04 2a 90 00 } //00 00 
		$a_00_4 = {5d 04 00 } //00 cf 
	condition:
		any of ($a_*)
 
}