
rule Trojan_BAT_Disabler_EM_MTB{
	meta:
		description = "Trojan:BAT/Disabler.EM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {d9 a7 b0 23 9f 53 30 78 46 bf c0 f9 50 ec b8 95 a3 a6 8e 60 1b d2 e0 07 86 3b a6 27 78 95 4b 87 } //01 00 
		$a_01_1 = {48 65 61 6c 65 72 2e 70 64 62 } //01 00  Healer.pdb
		$a_01_2 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //01 00  CreateEncryptor
		$a_01_3 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  ToBase64String
		$a_01_4 = {41 65 73 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  AesCryptoServiceProvider
		$a_01_5 = {52 53 41 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //00 00  RSACryptoServiceProvider
	condition:
		any of ($a_*)
 
}