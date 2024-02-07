
rule TrojanDropper_Win32_MessengerSkinner{
	meta:
		description = "TrojanDropper:Win32/MessengerSkinner,SIGNATURE_TYPE_PEHSTR,23 00 23 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //0a 00  InternetOpenUrlA
		$a_01_1 = {48 74 74 70 4f 70 65 6e 52 65 71 75 65 73 74 41 } //0a 00  HttpOpenRequestA
		$a_01_2 = {43 72 65 61 74 65 4d 75 74 65 78 41 } //02 00  CreateMutexA
		$a_01_3 = {6d 65 73 73 65 6e 67 65 72 73 6b 69 6e 6e 65 72 2e 63 6f 6d } //01 00  messengerskinner.com
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 4d 65 73 73 65 6e 67 65 72 53 6b 69 6e 6e 65 72 00 00 00 4d 65 73 73 65 6e 67 65 72 53 6b 69 6e 6e 65 72 } //01 00 
		$a_01_5 = {76 65 72 73 69 6f 6e 00 75 70 64 61 74 65 00 00 6d 61 69 6e 41 70 70 00 6d 65 73 73 65 6e 67 65 72 73 6b 69 6e 6e 65 72 } //01 00 
		$a_01_6 = {4d 65 73 73 65 6e 67 65 72 53 6b 69 6e 6e 65 72 20 63 6f 75 6c 64 20 6e 6f 74 20 73 74 61 72 74 } //01 00  MessengerSkinner could not start
		$a_01_7 = {55 73 65 72 64 61 74 61 5c 00 00 00 4d 65 73 73 65 6e 67 65 72 53 6b 69 6e 6e 65 72 5c } //01 00 
		$a_01_8 = {49 6e 69 74 69 61 6c 69 7a 65 44 6c 6c 46 72 6f 6d 45 78 65 00 00 00 00 4d 65 73 73 65 6e 67 65 72 53 6b 69 6e 6e 65 72 44 6c 6c 2e 64 6c 6c } //00 00 
	condition:
		any of ($a_*)
 
}