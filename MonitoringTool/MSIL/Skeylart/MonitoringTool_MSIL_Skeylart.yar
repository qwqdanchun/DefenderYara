
rule MonitoringTool_MSIL_Skeylart{
	meta:
		description = "MonitoringTool:MSIL/Skeylart,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 74 00 65 00 65 00 6c 00 20 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //01 00  Steel Keylogger
		$a_01_1 = {54 00 68 00 61 00 6e 00 6b 00 79 00 6f 00 75 00 20 00 4c 00 65 00 6f 00 6e 00 20 00 66 00 6f 00 72 00 20 00 74 00 65 00 73 00 74 00 69 00 6e 00 67 00 21 00 } //01 00  Thankyou Leon for testing!
		$a_01_2 = {54 00 68 00 65 00 20 00 74 00 69 00 74 00 6c 00 65 00 20 00 6f 00 66 00 20 00 74 00 68 00 65 00 20 00 66 00 61 00 6b 00 65 00 20 00 63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 69 00 6f 00 6e 00 20 00 73 00 68 00 6f 00 77 00 65 00 64 00 2e 00 20 00 4d 00 61 00 6b 00 65 00 20 00 69 00 74 00 20 00 61 00 73 00 20 00 72 00 65 00 61 00 6c 00 69 00 73 00 74 00 69 00 63 00 } //01 00  The title of the fake connection showed. Make it as realistic
		$a_01_3 = {53 00 74 00 61 00 72 00 74 00 73 00 20 00 75 00 70 00 20 00 74 00 68 00 65 00 20 00 6b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 77 00 68 00 65 00 6e 00 20 00 74 00 68 00 65 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 6c 00 6f 00 61 00 64 00 73 00 } //01 00  Starts up the keylogger when the computer loads
		$a_01_4 = {61 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 73 00 20 00 6f 00 6e 00 6c 00 79 00 2e 00 20 00 43 00 6c 00 6f 00 73 00 65 00 20 00 53 00 74 00 65 00 65 00 6c 00 2e 00 65 00 78 00 65 00 } //01 00  administrators only. Close Steel.exe
		$a_01_5 = {74 00 68 00 65 00 70 00 69 00 72 00 61 00 74 00 65 00 62 00 61 00 79 00 2e 00 6f 00 72 00 67 00 2f 00 75 00 73 00 65 00 72 00 2f 00 5f 00 53 00 6d 00 69 00 74 00 68 00 79 00 5f 00 } //00 00  thepiratebay.org/user/_Smithy_
	condition:
		any of ($a_*)
 
}