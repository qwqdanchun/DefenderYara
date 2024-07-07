
rule Backdoor_BAT_Horsamaz_B{
	meta:
		description = "Backdoor:BAT/Horsamaz.B,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {4d 00 79 00 48 00 6f 00 72 00 73 00 65 00 49 00 73 00 41 00 6d 00 61 00 7a 00 69 00 6e 00 67 00 } //5 MyHorseIsAmazing
		$a_01_1 = {54 00 68 00 69 00 73 00 69 00 73 00 61 00 70 00 72 00 6f 00 62 00 6c 00 65 00 6d 00 66 00 6f 00 72 00 74 00 6f 00 72 00 76 00 61 00 } //5 Thisisaproblemfortorva
		$a_01_2 = {54 00 61 00 73 00 6b 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 20 00 6b 00 69 00 6c 00 6c 00 65 00 64 00 20 00 61 00 6e 00 64 00 20 00 72 00 65 00 2d 00 65 00 6e 00 61 00 62 00 6c 00 65 00 64 00 } //1 Task Manager killed and re-enabled
		$a_01_3 = {4c 00 6f 00 67 00 20 00 53 00 65 00 6e 00 74 00 2e 00 2e 00 2e 00 } //1 Log Sent...
		$a_01_4 = {53 00 63 00 72 00 65 00 65 00 6e 00 73 00 68 00 6f 00 74 00 20 00 73 00 65 00 6e 00 74 00 2e 00 2e 00 2e 00 } //1 Screenshot sent...
		$a_01_5 = {4b 00 45 00 59 00 4c 00 4f 00 47 00 47 00 45 00 52 00 } //1 KEYLOGGER
		$a_01_6 = {5b 00 4d 00 55 00 54 00 45 00 58 00 5d 00 } //1 [MUTEX]
		$a_01_7 = {55 00 6e 00 61 00 62 00 6c 00 65 00 20 00 74 00 6f 00 20 00 63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 20 00 74 00 6f 00 20 00 73 00 65 00 72 00 76 00 65 00 72 00 } //1 Unable to connect to server
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}