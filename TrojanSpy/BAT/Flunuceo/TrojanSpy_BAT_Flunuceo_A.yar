
rule TrojanSpy_BAT_Flunuceo_A{
	meta:
		description = "TrojanSpy:BAT/Flunuceo.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 78 65 63 75 74 65 41 6e 64 53 65 6e 64 } //01 00  ExecuteAndSend
		$a_01_1 = {44 65 63 72 79 70 74 44 6f 6d 61 69 6e 73 } //01 00  DecryptDomains
		$a_01_2 = {43 68 65 63 6b 4b 65 79 5f 45 6c 61 70 73 65 64 } //01 00  CheckKey_Elapsed
		$a_01_3 = {43 61 70 74 75 72 65 53 63 72 65 65 6e } //01 00  CaptureScreen
		$a_01_4 = {53 65 6e 64 49 6d 61 67 65 } //01 00  SendImage
		$a_01_5 = {49 6e 66 65 63 74 69 6f 6e 50 61 74 68 } //01 00  InfectionPath
		$a_01_6 = {4b 69 6c 6c 50 72 6f 63 65 73 73 } //01 00  KillProcess
		$a_01_7 = {52 6f 6f 74 6b 69 74 } //01 00  Rootkit
		$a_01_8 = {67 65 74 47 6f 6f 67 6c 65 41 63 63 6f 75 6e 74 } //01 00  getGoogleAccount
		$a_01_9 = {67 65 74 4d 73 6e 54 61 6c 6b 73 } //00 00  getMsnTalks
		$a_00_10 = {5d 04 00 00 a2 } //20 03 
	condition:
		any of ($a_*)
 
}