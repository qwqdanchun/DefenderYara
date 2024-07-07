
rule TrojanSpy_BAT_VB_O{
	meta:
		description = "TrojanSpy:BAT/VB.O,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 03 00 00 "
		
	strings :
		$a_01_0 = {28 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 20 00 45 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 57 00 69 00 74 00 68 00 20 00 53 00 68 00 61 00 31 00 20 00 45 00 6e 00 63 00 72 00 74 00 79 00 70 00 74 00 69 00 6f 00 6e 00 20 00 41 00 6c 00 67 00 6f 00 72 00 69 00 74 00 68 00 6d 00 5f 00 46 00 69 00 6e 00 64 00 20 00 4f 00 6e 00 20 00 47 00 6f 00 6f 00 67 00 6c 00 65 00 20 00 46 00 6f 00 72 00 20 00 53 00 68 00 61 00 31 00 20 00 44 00 65 00 63 00 72 00 79 00 70 00 74 00 69 00 6f 00 6e 00 29 00 } //5 (Password Encrypted With Sha1 Encrtyption Algorithm_Find On Google For Sha1 Decryption)
		$a_01_1 = {52 00 61 00 70 00 7a 00 6f 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 20 00 76 00 20 00 32 00 2e 00 30 00 20 00 20 00 20 00 53 00 74 00 65 00 61 00 6c 00 65 00 72 00 20 00 4c 00 6f 00 67 00 73 00 20 00 46 00 72 00 6f 00 6d 00 20 00 2d 00 } //5 Rapzo Logger v 2.0   Stealer Logs From -
		$a_01_2 = {52 00 61 00 70 00 7a 00 6f 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 20 00 2d 00 20 00 50 00 72 00 69 00 76 00 61 00 74 00 65 00 20 00 45 00 64 00 69 00 74 00 69 00 6f 00 6e 00 20 00 46 00 74 00 70 00 20 00 4c 00 6f 00 67 00 73 00 20 00 4f 00 6e 00 } //5 Rapzo Logger - Private Edition Ftp Logs On
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5) >=15
 
}