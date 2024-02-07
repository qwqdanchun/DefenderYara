
rule Trojan_BAT_RedLineStealer_MX_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.MX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_03_0 = {11 05 02 7b 90 01 03 04 8e 69 1e d8 6f 90 01 03 0a 00 11 05 02 7b 90 01 03 04 6f 90 01 03 0a 00 11 05 02 7b 90 01 03 04 8e 69 1e d8 6f 90 01 03 0a 00 11 05 02 7b 90 01 03 04 6f 90 01 03 0a 00 11 05 6f 90 01 03 0a 13 06 00 03 73 90 01 03 0a 13 07 00 11 07 11 06 16 73 90 01 03 0a 13 08 00 03 8e 69 17 da 17 d6 17 da 17 d6 8d 90 01 01 00 00 01 13 09 11 08 11 09 16 03 8e 69 6f 90 01 03 0a 13 0a 11 09 11 0a 28 90 01 03 2b 28 90 01 03 2b 13 04 00 de 90 00 } //01 00 
		$a_81_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_81_2 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //01 00  CreateEncryptor
		$a_81_3 = {63 69 70 68 65 72 } //01 00  cipher
		$a_81_4 = {67 65 74 5f 45 6d 61 69 6c } //01 00  get_Email
		$a_81_5 = {67 65 74 5f 55 73 65 72 54 79 70 65 } //01 00  get_UserType
		$a_81_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_7 = {67 65 74 5f 4b 65 79 } //01 00  get_Key
		$a_81_8 = {46 72 6f 6d 42 61 73 65 36 34 } //01 00  FromBase64
		$a_81_9 = {49 6e 76 6f 6b 65 } //00 00  Invoke
	condition:
		any of ($a_*)
 
}