
rule PWS_Win32_QQpass_CI{
	meta:
		description = "PWS:Win32/QQpass.CI,SIGNATURE_TYPE_PEHSTR_EXT,08 00 06 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {74 61 73 6b 6b 69 6c 6c 20 2f 69 6d 20 71 71 2e 65 78 65 } //02 00  taskkill /im qq.exe
		$a_01_1 = {50 57 44 48 41 53 48 3a } //01 00  PWDHASH:
		$a_01_2 = {61 75 74 6f 72 75 6e 2e 69 6e 66 } //01 00  autorun.inf
		$a_01_3 = {5c 51 51 5c 72 65 67 69 73 74 72 79 2e 64 62 } //01 00  \QQ\registry.db
		$a_01_4 = {61 63 63 6f 75 6e 74 2e 71 71 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 61 75 74 68 5f 66 6f 72 67 65 74 3f } //01 00  account.qq.com/cgi-bin/auth_forget?
		$a_01_5 = {69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e 5c 55 73 65 72 69 6e 69 74 } //00 00  ion\Winlogon\Userinit
	condition:
		any of ($a_*)
 
}