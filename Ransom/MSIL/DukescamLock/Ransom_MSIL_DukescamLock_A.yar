
rule Ransom_MSIL_DukescamLock_A{
	meta:
		description = "Ransom:MSIL/DukescamLock.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 00 49 00 4c 00 45 00 4e 00 54 00 20 00 45 00 58 00 45 00 53 00 5c 00 4a 00 55 00 4e 00 4b 00 43 00 4c 00 45 00 41 00 4e 00 45 00 52 00 5c 00 4a 00 75 00 6e 00 6b 00 5f 00 62 00 6c 00 61 00 63 00 6b 00 73 00 63 00 72 00 65 00 65 00 6e 00 5c 00 46 00 72 00 65 00 65 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 6d 00 61 00 6e 00 61 00 67 00 65 00 72 00 5c 00 6f 00 62 00 6a 00 5c 00 78 00 38 00 36 00 5c 00 44 00 65 00 62 00 75 00 67 00 5c 00 46 00 72 00 65 00 65 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 2e 00 70 00 64 00 62 00 00 00 } //1
		$a_03_1 = {59 00 6f 00 75 00 72 00 20 00 6b 00 65 00 79 00 20 00 73 00 65 00 65 00 6d 00 73 00 20 00 74 00 6f 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 65 00 78 00 70 00 69 00 72 00 65 00 64 00 2c 00 20 00 50 00 6c 00 65 00 61 00 73 00 65 00 20 00 63 00 61 00 6c 00 6c 00 20 00 61 00 74 00 20 00 [0-20] 20 00 74 00 6f 00 20 00 67 00 65 00 74 00 20 00 61 00 20 00 6e 00 65 00 77 00 20 00 6f 00 6e 00 65 00 } //1
		$a_01_2 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 41 00 63 00 74 00 69 00 76 00 61 00 74 00 69 00 6f 00 6e 00 } //1 Microsoft Windows Activation
		$a_01_3 = {43 00 6c 00 6f 00 73 00 69 00 6e 00 67 00 20 00 6f 00 66 00 20 00 74 00 68 00 65 00 20 00 72 00 65 00 67 00 69 00 73 00 74 00 72 00 61 00 74 00 69 00 6f 00 6e 00 20 00 66 00 6f 00 72 00 6d 00 20 00 69 00 73 00 20 00 6e 00 6f 00 74 00 20 00 61 00 6c 00 6c 00 6f 00 77 00 65 00 64 00 } //1 Closing of the registration form is not allowed
		$a_80_4 = {74 65 61 6d 76 69 65 77 65 72 5f 62 79 5f 62 69 74 69 6e 67 64 75 6b 65 } //teamviewer_by_bitingduke  2
		$a_01_5 = {59 00 6f 00 75 00 72 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4c 00 69 00 63 00 65 00 6e 00 63 00 65 00 20 00 68 00 61 00 73 00 20 00 45 00 78 00 70 00 69 00 72 00 65 00 64 00 20 00 2c 00 20 00 50 00 6c 00 65 00 61 00 73 00 65 00 20 00 67 00 65 00 74 00 20 00 61 00 20 00 6e 00 65 00 77 00 20 00 6f 00 6e 00 65 00 20 00 62 00 79 00 20 00 63 00 61 00 6c 00 6c 00 69 00 6e 00 67 00 20 00 6f 00 6e 00 20 00 2b 00 31 00 2d 00 38 00 38 00 38 00 } //1 Your Windows Licence has Expired , Please get a new one by calling on +1-888
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_80_4  & 1)*2+(#a_01_5  & 1)*1) >=5
 
}