
rule Trojan_BAT_AgentTesla_NIC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NIC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {70 0d 08 28 90 01 03 0a 72 6a 09 00 70 6f 90 01 03 0a 6f 90 01 03 0a 13 04 07 11 04 6f 90 01 03 0a 00 07 18 6f 90 01 03 0a 00 28 90 01 03 06 28 90 01 03 0a 13 05 28 90 01 03 0a 07 6f 90 01 03 0a 11 05 16 11 05 8e 69 6f 90 00 } //01 00 
		$a_01_1 = {39 66 65 65 36 39 37 31 2d 31 33 30 32 2d 34 62 35 38 2d 39 61 38 64 2d 61 32 66 36 64 31 36 62 65 63 61 38 } //01 00  9fee6971-1302-4b58-9a8d-a2f6d16beca8
		$a_01_2 = {4c 69 6e 6b 4d 61 6b 65 72 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  LinkMaker.Properties.Resources.resources
		$a_81_3 = {48 38 52 38 37 38 38 47 } //01 00  H8R8788G
		$a_01_4 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_01_5 = {52 43 32 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  RC2CryptoServiceProvider
		$a_01_6 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}