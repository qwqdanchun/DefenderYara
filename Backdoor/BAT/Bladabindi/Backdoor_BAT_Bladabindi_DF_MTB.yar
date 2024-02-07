
rule Backdoor_BAT_Bladabindi_DF_MTB{
	meta:
		description = "Backdoor:BAT/Bladabindi.DF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 03 00 "
		
	strings :
		$a_81_0 = {45 73 79 79 62 66 73 66 7a 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //03 00  Esyybfsfz.Properties.Resources
		$a_81_1 = {6f 48 63 33 79 39 55 61 41 57 } //03 00  oHc3y9UaAW
		$a_81_2 = {4c 6f 67 6f 75 74 50 72 6f 70 65 72 74 79 } //03 00  LogoutProperty
		$a_81_3 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //03 00  DebuggerHiddenAttribute
		$a_81_4 = {4d 44 35 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //03 00  MD5CryptoServiceProvider
		$a_81_5 = {54 72 69 70 6c 65 44 45 53 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //03 00  TripleDESCryptoServiceProvider
		$a_81_6 = {73 65 74 5f 4b 65 79 } //00 00  set_Key
	condition:
		any of ($a_*)
 
}