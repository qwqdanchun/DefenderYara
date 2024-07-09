
rule Ransom_MSIL_Godcrypt{
	meta:
		description = "Ransom:MSIL/Godcrypt,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 10 00 00 "
		
	strings :
		$a_01_0 = {47 6f 64 73 6f 6d 77 61 72 65 } //1 Godsomware
		$a_01_1 = {4f 00 6f 00 6f 00 70 00 73 00 2c 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 21 00 } //1 Ooops, your files have been encrypted!
		$a_01_2 = {53 00 65 00 6e 00 64 00 20 00 24 00 31 00 30 00 30 00 20 00 77 00 6f 00 72 00 74 00 68 00 20 00 6f 00 66 00 20 00 62 00 69 00 74 00 63 00 6f 00 69 00 6e 00 20 00 74 00 6f 00 20 00 74 00 68 00 69 00 73 00 20 00 61 00 64 00 64 00 72 00 65 00 73 00 73 00 3a 00 } //1 Send $100 worth of bitcoin to this address:
		$a_01_3 = {67 65 74 5f 69 66 5f 70 61 79 6d 65 6e 74 5f 6d 65 74 68 6f 64 5f 62 69 74 63 6f 69 6e 5f } //1 get_if_payment_method_bitcoin_
		$a_01_4 = {47 00 6f 00 64 00 20 00 43 00 72 00 79 00 70 00 74 00 20 00 76 00 31 00 2e 00 30 00 } //2 God Crypt v1.0
		$a_01_5 = {47 6f 64 73 6f 6d 77 61 72 65 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //2 Godsomware.My.Resources
		$a_03_6 = {47 6f 64 73 6f 6d 77 61 72 65 2e 46 6f 72 6d ?? 2e 72 65 73 6f 75 72 63 65 73 } //2
		$a_01_7 = {47 6f 64 73 6f 6d 77 61 72 65 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //2 Godsomware.Resources.resources
		$a_01_8 = {47 6f 64 73 6f 6d 77 61 72 65 2e 65 78 65 } //2 Godsomware.exe
		$a_01_9 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 20 00 68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 74 00 68 00 65 00 73 00 74 00 72 00 65 00 65 00 74 00 2e 00 63 00 6f 00 6d 00 2f 00 69 00 6e 00 76 00 65 00 73 00 74 00 69 00 6e 00 67 00 2f 00 62 00 69 00 74 00 63 00 6f 00 69 00 6e 00 2f 00 77 00 68 00 65 00 72 00 65 00 2d 00 74 00 6f 00 2d 00 62 00 75 00 79 00 2d 00 62 00 69 00 74 00 63 00 6f 00 69 00 6e 00 2d 00 31 00 34 00 35 00 34 00 39 00 35 00 39 00 34 00 } //2 explorer.exe https://www.thestreet.com/investing/bitcoin/where-to-buy-bitcoin-14549594
		$a_01_10 = {31 00 4d 00 37 00 6a 00 73 00 78 00 4c 00 45 00 43 00 33 00 6a 00 73 00 66 00 57 00 65 00 6e 00 31 00 46 00 50 00 31 00 4e 00 39 00 75 00 76 00 54 00 73 00 31 00 39 00 6b 00 6b 00 66 00 66 00 6a 00 34 00 } //4 1M7jsxLEC3jsfWen1FP1N9uvTs19kkffj4
		$a_01_11 = {52 61 6e 73 6f 6d 77 61 72 65 20 47 6f 64 20 43 72 79 70 74 20 76 31 2e 30 20 62 79 20 4e 69 6e 6a 61 47 68 6f 73 74 } //4 Ransomware God Crypt v1.0 by NinjaGhost
		$a_01_12 = {67 65 74 5f 57 61 6e 6e 61 43 72 79 5f 72 61 6e 73 6f 6d 5f 6e 6f 74 65 5f 5f 50 6c 65 61 73 65 5f 52 65 61 64 5f 4d 65 5f 5f 74 78 74 } //4 get_WannaCry_ransom_note__Please_Read_Me__txt
		$a_01_13 = {57 00 61 00 6e 00 6e 00 61 00 43 00 72 00 79 00 2d 00 72 00 61 00 6e 00 73 00 6f 00 6d 00 2d 00 6e 00 6f 00 74 00 65 00 2d 00 40 00 50 00 6c 00 65 00 61 00 73 00 65 00 5f 00 52 00 65 00 61 00 64 00 5f 00 4d 00 65 00 40 00 2d 00 74 00 78 00 74 00 } //4 WannaCry-ransom-note-@Please_Read_Me@-txt
		$a_01_14 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 20 00 6d 00 61 00 69 00 6c 00 74 00 6f 00 3a 00 6e 00 69 00 6e 00 6a 00 61 00 63 00 79 00 62 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //4 explorer.exe mailto:ninjacyber.com@gmail.com
		$a_03_15 = {47 6f 64 73 6f 6d 77 61 72 65 20 62 79 20 4e 69 6e 6a 61 47 68 6f 73 74 5c 47 6f 64 73 6f 6d 77 61 72 65 5c 47 6f 64 73 6f 6d 77 61 72 65 [0-20] 47 6f 64 73 6f 6d 77 61 72 65 2e 70 64 62 } //6
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_03_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*2+(#a_01_9  & 1)*2+(#a_01_10  & 1)*4+(#a_01_11  & 1)*4+(#a_01_12  & 1)*4+(#a_01_13  & 1)*4+(#a_01_14  & 1)*4+(#a_03_15  & 1)*6) >=26
 
}