
rule Trojan_BAT_CryptInject_AY_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.AY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {11 06 02 16 02 8e 69 6f 40 00 00 0a 00 11 06 6f 41 00 00 0a 00 00 de 0d 11 06 2c 08 11 06 } //01 00 
		$a_01_1 = {61 00 66 00 61 00 73 00 66 00 73 00 61 00 66 00 73 00 61 00 66 00 73 00 61 00 66 00 73 00 61 00 66 00 61 00 73 00 41 00 46 00 53 00 41 00 46 00 } //01 00  afasfsafsafsafsafasAFSAF
		$a_01_2 = {24 36 36 33 39 61 63 63 39 2d 30 66 66 61 2d 34 36 36 34 2d 39 62 64 62 2d 61 62 63 34 35 33 66 32 62 65 37 31 } //01 00  $6639acc9-0ffa-4664-9bdb-abc453f2be71
		$a_01_3 = {66 00 73 00 61 00 66 00 73 00 61 00 66 00 73 00 61 00 66 00 61 00 73 00 } //01 00  fsafsafsafas
		$a_01_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_5 = {47 65 74 42 79 74 65 73 } //00 00  GetBytes
	condition:
		any of ($a_*)
 
}