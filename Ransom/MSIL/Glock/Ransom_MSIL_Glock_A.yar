
rule Ransom_MSIL_Glock_A{
	meta:
		description = "Ransom:MSIL/Glock.A,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 07 00 00 "
		
	strings :
		$a_01_0 = {39 00 36 00 31 00 37 00 63 00 31 00 30 00 34 00 2d 00 38 00 30 00 35 00 32 00 2d 00 34 00 64 00 65 00 64 00 2d 00 61 00 62 00 36 00 61 00 2d 00 30 00 39 00 34 00 66 00 39 00 31 00 63 00 36 00 39 00 33 00 64 00 37 00 } //1 9617c104-8052-4ded-ab6a-094f91c693d7
		$a_01_1 = {43 00 72 00 79 00 70 00 74 00 6f 00 4c 00 6f 00 63 00 6b 00 65 00 72 00 46 00 69 00 6c 00 65 00 4c 00 69 00 73 00 74 00 2e 00 74 00 78 00 74 00 } //1 CryptoLockerFileList.txt
		$a_01_2 = {43 00 4c 00 6f 00 63 00 6b 00 } //1 CLock
		$a_01_3 = {43 00 72 00 79 00 70 00 74 00 6f 00 67 00 72 00 61 00 70 00 68 00 69 00 63 00 20 00 4c 00 6f 00 63 00 6b 00 65 00 72 00 } //10 Cryptographic Locker
		$a_01_4 = {43 00 68 00 65 00 63 00 6b 00 20 00 70 00 61 00 79 00 6d 00 65 00 6e 00 74 00 20 00 61 00 6e 00 64 00 20 00 72 00 65 00 63 00 65 00 69 00 76 00 65 00 20 00 6b 00 65 00 79 00 73 00 } //1 Check payment and receive keys
		$a_01_5 = {54 00 69 00 6d 00 65 00 20 00 75 00 6e 00 74 00 69 00 6c 00 6c 00 20 00 63 00 6f 00 73 00 74 00 73 00 20 00 72 00 61 00 69 00 73 00 65 00 } //1 Time untill costs raise
		$a_03_6 = {7e 31 00 00 04 6f ?? 00 00 06 2d 02 16 2a 17 28 1b 00 00 0a 03 6f 01 00 00 06 28 1c 00 00 0a 2c 0d 03 6f 03 00 00 06 28 1c 00 00 0a 2c 02 16 2a 73 1d 00 00 0a 0a } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*10+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_03_6  & 1)*2) >=17
 
}