
rule PWS_BAT_Logbro_A{
	meta:
		description = "PWS:BAT/Logbro.A,SIGNATURE_TYPE_PEHSTR_EXT,22 00 22 00 0a 00 00 "
		
	strings :
		$a_00_0 = {7c 00 55 00 52 00 4c 00 7c 00 20 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 } //10 |URL| http://
		$a_00_1 = {7c 00 55 00 53 00 52 00 7c 00 } //10 |USR|
		$a_00_2 = {7c 00 50 00 57 00 44 00 7c 00 } //10 |PWD|
		$a_00_3 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 53 00 52 00 } //1 DisableSR
		$a_00_4 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 43 00 4d 00 44 00 } //1 DisableCMD
		$a_00_5 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 } //1 DisableTaskManager
		$a_01_6 = {6e 6a 4c 6f 67 67 65 72 } //1 njLogger
		$a_00_7 = {5b 00 45 00 4e 00 54 00 45 00 52 00 5d 00 } //1 [ENTER]
		$a_01_8 = {43 49 45 37 50 61 73 73 77 6f 72 64 73 } //1 CIE7Passwords
		$a_01_9 = {47 63 68 72 6f 6d 65 } //1 Gchrome
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_01_6  & 1)*1+(#a_00_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=34
 
}