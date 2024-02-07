
rule Backdoor_Win32_Fynloski_PA_MTB{
	meta:
		description = "Backdoor:Win32/Fynloski.PA!MTB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 44 50 46 6c 6f 6f 64 } //01 00  UDPFlood
		$a_01_1 = {53 79 6e 46 6c 6f 6f 64 } //01 00  SynFlood
		$a_01_2 = {48 54 54 50 46 6c 6f 6f 64 } //01 00  HTTPFlood
		$a_01_3 = {4b 65 79 6c 6f 67 67 65 72 } //01 00  Keylogger
		$a_01_4 = {52 6f 6f 74 4b 69 74 } //01 00  RootKit
		$a_01_5 = {55 6e 74 53 63 72 65 65 6e 43 61 70 74 75 72 65 } //00 00  UntScreenCapture
	condition:
		any of ($a_*)
 
}