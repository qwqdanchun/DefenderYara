
rule Ransom_MSIL_Cryptolocker_DN_MTB{
	meta:
		description = "Ransom:MSIL/Cryptolocker.DN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,42 00 42 00 0c 00 00 32 00 "
		
	strings :
		$a_81_0 = {53 41 59 47 4f 4f 44 42 59 45 2e 65 78 65 } //32 00  SAYGOODBYE.exe
		$a_81_1 = {53 68 65 6c 6c 4c 6f 63 6b 65 72 } //32 00  ShellLocker
		$a_81_2 = {5f 5f 5f 52 45 43 4f 56 45 52 5f 5f 46 49 4c 45 53 5f 5f 2e 68 65 61 72 74 2e 74 78 74 } //0a 00  ___RECOVER__FILES__.heart.txt
		$a_81_3 = {59 4f 55 52 20 46 49 4c 45 53 20 48 41 56 45 20 42 45 45 4e 20 20 45 4e 43 52 59 50 54 45 44 } //0a 00  YOUR FILES HAVE BEEN  ENCRYPTED
		$a_81_4 = {2e 6b 61 6e 6d 61 6e 69 } //0a 00  .kanmani
		$a_81_5 = {5c 48 65 61 72 74 62 65 61 74 5c 6b 65 79 73 2e 6a 73 6f 6e } //05 00  \Heartbeat\keys.json
		$a_81_6 = {45 6e 63 72 79 70 74 46 69 6c 65 73 } //05 00  EncryptFiles
		$a_81_7 = {65 6e 63 72 79 70 74 46 69 6c 65 } //05 00  encryptFile
		$a_81_8 = {45 6e 63 72 79 70 74 65 64 20 46 69 6c 65 73 20 43 6f 75 6e 74 3a } //01 00  Encrypted Files Count:
		$a_81_9 = {42 6c 61 63 6b 20 43 61 74 } //01 00  Black Cat
		$a_81_10 = {63 72 79 70 74 31 35 } //01 00  crypt15
		$a_81_11 = {42 54 43 20 61 64 64 72 65 73 73 3a } //00 00  BTC address:
	condition:
		any of ($a_*)
 
}