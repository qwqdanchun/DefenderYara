
rule Ransom_MSIL_SerpenCrypt_A_rsm{
	meta:
		description = "Ransom:MSIL/SerpenCrypt.A!rsm,SIGNATURE_TYPE_PEHSTR,05 00 05 00 1a 00 00 01 00 "
		
	strings :
		$a_01_0 = {59 6f 75 72 20 64 6f 63 75 6d 65 6e 74 73 2c 20 70 68 6f 74 6f 73 2c 20 76 69 64 65 6f 73 2c 20 64 61 74 61 62 61 73 65 73 20 61 6e 64 20 6f 74 68 65 72 20 69 6d 70 6f 72 74 61 6e 74 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 21 } //01 00  Your documents, photos, videos, databases and other important files have been encrypted!
		$a_01_1 = {54 68 65 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 20 75 73 69 6e 67 20 41 45 53 32 35 36 20 61 6e 64 20 52 53 41 32 30 34 38 20 65 6e 63 72 79 70 74 69 6f 6e 20 28 75 6e 62 72 65 61 6b 61 62 6c 65 29 } //01 00  The files have been encrypted using AES256 and RSA2048 encryption (unbreakable)
		$a_01_2 = {54 6f 20 64 65 63 72 79 70 74 20 79 6f 75 72 20 66 69 6c 65 73 20 79 6f 75 20 6e 65 65 64 20 74 6f 20 62 75 79 20 74 68 65 20 73 70 65 63 69 61 6c 20 73 6f 66 74 77 61 72 65 20 27 53 65 72 70 65 6e 74 20 44 65 63 72 79 70 74 65 72 27 2e } //01 00  To decrypt your files you need to buy the special software 'Serpent Decrypter'.
		$a_01_3 = {3c 61 20 68 72 65 66 3d 22 5b 70 61 79 6d 65 6e 74 64 6f 6d 61 69 6e 30 5d 2f 5b 68 77 69 64 5d 22 20 74 61 72 67 65 74 3d 22 5f 42 4c 41 4e 4b 22 3e 5b 70 61 79 6d 65 6e 74 64 6f 6d 61 69 6e 30 5d 2f 5b 68 77 69 64 5d 3c 2f 61 3e } //01 00  <a href="[paymentdomain0]/[hwid]" target="_BLANK">[paymentdomain0]/[hwid]</a>
		$a_01_4 = {3c 61 20 68 72 65 66 3d 22 5b 70 61 79 6d 65 6e 74 64 6f 6d 61 69 6e 31 5d 2f 5b 68 77 69 64 5d 22 20 74 61 72 67 65 74 3d 22 5f 42 4c 41 4e 4b 22 3e 5b 70 61 79 6d 65 6e 74 64 6f 6d 61 69 6e 31 5d 2f 5b 68 77 69 64 5d 3c 2f 61 3e } //01 00  <a href="[paymentdomain1]/[hwid]" target="_BLANK">[paymentdomain1]/[hwid]</a>
		$a_01_5 = {46 6f 6c 6c 6f 77 20 74 68 65 20 69 6e 73 74 72 75 63 74 69 6f 6e 73 20 74 6f 20 62 75 79 20 27 53 65 72 70 65 6e 74 20 44 65 63 72 79 70 74 65 72 27 } //01 00  Follow the instructions to buy 'Serpent Decrypter'
		$a_01_6 = {5b 70 61 79 6d 65 6e 74 64 6f 6d 61 69 6e 30 5d 2f 5b 68 77 69 64 5d 0d 0a 5b 70 61 79 6d 65 6e 74 64 6f 6d 61 69 6e 31 5d 2f 5b 68 77 69 64 5d } //01 00  灛祡敭瑮潤慭湩崰嬯睨摩൝嬊慰浹湥摴浯楡ㅮ⽝桛楷嵤
		$a_01_7 = {3d 3d 20 50 4c 45 41 53 45 20 52 45 41 44 20 54 48 49 53 20 4d 45 53 53 41 47 45 20 43 41 52 45 46 55 4c 4c 59 20 3d 3d } //01 00  == PLEASE READ THIS MESSAGE CAREFULLY ==
		$a_01_8 = {33 6f 34 6b 71 65 36 6b 68 6b 66 67 78 32 35 67 2e 6f 6e 69 6f 6e } //01 00  3o4kqe6khkfgx25g.onion
		$a_01_9 = {2f 2f 76 64 70 62 6b 6d 77 62 6e 70 2e 70 77 } //01 00  //vdpbkmwbnp.pw
		$a_01_10 = {2f 2f 68 6e 78 72 76 6f 62 68 67 6d 2e 70 77 } //01 00  //hnxrvobhgm.pw
		$a_01_11 = {2f 2f 31 34 36 2e 37 31 2e 38 34 2e 31 31 30 3a 38 30 38 30 } //01 00  //146.71.84.110:8080
		$a_01_12 = {2f 2f 31 38 35 2e 31 37 35 2e 32 30 38 2e 31 32 3a 38 30 38 30 } //01 00  //185.175.208.12:8080
		$a_01_13 = {2f 2f 39 34 2e 31 34 30 2e 31 32 30 2e 38 38 3a 38 30 38 30 } //01 00  //94.140.120.88:8080
		$a_01_14 = {2e 73 65 72 70 65 6e 74 } //01 00  .serpent
		$a_01_15 = {61 67 6e 74 73 76 63 2e 65 78 65 69 73 71 6c 70 6c 75 73 73 76 63 2e 65 78 65 } //01 00  agntsvc.exeisqlplussvc.exe
		$a_01_16 = {68 6f 77 5f 74 6f 5f 64 65 63 72 79 70 74 5f 79 6f 75 72 5f 66 69 6c 65 73 } //01 00  how_to_decrypt_your_files
		$a_01_17 = {73 65 72 70 65 6e 74 2e 69 6e 69 } //01 00  serpent.ini
		$a_01_18 = {5b 68 77 69 64 5d } //01 00  [hwid]
		$a_01_19 = {5b 70 61 79 6d 65 6e 74 64 6f 6d 61 69 6e } //01 00  [paymentdomain
		$a_01_20 = {5c 48 4f 57 5f 54 4f 5f 44 45 43 52 59 50 54 5f 59 4f 55 52 5f 46 49 4c 45 53 5f } //01 00  \HOW_TO_DECRYPT_YOUR_FILES_
		$a_01_21 = {65 6e 63 72 79 70 74 69 6f 6e 73 6f 66 74 77 61 72 65 2e 52 65 73 6f 75 72 63 65 73 } //01 00  encryptionsoftware.Resources
		$a_01_22 = {3c 72 73 61 5f 70 75 62 6c 69 63 3e 3c 2f 72 73 61 5f 70 75 62 6c 69 63 3e } //01 00  <rsa_public></rsa_public>
		$a_01_23 = {5f 50 57 53 41 4c 54 5f } //01 00  _PWSALT_
		$a_01_24 = {00 4d 55 54 45 58 30 30 30 30 30 31 00 } //01 00 
		$a_01_25 = {00 5c 24 72 65 63 79 63 6c 65 2e 62 69 6e 5c 00 } //00 00  尀爤捥捹敬戮湩\
	condition:
		any of ($a_*)
 
}