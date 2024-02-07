
rule Ransom_MSIL_Cryptolocker_DS_MTB{
	meta:
		description = "Ransom:MSIL/Cryptolocker.DS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,4a 00 4a 00 0c 00 00 32 00 "
		
	strings :
		$a_81_0 = {42 61 72 61 46 75 63 6b 65 64 } //32 00  BaraFucked
		$a_81_1 = {56 32 2e 5f 30 2e 50 72 6f 70 65 72 74 69 65 73 } //32 00  V2._0.Properties
		$a_81_2 = {69 6e 73 61 6e 65 5f 75 72 69 65 6c 5f 62 79 5f 75 72 69 65 6c 73 74 6f 63 6b 5f 34 2e 6a 70 67 } //14 00  insane_uriel_by_urielstock_4.jpg
		$a_81_3 = {2e 6b 75 72 75 } //14 00  .kuru
		$a_81_4 = {2e 68 65 6e 72 79 32 31 37 } //14 00  .henry217
		$a_81_5 = {45 6e 63 72 79 70 74 6f 72 } //03 00  Encryptor
		$a_81_6 = {62 61 72 61 6b 75 72 75 6d 64 } //03 00  barakurumd
		$a_81_7 = {41 45 53 45 6e 63 72 79 70 74 } //03 00  AESEncrypt
		$a_81_8 = {65 6e 63 72 79 70 74 54 6f 45 6e 63 72 79 70 74 4c 69 73 74 } //01 00  encryptToEncryptList
		$a_81_9 = {64 65 73 6b 74 6f 70 2e 69 6e 69 } //01 00  desktop.ini
		$a_81_10 = {45 6e 63 72 79 70 74 42 79 74 65 } //01 00  EncryptByte
		$a_81_11 = {56 4d 20 44 65 74 65 63 74 65 64 } //00 00  VM Detected
	condition:
		any of ($a_*)
 
}