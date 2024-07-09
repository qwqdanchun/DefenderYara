
rule Ransom_MSIL_FileCryptor_MK_MTB{
	meta:
		description = "Ransom:MSIL/FileCryptor.MK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,32 00 32 00 11 00 00 "
		
	strings :
		$a_81_0 = {41 6c 6c 20 6f 66 20 79 6f 75 72 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //10 All of your files have been encrypted
		$a_81_1 = {4e 6f 20 66 69 6c 65 73 20 74 6f 20 65 6e 63 72 79 70 74 } //10 No files to encrypt
		$a_02_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 57 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 [0-10] 53 00 68 00 65 00 6c 00 6c 00 [0-10] 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //2
		$a_02_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e [0-10] 53 68 65 6c 6c [0-10] 65 78 70 6c 6f 72 65 72 2e 65 78 65 } //2
		$a_02_4 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 [0-10] 52 00 61 00 6e 00 73 00 6f 00 6d 00 } //2
		$a_02_5 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e [0-10] 52 61 6e 73 6f 6d } //2
		$a_02_6 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 [0-10] 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 41 00 6e 00 74 00 69 00 53 00 70 00 79 00 77 00 61 00 72 00 65 00 [0-10] 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 6f 00 75 00 74 00 69 00 6e 00 65 00 6c 00 79 00 54 00 61 00 6b 00 69 00 6e 00 67 00 41 00 63 00 74 00 69 00 6f 00 6e 00 } //2
		$a_02_7 = {53 4f 46 54 57 41 52 45 5c 50 6f 6c 69 63 69 65 73 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 44 65 66 65 6e 64 65 72 [0-10] 44 69 73 61 62 6c 65 41 6e 74 69 53 70 79 77 61 72 65 [0-10] 44 69 73 61 62 6c 65 52 6f 75 74 69 6e 65 6c 79 54 61 6b 69 6e 67 41 63 74 69 6f 6e } //2
		$a_02_8 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 65 00 73 00 74 00 6f 00 72 00 65 00 73 00 [0-10] 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 53 00 52 00 [0-10] 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 43 00 6f 00 6e 00 66 00 69 00 67 00 } //2
		$a_02_9 = {53 6f 66 74 77 61 72 65 5c 50 6f 6c 69 63 69 65 73 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 53 79 73 74 65 6d 52 65 73 74 6f 72 65 73 [0-10] 44 69 73 61 62 6c 65 53 52 [0-10] 44 69 73 61 62 6c 65 43 6f 6e 66 69 67 } //2
		$a_02_10 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5c 00 52 00 65 00 61 00 6c 00 2d 00 54 00 69 00 6d 00 65 00 20 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 [0-10] 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 61 00 6c 00 74 00 69 00 6d 00 65 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 69 00 6e 00 67 00 } //2
		$a_02_11 = {53 4f 46 54 57 41 52 45 5c 50 6f 6c 69 63 69 65 73 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 44 65 66 65 6e 64 65 72 5c 52 65 61 6c 2d 54 69 6d 65 20 50 72 6f 74 65 63 74 69 6f 6e [0-10] 44 69 73 61 62 6c 65 52 65 61 6c 74 69 6d 65 4d 6f 6e 69 74 6f 72 69 6e 67 } //2
		$a_81_12 = {2e 6b 66 75 61 6c 64 } //1 .kfuald
		$a_81_13 = {45 6e 63 72 79 70 74 69 6e 67 3a } //10 Encrypting:
		$a_81_14 = {4f 6f 70 73 2e 2e 2e 20 59 6f 75 72 20 63 6f 6d 70 75 74 65 72 20 68 61 73 20 62 65 65 6e 20 6c 6f 63 6b 65 64 } //10 Oops... Your computer has been locked
		$a_81_15 = {52 61 6e 73 6f 6d 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //1 Ransom.Properties.Resources
		$a_81_16 = {41 6e 6e 61 62 65 6c 6c 65 2d 74 65 61 72 } //10 Annabelle-tear
	condition:
		((#a_81_0  & 1)*10+(#a_81_1  & 1)*10+(#a_02_2  & 1)*2+(#a_02_3  & 1)*2+(#a_02_4  & 1)*2+(#a_02_5  & 1)*2+(#a_02_6  & 1)*2+(#a_02_7  & 1)*2+(#a_02_8  & 1)*2+(#a_02_9  & 1)*2+(#a_02_10  & 1)*2+(#a_02_11  & 1)*2+(#a_81_12  & 1)*1+(#a_81_13  & 1)*10+(#a_81_14  & 1)*10+(#a_81_15  & 1)*1+(#a_81_16  & 1)*10) >=50
 
}