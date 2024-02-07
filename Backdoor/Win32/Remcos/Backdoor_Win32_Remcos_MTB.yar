
rule Backdoor_Win32_Remcos_MTB{
	meta:
		description = "Backdoor:Win32/Remcos!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {89 c8 41 f7 e3 c1 ea 02 83 e2 fc 8d 04 92 f7 d8 0f b6 04 06 46 30 87 90 01 04 47 75 e2 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Remcos_MTB_2{
	meta:
		description = "Backdoor:Win32/Remcos!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 10 00 00 01 00 "
		
	strings :
		$a_01_0 = {5b 00 45 00 4e 00 54 00 45 00 52 00 5d 00 } //01 00  [ENTER]
		$a_01_1 = {5b 00 42 00 4b 00 53 00 50 00 5d 00 } //01 00  [BKSP]
		$a_01_2 = {5b 00 43 00 54 00 52 00 4c 00 5d 00 } //01 00  [CTRL]
		$a_01_3 = {5b 00 43 00 41 00 50 00 53 00 5d 00 } //01 00  [CAPS]
		$a_01_4 = {5b 00 49 00 4e 00 53 00 45 00 52 00 54 00 5d 00 } //01 00  [INSERT]
		$a_01_5 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //01 00  SetWindowsHookExA
		$a_01_6 = {5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 5c 00 4c 00 6f 00 63 00 61 00 6c 00 20 00 53 00 74 00 61 00 74 00 65 00 } //01 00  \User Data\Local State
		$a_01_7 = {5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 5c 00 4c 00 6f 00 67 00 69 00 6e 00 20 00 44 00 61 00 74 00 61 00 } //01 00  \User Data\Default\Login Data
		$a_01_8 = {4e 53 53 42 61 73 65 36 34 5f 44 65 63 6f 64 65 42 75 66 66 65 72 } //01 00  NSSBase64_DecodeBuffer
		$a_01_9 = {50 4b 31 31 5f 43 68 65 63 6b 55 73 65 72 50 61 73 73 77 6f 72 64 } //01 00  PK11_CheckUserPassword
		$a_01_10 = {65 6e 63 72 79 70 74 65 64 55 73 65 72 6e 61 6d 65 } //01 00  encryptedUsername
		$a_01_11 = {65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 } //01 00  encryptedPassword
		$a_01_12 = {50 00 4f 00 50 00 33 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00  POP3 Password
		$a_01_13 = {53 00 4d 00 54 00 50 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00  SMTP Password
		$a_01_14 = {48 00 54 00 54 00 50 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00  HTTP Password
		$a_01_15 = {49 00 4d 00 41 00 50 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //00 00  IMAP Password
	condition:
		any of ($a_*)
 
}