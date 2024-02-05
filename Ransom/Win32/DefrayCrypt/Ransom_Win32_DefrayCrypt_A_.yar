
rule Ransom_Win32_DefrayCrypt_A_{
	meta:
		description = "Ransom:Win32/DefrayCrypt.A!!DefrayCrypt.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,0a 00 0a 00 12 00 00 03 00 "
		
	strings :
		$a_80_0 = {65 3d 25 64 26 73 3d 25 64 26 66 3d 25 64 26 74 3d 25 64 26 68 3d 25 6c 73 26 77 3d 25 64 26 72 3d 25 6c 73 } //e=%d&s=%d&f=%d&t=%d&h=%ls&w=%d&r=%ls  02 00 
		$a_80_1 = {28 5c 5c 5b 61 2d 7a 41 2d 5a 30 2d 39 5f 20 5d 2b 7c 5b 61 2d 7a 41 2d 5a 5d 3a 29 28 28 28 5c 5c 2e 2b 3f 28 5c 5c 7c 29 29 2b 28 3f 3d 5b 3c 3e 22 3a 5c 2f 7c 3f 2a 5c 6e 5c 72 5c 74 5d 29 29 7c 28 28 5c 5c 2e 2b 28 5c 5c 7c 29 29 2b 29 29 } //(\\[a-zA-Z0-9_ ]+|[a-zA-Z]:)(((\\.+?(\\|))+(?=[<>":\/|?*\n\r\t]))|((\\.+(\\|))+))  02 00 
		$a_80_2 = {6b 69 6e 61 65 73 74 68 65 74 69 63 2d 65 6c 65 63 74 72 2e 30 30 30 77 65 62 68 6f 73 74 61 70 70 2e 63 6f 6d } //kinaesthetic-electr.000webhostapp.com  02 00 
		$a_80_3 = {70 65 5c 6b 69 6b 65 74 } //pe\kiket  01 00 
		$a_80_4 = {70 61 74 68 3d 22 2e 2b 22 } //path=".+"  01 00 
		$a_80_5 = {75 72 69 3d 22 2e 2b 22 } //uri=".+"  01 00 
		$a_80_6 = {3c 69 6e 63 6c 75 64 65 3e 2e 2b 3c 2f 69 6e 63 6c 75 64 65 3e } //<include>.+</include>  01 00 
		$a_80_7 = {00 69 2e 70 68 70 00 } //  01 00 
		$a_80_8 = {00 5c 46 49 4c 45 53 2e 54 58 54 00 } //  01 00 
		$a_80_9 = {45 6e 63 72 79 70 74 69 6f 6e 20 69 73 20 76 65 72 79 20 73 6f 70 68 69 73 74 69 63 61 74 65 64 20 61 6e 64 20 77 69 74 68 6f 75 74 20 70 61 79 69 6e 67 20 61 20 72 61 6e 73 6f 6d 20 79 6f 75 20 77 6f 6e 27 74 20 67 65 74 20 79 6f 75 72 20 66 69 6c 65 73 20 62 61 63 6b 2e } //Encryption is very sophisticated and without paying a ransom you won't get your files back.  01 00 
		$a_80_10 = {42 4d 2d 32 63 56 50 4b 71 46 62 35 5a 52 61 4d 75 59 64 72 79 71 78 73 4d 4e 78 46 4d 75 64 69 62 76 6e 59 36 } //BM-2cVPKqFb5ZRaMuYdryqxsMNxFMudibvnY6  01 00 
		$a_80_11 = {67 6c 75 73 68 6b 6f 76 40 70 72 6f 74 6f 6e 6d 61 69 6c 2e 63 68 } //glushkov@protonmail.ch  01 00 
		$a_80_12 = {67 6c 75 73 68 6b 6f 76 40 74 75 74 61 6e 6f 74 61 2e 64 65 } //glushkov@tutanota.de  01 00 
		$a_80_13 = {69 67 6f 72 2e 67 6c 75 73 68 6b 6f 76 2e 38 33 40 6d 61 69 6c 2e 72 75 } //igor.glushkov.83@mail.ru  02 00 
		$a_03_14 = {ff 5c 75 36 8d 45 f4 33 ff 50 ff 15 90 01 04 2b c7 74 1e 83 e8 01 74 19 83 e8 01 74 14 83 e8 01 74 0f 83 e8 01 74 0a 83 e8 01 74 05 83 e8 01 75 08 8d 4d f4 e8 90 01 02 ff ff 46 3b f3 7c a2 90 00 } //02 00 
		$a_01_15 = {75 07 bf a8 fd ff ff eb 17 53 8d 45 f8 50 57 ff 75 08 56 ff 15 } //01 00 
		$a_01_16 = {85 c0 74 03 89 46 08 8b 16 8b ce 6a 01 ff 12 57 ff 15 } //02 00 
		$a_03_17 = {be 40 01 00 00 39 b5 90 01 02 00 00 7c 90 01 01 8d 45 90 01 01 50 56 8b c8 e8 90 01 02 00 00 ff 75 90 01 01 8b 45 90 00 } //05 00 
	condition:
		any of ($a_*)
 
}