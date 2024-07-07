
rule Trojan_BAT_Webshell_RPZ_MTB{
	meta:
		description = "Trojan:BAT/Webshell.RPZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {49 00 49 00 73 00 57 00 65 00 62 00 56 00 69 00 72 00 74 00 75 00 61 00 6c 00 44 00 69 00 72 00 } //1 IIsWebVirtualDir
		$a_01_1 = {49 00 49 00 53 00 3a 00 2f 00 2f 00 6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 2f 00 57 00 33 00 53 00 56 00 43 00 } //1 IIS://localhost/W3SVC
		$a_01_2 = {50 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 4b 00 69 00 6c 00 6c 00 20 00 53 00 75 00 63 00 63 00 65 00 73 00 73 00 } //1 Process Kill Success
		$a_01_3 = {72 00 30 00 30 00 74 00 73 00 20 00 54 00 65 00 61 00 6d 00 20 00 57 00 65 00 62 00 53 00 68 00 65 00 6c 00 6c 00 } //1 r00ts Team WebShell
		$a_01_4 = {48 00 65 00 6c 00 6c 00 6f 00 21 00 20 00 48 00 61 00 63 00 6b 00 2e 00 20 00 20 00 42 00 79 00 20 00 46 00 61 00 6b 00 65 00 72 00 } //1 Hello! Hack.  By Faker
		$a_01_5 = {42 00 69 00 6e 00 5f 00 42 00 75 00 74 00 74 00 6f 00 6e 00 5f 00 4b 00 69 00 6c 00 6c 00 4d 00 65 00 } //1 Bin_Button_KillMe
		$a_01_6 = {41 00 64 00 64 00 20 00 78 00 70 00 5f 00 63 00 6d 00 64 00 73 00 68 00 65 00 6c 00 6c 00 } //1 Add xp_cmdshell
		$a_01_7 = {74 00 6f 00 6f 00 6c 00 73 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2e 00 61 00 73 00 68 00 78 00 } //1 tools/download.ashx
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}