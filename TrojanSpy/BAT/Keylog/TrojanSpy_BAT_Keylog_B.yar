
rule TrojanSpy_BAT_Keylog_B{
	meta:
		description = "TrojanSpy:BAT/Keylog.B,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 05 00 "
		
	strings :
		$a_00_0 = {52 00 65 00 66 00 6c 00 65 00 63 00 74 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 } //0f 00 
		$a_01_1 = {4b 45 43 41 42 41 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanSpy_BAT_Keylog_B_2{
	meta:
		description = "TrojanSpy:BAT/Keylog.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 00 61 00 77 00 6b 00 45 00 79 00 65 00 20 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 2d 00 20 00 52 00 65 00 62 00 6f 00 72 00 6e 00 } //01 00 
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 70 00 6f 00 6d 00 66 00 2e 00 63 00 61 00 74 00 } //01 00 
		$a_01_2 = {52 00 65 00 62 00 6f 00 72 00 6e 00 20 00 53 00 74 00 75 00 62 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}