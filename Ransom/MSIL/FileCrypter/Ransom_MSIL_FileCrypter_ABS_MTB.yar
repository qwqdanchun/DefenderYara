
rule Ransom_MSIL_FileCrypter_ABS_MTB{
	meta:
		description = "Ransom:MSIL/FileCrypter.ABS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0a 00 00 02 00 "
		
	strings :
		$a_03_0 = {02 08 11 04 9a 28 05 90 01 02 06 08 11 04 9a 72 75 90 01 02 70 28 43 90 01 02 0a 28 44 90 01 02 0a 11 04 17 58 13 04 11 04 08 8e 69 32 d6 90 00 } //02 00 
		$a_03_1 = {06 07 28 02 90 01 02 06 0c 03 08 28 2d 90 01 02 0a 03 28 2e 90 01 02 0a 0d 03 16 03 90 0a 39 00 03 28 28 90 01 02 0a 0a 28 29 90 01 02 0a 04 6f 2a 90 01 02 0a 0b 28 2b 90 01 02 0a 07 6f 2c 90 01 02 0a 0b 02 90 00 } //01 00 
		$a_01_2 = {62 79 74 65 73 54 6f 42 65 44 65 63 72 79 70 74 65 64 } //01 00  bytesToBeDecrypted
		$a_01_3 = {43 69 70 68 65 72 4d 6f 64 65 } //01 00  CipherMode
		$a_01_4 = {44 65 63 72 79 70 74 46 69 6c 65 } //01 00  DecryptFile
		$a_01_5 = {47 65 74 45 78 74 65 6e 73 69 6f 6e } //01 00  GetExtension
		$a_01_6 = {47 65 74 44 69 72 65 63 74 6f 72 69 65 73 } //01 00  GetDirectories
		$a_01_7 = {70 61 73 73 77 6f 72 64 42 79 74 65 73 } //01 00  passwordBytes
		$a_01_8 = {52 65 61 64 41 6c 6c 42 79 74 65 73 } //01 00  ReadAllBytes
		$a_01_9 = {44 65 63 72 79 70 74 44 69 72 65 63 74 6f 72 79 } //00 00  DecryptDirectory
	condition:
		any of ($a_*)
 
}