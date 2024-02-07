
rule PWS_BAT_DarkStealer_AD_MTB{
	meta:
		description = "PWS:BAT/DarkStealer.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 72 00 65 00 64 00 65 00 6e 00 74 00 69 00 61 00 6c 00 } //01 00  credential
		$a_01_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 61 00 70 00 69 00 2e 00 74 00 65 00 6c 00 65 00 67 00 72 00 61 00 6d 00 2e 00 6f 00 72 00 67 00 2f 00 62 00 6f 00 74 00 25 00 74 00 65 00 6c 00 65 00 67 00 72 00 61 00 6d 00 61 00 70 00 69 00 25 00 2f 00 } //01 00  https://api.telegram.org/bot%telegramapi%/
		$a_01_2 = {25 00 63 00 68 00 61 00 74 00 69 00 64 00 25 00 } //01 00  %chatid%
		$a_01_3 = {6c 00 6f 00 67 00 69 00 6e 00 73 00 } //01 00  logins
		$a_01_4 = {48 00 54 00 54 00 50 00 2f 00 31 00 2e 00 31 00 } //01 00  HTTP/1.1
		$a_01_5 = {6f 00 6e 00 69 00 6f 00 6e 00 } //01 00  onion
		$a_01_6 = {74 00 6f 00 72 00 70 00 72 00 6f 00 6a 00 65 00 63 00 74 00 } //01 00  torproject
		$a_01_7 = {73 00 68 00 61 00 35 00 31 00 32 00 } //00 00  sha512
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_DarkStealer_AD_MTB_2{
	meta:
		description = "PWS:BAT/DarkStealer.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,ffffffd5 00 ffffffd5 00 1e 00 00 01 00 "
		
	strings :
		$a_01_0 = {67 65 74 5f 62 69 6e 64 69 6e 67 43 6f 6e 66 69 67 75 72 61 74 69 6f 6e 55 49 44 } //01 00  get_bindingConfigurationUID
		$a_01_1 = {73 65 74 5f 62 69 6e 64 69 6e 67 43 6f 6e 66 69 67 75 72 61 74 69 6f 6e 55 49 44 } //01 00  set_bindingConfigurationUID
		$a_01_2 = {67 65 74 5f 55 52 4c } //01 00  get_URL
		$a_01_3 = {73 65 74 5f 55 52 4c } //01 00  set_URL
		$a_01_4 = {67 65 74 5f 73 53 4c } //01 00  get_sSL
		$a_01_5 = {73 65 74 5f 73 53 4c } //01 00  set_sSL
		$a_01_6 = {67 65 74 5f 4c 61 73 74 41 63 63 65 73 73 65 64 } //01 00  get_LastAccessed
		$a_01_7 = {73 65 74 5f 4c 61 73 74 41 63 63 65 73 73 65 64 } //01 00  set_LastAccessed
		$a_01_8 = {67 65 74 5f 43 6c 69 70 62 6f 61 72 64 } //01 00  get_Clipboard
		$a_01_9 = {67 65 74 5f 4b 65 79 62 6f 61 72 64 } //01 00  get_Keyboard
		$a_01_10 = {67 65 74 5f 50 61 73 73 77 6f 72 64 } //01 00  get_Password
		$a_01_11 = {73 65 74 5f 50 61 73 73 77 6f 72 64 } //01 00  set_Password
		$a_01_12 = {67 65 74 5f 75 73 65 53 65 70 61 72 61 74 65 46 6f 6c 64 65 72 54 72 65 65 } //01 00  get_useSeparateFolderTree
		$a_01_13 = {73 65 74 5f 75 73 65 53 65 70 61 72 61 74 65 46 6f 6c 64 65 72 54 72 65 65 } //01 00  set_useSeparateFolderTree
		$a_01_14 = {53 65 6e 64 4d 65 73 73 61 67 65 } //01 00  SendMessage
		$a_01_15 = {4d 61 69 6c 4d 65 73 73 61 67 65 } //01 00  MailMessage
		$a_01_16 = {67 65 74 5f 73 65 63 75 72 69 74 79 50 72 6f 66 69 6c 65 } //01 00  get_securityProfile
		$a_01_17 = {73 65 74 5f 73 65 63 75 72 69 74 79 50 72 6f 66 69 6c 65 } //01 00  set_securityProfile
		$a_01_18 = {67 65 74 5f 43 72 65 64 65 6e 74 69 61 6c 73 } //01 00  get_Credentials
		$a_01_19 = {73 65 74 5f 43 72 65 64 65 6e 74 69 61 6c 73 } //01 00  set_Credentials
		$a_01_20 = {67 65 74 5f 44 65 66 61 75 6c 74 43 72 65 64 65 6e 74 69 61 6c 73 } //01 00  get_DefaultCredentials
		$a_01_21 = {73 65 74 5f 55 73 65 44 65 66 61 75 6c 74 43 72 65 64 65 6e 74 69 61 6c 73 } //01 00  set_UseDefaultCredentials
		$a_01_22 = {67 65 74 5f 49 6e 74 65 72 6e 61 6c 53 65 72 76 65 72 50 6f 72 74 } //01 00  get_InternalServerPort
		$a_01_23 = {73 65 74 5f 49 6e 74 65 72 6e 61 6c 53 65 72 76 65 72 50 6f 72 74 } //01 00  set_InternalServerPort
		$a_01_24 = {67 65 74 5f 47 75 69 64 4d 61 73 74 65 72 4b 65 79 } //01 00  get_GuidMasterKey
		$a_01_25 = {73 65 74 5f 47 75 69 64 4d 61 73 74 65 72 4b 65 79 } //32 00  set_GuidMasterKey
		$a_01_26 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //32 00  SetWindowsHookEx
		$a_01_27 = {49 43 72 65 64 65 6e 74 69 61 6c 73 42 79 48 6f 73 74 } //32 00  ICredentialsByHost
		$a_01_28 = {67 65 74 5f 54 6f 74 61 6c 50 68 79 73 69 63 61 6c 4d 65 6d 6f 72 79 } //32 00  get_TotalPhysicalMemory
		$a_01_29 = {73 65 74 5f 43 72 65 61 74 65 4e 6f 57 69 6e 64 6f 77 } //00 00  set_CreateNoWindow
	condition:
		any of ($a_*)
 
}