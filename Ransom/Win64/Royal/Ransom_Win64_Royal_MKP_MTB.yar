
rule Ransom_Win64_Royal_MKP_MTB{
	meta:
		description = "Ransom:Win64/Royal.MKP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0c 00 00 0b 00 "
		
	strings :
		$a_01_0 = {48 8d 44 24 78 89 5c 24 70 48 89 44 24 30 4c 8d 44 24 68 48 8d 44 24 7c 89 5c 24 7c 48 89 44 24 28 48 8d 4d 90 48 8d 44 24 70 89 5c 24 78 41 b9 90 01 04 48 89 44 24 20 ba 90 01 04 48 89 5c 24 68 90 00 } //01 00 
		$a_81_1 = {45 4e 43 52 59 50 54 45 44 } //01 00  ENCRYPTED
		$a_81_2 = {52 45 41 44 4d 45 2e 54 58 54 } //01 00  README.TXT
		$a_81_3 = {74 6f 72 20 62 72 6f 77 73 65 72 } //01 00  tor browser
		$a_81_4 = {2e 72 6f 79 61 6c } //01 00  .royal
		$a_81_5 = {6d 6f 7a 69 6c 6c 61 } //01 00  mozilla
		$a_81_6 = {45 4e 43 52 59 50 54 45 44 20 50 52 49 56 41 54 45 20 4b 45 59 } //01 00  ENCRYPTED PRIVATE KEY
		$a_81_7 = {44 65 63 72 79 70 74 69 6e 67 20 2d 20 25 73 } //01 00  Decrypting - %s
		$a_81_8 = {75 6e 63 6f 6d 70 72 65 73 73 65 64 } //01 00  uncompressed
		$a_81_9 = {6c 6f 61 64 5f 69 76 } //01 00  load_iv
		$a_81_10 = {45 4e 44 20 52 53 41 20 50 52 49 56 41 54 45 20 4b 45 59 } //01 00  END RSA PRIVATE KEY
		$a_81_11 = {42 45 47 49 4e 20 52 53 41 20 50 52 49 56 41 54 45 20 4b 45 59 } //00 00  BEGIN RSA PRIVATE KEY
	condition:
		any of ($a_*)
 
}