
rule Ransom_Win32_Cerber_J{
	meta:
		description = "Ransom:Win32/Cerber.J,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0c 00 00 02 00 "
		
	strings :
		$a_01_0 = {c7 06 45 72 62 52 } //01 00 
		$a_01_1 = {b8 42 4d 00 00 53 66 89 45 } //01 00 
		$a_01_2 = {3d 58 0d e1 6c } //01 00 
		$a_01_3 = {3d 81 c2 80 cd } //01 00 
		$a_01_4 = {3d 25 bd ef ef } //01 00 
		$a_01_5 = {74 0a 81 3e 6e 6f 73 6a 75 02 } //02 00 
		$a_01_6 = {8b 4c 24 04 c7 00 6e 6f 73 6a 89 48 14 } //01 00 
		$a_03_7 = {08 02 00 00 c7 45 90 01 01 01 68 00 00 90 00 } //01 00 
		$a_01_8 = {c7 06 06 02 00 00 c7 46 04 00 a4 00 00 c7 46 08 52 53 41 31 } //01 00 
		$a_03_9 = {83 fe 02 72 90 01 01 83 fe 03 76 90 01 01 83 fe 06 75 90 01 01 68 08 02 00 00 90 00 } //01 00 
		$a_03_10 = {81 7d f8 00 00 00 01 0f 85 ce 00 00 00 f6 45 f4 cc 74 90 01 03 e4 66 90 01 02 4d 5a 90 00 } //01 00 
		$a_01_11 = {69 c0 6b ca eb 85 8b c8 c1 e9 0d 33 c8 69 c9 35 ae b2 c2 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Cerber_J_2{
	meta:
		description = "Ransom:Win32/Cerber.J,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 1a 00 00 01 00 "
		
	strings :
		$a_80_0 = {43 45 52 42 45 52 20 52 41 4e 53 4f 4d 57 41 52 45 } //CERBER RANSOMWARE  01 00 
		$a_80_1 = {28 2a 5f 52 45 41 44 5f 54 48 49 53 5f 46 49 4c 45 5f 2a 29 } //(*_READ_THIS_FILE_*)  01 00 
		$a_80_2 = {7b 49 53 5f 41 44 4d 49 4e 7d } //{IS_ADMIN}  01 00 
		$a_80_3 = {7b 50 41 52 54 4e 45 52 5f 49 44 7d } //{PARTNER_ID}  01 00 
		$a_80_4 = {7b 53 54 4f 50 5f 52 45 41 53 4f 4e 7d } //{STOP_REASON}  01 00 
		$a_80_5 = {7b 43 4f 55 4e 54 5f 46 49 4c 45 53 7d } //{COUNT_FILES}  01 00 
		$a_80_6 = {72 73 61 5f 6b 65 79 5f 73 69 7a 65 } //rsa_key_size  01 00 
		$a_80_7 = {6d 69 6e 5f 66 69 6c 65 5f 73 69 7a 65 } //min_file_size  01 00 
		$a_80_8 = {74 68 72 65 61 64 73 5f 70 65 72 5f 63 6f 72 65 } //threads_per_core  01 00 
		$a_80_9 = {25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 } //%02X%02X%02X%02X%02X%02X  01 00 
		$a_80_10 = {53 65 6e 64 69 6e 67 20 73 74 61 74 20 25 73 2c 20 25 73 } //Sending stat %s, %s  01 00 
		$a_80_11 = {59 4f 55 52 20 44 4f 43 55 4d 45 4e 54 53 2c 20 50 48 4f 54 4f 53 2c 20 44 41 54 41 42 41 53 45 53 20 41 4e 44 20 4f 54 48 45 52 20 49 4d 50 4f 52 54 41 4e 54 20 46 49 4c 45 53 20 48 41 56 45 20 42 45 45 4e 20 45 4e 43 52 59 50 54 45 44 21 } //YOUR DOCUMENTS, PHOTOS, DATABASES AND OTHER IMPORTANT FILES HAVE BEEN ENCRYPTED!  01 00 
		$a_80_12 = {75 72 6c 28 27 64 61 74 61 3a 69 6d 61 67 65 2f 67 69 66 3b 62 61 73 65 36 34 2c 52 30 6c 47 4f 44 } //url('data:image/gif;base64,R0lGOD  01 00 
		$a_80_13 = {3c 68 31 3e 43 26 23 30 36 39 3b 26 23 38 32 3b 42 45 26 23 38 32 3b 20 26 23 38 32 3b 41 4e 53 4f 4d 57 41 26 23 38 32 3b 26 23 30 36 39 3b 3c 2f 68 31 3e } //<h1>C&#069;&#82;BE&#82; &#82;ANSOMWA&#82;&#069;</h1>  01 00 
		$a_80_14 = {28 62 6c 61 63 6b 4c 69 73 74 2e 69 6e 64 65 78 4f 66 28 6d 61 63 41 64 64 72 65 73 73 29 } //(blackList.indexOf(macAddress)  01 00 
		$a_80_15 = {75 70 64 55 72 6c 28 22 65 6e 22 29 3b } //updUrl("en");  01 00 
		$a_80_16 = {50 48 52 70 64 47 78 6c 50 6b 4d 6d 49 7a 41 32 4f 54 73 6d 49 7a 67 79 4f 30 4a 46 4a 69 4d 34 4d 67 } //PHRpdGxlPkMmIzA2OTsmIzgyO0JFJiM4Mg  01 00 
		$a_80_17 = {73 65 72 76 65 72 31 30 28 61 64 64 72 65 73 73 2c 20 63 61 6c 6c 62 61 63 6b 29 } //server10(address, callback)  01 00 
		$a_80_18 = {73 65 72 76 65 72 32 30 28 61 64 64 72 65 73 73 2c 20 63 61 6c 6c 62 61 63 6b 29 } //server20(address, callback)  01 00 
		$a_80_19 = {73 65 72 76 65 72 33 30 28 61 64 64 72 65 73 73 2c 20 63 61 6c 6c 62 61 63 6b 29 } //server30(address, callback)  01 00 
		$a_80_20 = {73 65 72 76 65 72 34 30 28 61 64 64 72 65 73 73 2c 20 63 61 6c 6c 62 61 63 6b 29 } //server40(address, callback)  01 00 
		$a_80_21 = {63 68 61 6e 67 65 4c 61 6e 67 75 61 67 65 31 28 29 } //changeLanguage1()  01 00 
		$a_80_22 = {63 68 61 6e 67 65 55 72 6c 5f 28 61 64 64 72 65 73 73 29 } //changeUrl_(address)  01 00 
		$a_80_23 = {75 70 64 55 72 6c 28 6c 61 6e 67 75 61 67 65 29 } //updUrl(language)  01 00 
		$a_80_24 = {73 68 6f 77 42 6c 6f 63 6b 28 6c 61 6e 67 75 61 67 65 29 } //showBlock(language)  01 00 
		$a_80_25 = {28 22 65 6e 2c 20 61 72 2c 20 7a 68 2c 20 6e 6c 2c 20 66 72 2c 20 64 65 2c 20 69 74 2c 20 6a 61 2c 20 6b 6f 2c 20 70 6c 2c 20 70 74 2c 20 65 73 2c 20 74 72 22 2e 69 6e 64 65 78 4f 66 28 6e 61 76 5f 6c 61 6e 67 29 } //("en, ar, zh, nl, fr, de, it, ja, ko, pl, pt, es, tr".indexOf(nav_lang)  00 00 
	condition:
		any of ($a_*)
 
}