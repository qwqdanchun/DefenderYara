
rule Ransom_MSIL_RyukCryptor_MTB{
	meta:
		description = "Ransom:MSIL/RyukCryptor!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 19 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 66 5f 61 6e 74 69 4c 65 61 6b 5f 53 65 72 76 65 72 } //01 00  cf_antiLeak_Server
		$a_01_1 = {63 66 5f 75 73 65 5f 66 61 6b 65 5f 75 73 65 72 } //01 00  cf_use_fake_user
		$a_01_2 = {63 66 5f 75 73 65 5f 66 61 6b 65 5f 70 61 73 73 } //01 00  cf_use_fake_pass
		$a_01_3 = {61 6c 6c 6f 77 46 69 72 65 77 61 6c 6c } //01 00  allowFirewall
		$a_01_4 = {44 45 4c 45 54 45 41 43 43 4f 55 4e 54 } //01 00  DELETEACCOUNT
		$a_01_5 = {43 48 45 43 4b 52 45 47 45 44 49 54 } //01 00  CHECKREGEDIT
		$a_01_6 = {41 44 44 41 43 4f 55 4e 54 } //01 00  ADDACOUNT
		$a_01_7 = {69 6e 69 74 5f 42 79 70 61 73 73 55 } //01 00  init_BypassU
		$a_01_8 = {50 41 47 45 5f 45 58 45 43 55 54 45 5f 52 45 41 44 57 52 49 54 45 } //01 00  PAGE_EXECUTE_READWRITE
		$a_01_9 = {57 4d 5f 4b 45 59 44 4f 57 4e } //01 00  WM_KEYDOWN
		$a_01_10 = {57 4d 5f 4b 45 59 55 50 } //01 00  WM_KEYUP
		$a_01_11 = {57 4d 5f 53 59 53 4b 45 59 44 4f 57 4e } //01 00  WM_SYSKEYDOWN
		$a_01_12 = {57 4d 5f 53 59 53 4b 45 59 55 50 } //01 00  WM_SYSKEYUP
		$a_01_13 = {6b 65 79 62 6f 61 72 64 48 6f 6f 6b 50 72 6f 63 } //01 00  keyboardHookProc
		$a_01_14 = {70 72 6d 5f 6b 65 79 } //01 00  prm_key
		$a_01_15 = {70 72 6d 5f 74 65 78 74 5f 74 6f 5f 64 65 63 72 79 70 74 } //01 00  prm_text_to_decrypt
		$a_01_16 = {44 6c 6c 49 6e 6a 65 63 74 69 6f 6e 52 65 73 75 6c 74 } //01 00  DllInjectionResult
		$a_01_17 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //01 00  CreateRemoteThread
		$a_01_18 = {6b 69 6c 6c 50 72 6f 63 65 73 73 } //01 00  killProcess
		$a_01_19 = {50 52 4f 43 45 53 53 5f 51 55 45 52 59 5f 49 4e 46 4f 52 4d 41 54 49 4f 4e } //01 00  PROCESS_QUERY_INFORMATION
		$a_01_20 = {50 52 4f 43 45 53 53 5f 56 4d 5f 52 45 41 44 } //01 00  PROCESS_VM_READ
		$a_01_21 = {50 52 4f 43 45 53 53 5f 42 41 53 49 43 5f 49 4e 46 4f 52 4d 41 54 49 4f 4e } //01 00  PROCESS_BASIC_INFORMATION
		$a_01_22 = {49 4e 54 45 52 4e 45 54 5f 4f 50 54 49 4f 4e 5f 53 45 54 54 49 4e 47 53 5f 43 48 41 4e 47 45 44 } //01 00  INTERNET_OPTION_SETTINGS_CHANGED
		$a_01_23 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 43 00 61 00 70 00 74 00 69 00 6f 00 6e 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 4f 00 70 00 65 00 72 00 61 00 74 00 69 00 6e 00 67 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //01 00  SELECT Caption FROM Win32_OperatingSystem
		$a_01_24 = {53 00 65 00 74 00 44 00 4e 00 53 00 53 00 65 00 72 00 76 00 65 00 72 00 53 00 65 00 61 00 72 00 63 00 68 00 4f 00 72 00 64 00 65 00 72 00 } //00 00  SetDNSServerSearchOrder
	condition:
		any of ($a_*)
 
}