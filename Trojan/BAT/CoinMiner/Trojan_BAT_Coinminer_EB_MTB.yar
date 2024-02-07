
rule Trojan_BAT_Coinminer_EB_MTB{
	meta:
		description = "Trojan:BAT/Coinminer.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 2e 00 43 00 72 00 79 00 70 00 74 00 6f 00 67 00 72 00 61 00 70 00 68 00 79 00 2e 00 41 00 65 00 73 00 43 00 72 00 79 00 70 00 74 00 6f 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 50 00 72 00 6f 00 76 00 69 00 64 00 65 00 72 00 } //01 00  System.Security.Cryptography.AesCryptoServiceProvider
		$a_01_1 = {34 00 6a 00 51 00 46 00 50 00 54 00 4a 00 66 00 4e 00 4d 00 42 00 55 00 6b 00 4e 00 79 00 47 00 61 00 39 00 2e 00 48 00 37 00 4e 00 37 00 34 00 78 00 31 00 4d 00 63 00 30 00 79 00 75 00 43 00 35 00 44 00 4a 00 66 00 53 00 } //01 00  4jQFPTJfNMBUkNyGa9.H7N74x1Mc0yuC5DJfS
		$a_01_2 = {4a 00 73 00 31 00 71 00 30 00 51 00 6c 00 30 00 5a 00 73 00 35 00 70 00 78 00 6f 00 5a 00 55 00 54 00 48 00 2e 00 64 00 39 00 65 00 5a 00 4b 00 57 00 39 00 53 00 65 00 64 00 32 00 6b 00 45 00 4f 00 63 00 64 00 36 00 46 00 } //01 00  Js1q0Ql0Zs5pxoZUTH.d9eZKW9Sed2kEOcd6F
		$a_01_3 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 30 00 7d 00 } //01 00  {11111-22222-50001-00000}
		$a_01_4 = {47 00 65 00 74 00 44 00 65 00 6c 00 65 00 67 00 61 00 74 00 65 00 46 00 6f 00 72 00 46 00 75 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 69 00 6e 00 74 00 65 00 72 00 } //01 00  GetDelegateForFunctionPointer
		$a_01_5 = {51 00 38 00 67 00 6d 00 74 00 56 00 6f 00 67 00 30 00 45 00 41 00 53 00 66 00 4e 00 34 00 68 00 44 00 36 00 2e 00 4e 00 48 00 69 00 33 00 58 00 6a 00 76 00 59 00 4a 00 41 00 67 00 6e 00 30 00 39 00 49 00 56 00 75 00 71 00 } //00 00  Q8gmtVog0EASfN4hD6.NHi3XjvYJAgn09IVuq
	condition:
		any of ($a_*)
 
}