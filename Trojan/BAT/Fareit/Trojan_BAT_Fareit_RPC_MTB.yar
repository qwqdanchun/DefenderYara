
rule Trojan_BAT_Fareit_RPC_MTB{
	meta:
		description = "Trojan:BAT/Fareit.RPC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {47 00 61 00 6d 00 65 00 57 00 61 00 72 00 64 00 65 00 6e 00 } //1 GameWarden
		$a_01_1 = {4a 00 56 00 4e 00 4a 00 41 00 41 00 41 00 44 00 41 00 41 00 41 00 41 00 41 00 42 00 41 00 41 00 41 00 41 00 41 00 50 00 37 00 37 00 59 00 41 00 41 00 43 00 34 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 43 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 } //1 JVNJAAADAAAAABAAAAAP77YAAC4AAAAAAAAAAACAAAAAAAAAAAAAAAAAAA
		$a_01_2 = {78 31 32 31 33 31 32 78 31 32 31 33 31 32 } //1 x121312x121312
		$a_01_3 = {5f 58 5f 58 5f 58 5f 58 5f 58 5f 58 5f 58 5f 58 5f 58 5f 58 5f 58 5f 58 5f 58 5f 58 5f 58 5f } //1 _X_X_X_X_X_X_X_X_X_X_X_X_X_X_X_
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}