
rule Trojan_Win32_MatxLogger_B_{
	meta:
		description = "Trojan:Win32/MatxLogger.B!!MatxLogger.gen!MTB,SIGNATURE_TYPE_ARHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_81_0 = {52 65 63 6f 76 65 72 65 64 20 53 63 72 65 65 6e 73 68 6f 74 20 4c 6f 67 67 65 72 } //01 00  Recovered Screenshot Logger
		$a_81_1 = {52 65 63 6f 76 65 72 65 64 20 6b 65 79 73 74 72 6f 6b 65 73 } //01 00  Recovered keystrokes
		$a_81_2 = {52 65 63 6f 76 65 72 65 64 20 56 6f 69 63 65 20 4c 6f 67 67 65 72 } //01 00  Recovered Voice Logger
		$a_81_3 = {52 65 63 6f 76 65 72 65 64 20 43 6c 69 70 62 6f 61 72 64 20 4c 6f 67 67 65 72 } //01 00  Recovered Clipboard Logger
		$a_81_4 = {52 65 63 6f 76 65 72 65 64 20 50 61 73 73 77 6f 72 64 73 } //01 00  Recovered Passwords
		$a_81_5 = {4d 61 74 69 65 78 } //00 00  Matiex
	condition:
		any of ($a_*)
 
}