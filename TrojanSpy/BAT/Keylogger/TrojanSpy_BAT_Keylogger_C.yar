
rule TrojanSpy_BAT_Keylogger_C{
	meta:
		description = "TrojanSpy:BAT/Keylogger.C,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {67 65 74 5f 4b 65 79 62 6f 61 72 64 00 67 65 74 5f 43 74 72 6c 4b 65 79 44 6f 77 6e 00 67 65 74 5f 53 68 69 66 74 4b 65 79 44 6f 77 6e } //01 00 
		$a_01_1 = {50 00 6f 00 6c 00 79 00 6d 00 6f 00 72 00 70 00 68 00 69 00 63 00 20 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 68 00 61 00 73 00 20 00 62 00 65 00 65 00 6e 00 20 00 61 00 63 00 74 00 69 00 76 00 61 00 74 00 65 00 64 00 20 00 6f 00 6e 00 } //01 00  Polymorphic Keylogger has been activated on
		$a_01_2 = {62 00 79 00 20 00 43 00 6c 00 61 00 73 00 73 00 69 00 63 00 61 00 6c 00 20 00 61 00 74 00 20 00 48 00 61 00 63 00 6b 00 46 00 6f 00 72 00 75 00 6d 00 73 00 } //00 00  by Classical at HackForums
	condition:
		any of ($a_*)
 
}