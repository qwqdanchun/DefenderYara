
rule Trojan_BAT_DCRat_EC_MTB{
	meta:
		description = "Trojan:BAT/DCRat.EC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 03 00 "
		
	strings :
		$a_81_0 = {53 79 73 74 65 6d 2e 53 65 63 75 72 69 74 79 2e 43 72 79 70 74 6f 67 72 61 70 68 79 2e 41 65 73 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //03 00  System.Security.Cryptography.AesCryptoServiceProvider
		$a_81_1 = {7b 31 31 31 31 31 2d 32 32 32 32 32 2d 31 30 30 30 39 2d 31 31 31 31 32 7d } //03 00  {11111-22222-10009-11112}
		$a_81_2 = {42 48 78 71 77 71 38 6f 79 75 31 32 56 68 79 70 57 53 2e 66 75 65 4f 66 79 6b 77 34 51 30 4a 78 4b 62 41 6b 31 } //03 00  BHxqwq8oyu12VhypWS.fueOfykw4Q0JxKbAk1
		$a_81_3 = {7b 31 31 31 31 31 2d 32 32 32 32 32 2d 35 30 30 30 31 2d 30 30 30 30 30 7d } //03 00  {11111-22222-50001-00000}
		$a_81_4 = {47 65 74 44 65 6c 65 67 61 74 65 46 6f 72 46 75 6e 63 74 69 6f 6e 50 6f 69 6e 74 65 72 } //03 00  GetDelegateForFunctionPointer
		$a_81_5 = {32 30 32 30 2e 34 2e 31 31 66 31 5f 66 62 66 33 36 37 61 63 31 34 65 39 } //00 00  2020.4.11f1_fbf367ac14e9
	condition:
		any of ($a_*)
 
}