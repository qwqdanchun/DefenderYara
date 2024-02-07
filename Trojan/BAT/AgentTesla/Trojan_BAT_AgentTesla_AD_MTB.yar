
rule Trojan_BAT_AgentTesla_AD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 03 00 "
		
	strings :
		$a_00_0 = {01 57 15 a2 0b 09 09 00 00 00 10 00 03 00 00 00 00 01 00 00 00 3e 00 00 00 0e 00 00 00 13 00 00 00 25 } //03 00 
		$a_00_1 = {6c 00 6f 00 61 00 64 00 65 00 72 00 2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 73 00 } //03 00  loader/uploads
		$a_01_2 = {53 65 72 76 69 63 65 50 6f 69 6e 74 4d 61 6e 61 67 65 72 } //03 00  ServicePointManager
		$a_01_3 = {53 79 73 74 65 6d 2e 4e 65 74 } //03 00  System.Net
		$a_01_4 = {73 65 74 5f 53 65 63 75 72 69 74 79 50 72 6f 74 6f 63 6f 6c } //03 00  set_SecurityProtocol
		$a_01_5 = {57 65 62 52 65 71 75 65 73 74 } //00 00  WebRequest
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_AD_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {67 65 74 5f 4f 66 66 73 65 74 4d 61 72 73 68 61 6c 65 72 00 67 65 74 5f 52 65 74 75 72 6e 4d 65 73 73 61 67 65 00 4f 66 66 73 65 74 4d 61 72 73 68 61 6c 65 72 00 52 65 74 75 72 6e 4d 65 73 73 61 67 65 } //01 00 
		$a_01_1 = {52 65 76 65 72 73 65 00 74 65 78 74 00 67 65 74 5f 41 6c 6c 6f 77 44 72 6f 70 00 73 65 74 5f 41 6c 6c 6f 77 44 72 6f 70 } //01 00  敒敶獲e整瑸最瑥䅟汬睯牄灯猀瑥䅟汬睯牄灯
		$a_01_2 = {43 72 65 61 74 65 44 69 72 65 63 74 6f 72 79 } //01 00  CreateDirectory
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_AD_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 04 00 "
		
	strings :
		$a_01_0 = {20 49 0c 00 00 95 e0 95 7e 33 00 00 04 20 a0 05 00 00 95 61 7e 33 00 00 04 20 03 02 00 00 95 2e 05 07 0b 17 2b 01 16 58 } //04 00 
		$a_01_1 = {19 9a 20 9e 08 00 00 95 2e 03 16 2b 01 17 17 59 7e 1d 00 00 04 19 9a 20 1c 03 00 00 95 5f 7e 1d 00 00 04 19 9a 20 e5 02 00 00 95 61 58 } //04 00 
		$a_01_2 = {19 9a 1f 13 95 e0 95 35 03 16 2b 01 17 17 59 7e 18 00 00 04 20 cb 0e 00 00 95 5f 7e 18 00 00 04 20 9a 01 00 00 95 61 58 } //04 00 
		$a_01_3 = {08 13 10 18 9a 11 10 0c 7e 28 01 00 04 20 5e 04 00 00 95 e0 95 7e 28 01 00 04 20 95 06 00 00 95 61 11 10 13 10 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_AD_MTB_4{
	meta:
		description = "Trojan:BAT/AgentTesla.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 03 00 "
		
	strings :
		$a_00_0 = {57 ff 03 3e 09 1f 00 00 00 00 00 00 00 00 00 00 01 00 00 00 38 01 00 00 32 01 00 00 bb 04 00 00 49 } //03 00 
		$a_81_1 = {53 79 73 74 65 6d 2e 53 65 63 75 72 69 74 79 2e 43 72 79 70 74 6f 67 72 61 70 68 79 2e 41 65 73 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //03 00  System.Security.Cryptography.AesCryptoServiceProvider
		$a_81_2 = {7b 31 31 31 31 31 2d 32 32 32 32 32 2d 31 30 30 30 39 2d 31 31 31 31 32 7d } //03 00  {11111-22222-10009-11112}
		$a_81_3 = {68 4f 4f 57 64 39 38 39 44 54 4f 48 46 45 4f 74 5a 72 2e 64 56 48 55 59 5a 6b 66 35 56 56 63 6e 48 43 34 63 50 } //03 00  hOOWd989DTOHFEOtZr.dVHUYZkf5VVcnHC4cP
		$a_81_4 = {7b 31 31 31 31 31 2d 32 32 32 32 32 2d 35 30 30 30 31 2d 30 30 30 30 30 7d } //03 00  {11111-22222-50001-00000}
		$a_81_5 = {47 65 74 44 65 6c 65 67 61 74 65 46 6f 72 46 75 6e 63 74 69 6f 6e 50 6f 69 6e 74 65 72 } //00 00  GetDelegateForFunctionPointer
	condition:
		any of ($a_*)
 
}