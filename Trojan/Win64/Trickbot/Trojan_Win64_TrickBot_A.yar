
rule Trojan_Win64_TrickBot_A{
	meta:
		description = "Trojan:Win64/TrickBot.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 31 00 30 00 34 00 2e 00 31 00 36 00 38 00 2e 00 39 00 38 00 2e 00 32 00 30 00 36 00 2f 00 90 02 20 2e 00 70 00 6e 00 67 00 90 00 } //01 00 
		$a_02_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 31 00 38 00 35 00 2e 00 31 00 38 00 33 00 2e 00 39 00 38 00 2e 00 32 00 33 00 32 00 2f 00 90 02 20 2e 00 70 00 6e 00 67 00 90 00 } //01 00 
		$a_02_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 31 00 39 00 38 00 2e 00 32 00 33 00 2e 00 32 00 35 00 32 00 2e 00 31 00 31 00 37 00 2f 00 90 02 20 2e 00 70 00 6e 00 67 00 90 00 } //01 00 
		$a_00_3 = {6c 69 62 67 63 6a 2d 31 36 2e 64 6c 6c } //00 00 
	condition:
		any of ($a_*)
 
}