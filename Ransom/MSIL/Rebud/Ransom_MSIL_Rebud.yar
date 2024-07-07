
rule Ransom_MSIL_Rebud{
	meta:
		description = "Ransom:MSIL/Rebud,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0a 00 00 "
		
	strings :
		$a_01_0 = {35 30 32 34 39 43 42 38 31 37 41 30 41 45 30 36 37 39 37 37 35 31 44 43 35 44 30 30 36 35 36 43 41 44 38 36 43 38 45 41 } //2 50249CB817A0AE06797751DC5D00656CAD86C8EA
		$a_01_1 = {43 3a 5c 55 73 65 72 73 5c 43 69 61 72 61 26 43 6f 64 79 5c 44 65 73 6b 74 6f 70 5c 44 55 4d 42 2d 6d 61 73 74 65 72 5c 44 55 4d 42 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 44 55 4d 42 2e 70 64 62 } //2 C:\Users\Ciara&Cody\Desktop\DUMB-master\DUMB\obj\Release\DUMB.pdb
		$a_01_2 = {31 00 43 00 52 00 59 00 50 00 54 00 57 00 41 00 4c 00 4b 00 45 00 52 00 63 00 56 00 79 00 73 00 69 00 6d 00 65 00 4d 00 6e 00 4d 00 78 00 54 00 68 00 4c 00 4c 00 74 00 70 00 73 00 6e 00 56 00 62 00 62 00 7a 00 33 00 56 00 6f 00 4a 00 54 00 79 00 } //2 1CRYPTWALKERcVysimeMnMxThLLtpsnVbbz3VoJTy
		$a_01_3 = {59 00 6f 00 75 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 73 00 74 00 72 00 75 00 63 00 6b 00 20 00 77 00 69 00 74 00 68 00 20 00 43 00 52 00 59 00 50 00 54 00 57 00 41 00 4c 00 4b 00 45 00 52 00 } //2 You have been struck with CRYPTWALKER
		$a_01_4 = {59 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 2c 00 } //2 Your files have been encrypted,
		$a_01_5 = {69 00 6e 00 20 00 66 00 6f 00 75 00 72 00 74 00 79 00 2d 00 65 00 69 00 67 00 68 00 74 00 20 00 68 00 6f 00 75 00 72 00 73 00 20 00 74 00 68 00 65 00 20 00 6b 00 65 00 79 00 20 00 74 00 6f 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 77 00 69 00 6c 00 6c 00 20 00 62 00 65 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 64 00 } //2 in fourty-eight hours the key to decrypt your files will be deleted
		$a_01_6 = {64 00 65 00 70 00 6f 00 73 00 69 00 74 00 20 00 30 00 2e 00 35 00 20 00 42 00 69 00 74 00 63 00 6f 00 69 00 6e 00 73 00 20 00 69 00 6e 00 74 00 6f 00 20 00 6f 00 75 00 72 00 20 00 70 00 72 00 69 00 76 00 61 00 74 00 65 00 20 00 62 00 69 00 74 00 63 00 6f 00 69 00 6e 00 6f 00 20 00 77 00 61 00 6c 00 6c 00 65 00 74 00 2e 00 } //2 deposit 0.5 Bitcoins into our private bitcoino wallet.
		$a_01_7 = {31 00 38 00 50 00 51 00 50 00 54 00 68 00 38 00 78 00 43 00 79 00 6b 00 56 00 64 00 58 00 52 00 74 00 79 00 39 00 6b 00 6b 00 6b 00 4d 00 6b 00 55 00 57 00 64 00 65 00 4c 00 73 00 5a 00 31 00 5a 00 34 00 } //2 18PQPTh8xCykVdXRty9kkkMkUWdeLsZ1Z4
		$a_01_8 = {50 00 75 00 74 00 20 00 61 00 20 00 66 00 6f 00 6c 00 64 00 65 00 72 00 20 00 69 00 6e 00 20 00 4d 00 79 00 20 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 63 00 61 00 6c 00 6c 00 65 00 64 00 20 00 27 00 54 00 45 00 53 00 54 00 27 00 20 00 61 00 6e 00 64 00 20 00 63 00 68 00 75 00 63 00 6b 00 20 00 61 00 6e 00 79 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 79 00 6f 00 75 00 20 00 77 00 61 00 6e 00 74 00 20 00 74 00 6f 00 20 00 67 00 65 00 74 00 20 00 66 00 75 00 63 00 6b 00 65 00 64 00 20 00 75 00 70 00 } //2 Put a folder in My Documents called 'TEST' and chuck any files you want to get fucked up
		$a_01_9 = {6e 00 65 00 78 00 74 00 20 00 74 00 69 00 6d 00 65 00 20 00 72 00 65 00 61 00 64 00 20 00 74 00 68 00 65 00 20 00 67 00 6f 00 64 00 20 00 64 00 61 00 6d 00 6e 00 20 00 52 00 45 00 41 00 44 00 4d 00 45 00 } //2 next time read the god damn README
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*2+(#a_01_9  & 1)*2) >=12
 
}