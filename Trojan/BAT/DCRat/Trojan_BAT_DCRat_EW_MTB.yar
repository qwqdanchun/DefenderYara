
rule Trojan_BAT_DCRat_EW_MTB{
	meta:
		description = "Trojan:BAT/DCRat.EW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 03 00 "
		
	strings :
		$a_00_0 = {01 57 ff 03 3e 09 1f 00 00 00 00 00 00 00 00 00 00 01 00 00 00 38 01 00 00 32 01 00 00 bb 04 00 00 49 0f } //03 00 
		$a_81_1 = {78 35 45 30 61 77 62 69 74 45 71 6a 53 44 6d 67 44 58 2e 6f 4e 38 51 6c 73 76 75 34 33 50 56 43 71 4c 58 38 47 } //03 00  x5E0awbitEqjSDmgDX.oN8Qlsvu43PVCqLX8G
		$a_81_2 = {7b 31 31 31 31 31 2d 32 32 32 32 32 2d 35 30 30 30 31 2d 30 30 30 30 30 7d } //03 00  {11111-22222-50001-00000}
		$a_81_3 = {47 65 74 44 65 6c 65 67 61 74 65 46 6f 72 46 75 6e 63 74 69 6f 6e 50 6f 69 6e 74 65 72 } //03 00  GetDelegateForFunctionPointer
		$a_81_4 = {32 30 32 30 2e 34 2e 31 31 2e 31 36 35 31 31 38 34 37 } //03 00  2020.4.11.16511847
		$a_81_5 = {53 79 73 74 65 6d 2e 53 65 63 75 72 69 74 79 2e 43 72 79 70 74 6f 67 72 61 70 68 79 2e 41 65 73 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //00 00  System.Security.Cryptography.AesCryptoServiceProvider
	condition:
		any of ($a_*)
 
}