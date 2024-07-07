
rule Trojan_BAT_AsyncRAT_AR_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {06 1d 20 31 01 00 00 9d 06 1c 20 f5 26 00 00 9d 06 19 20 b8 38 00 00 9d 06 17 20 6b 19 00 00 9d 06 16 20 b9 03 00 00 9d } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_AsyncRAT_AR_MTB_2{
	meta:
		description = "Trojan:BAT/AsyncRAT.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_01_0 = {57 bd a2 3f 09 1f 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 62 00 00 00 1f 00 00 00 39 00 00 00 dd } //2
		$a_01_1 = {53 79 6d 6d 65 74 72 69 63 41 6c 67 6f 72 69 74 68 6d } //1 SymmetricAlgorithm
		$a_01_2 = {4d 44 35 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //1 MD5CryptoServiceProvider
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}