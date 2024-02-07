
rule Ransom_MSIL_Filecoder_AK_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.AK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 00 61 00 72 00 6e 00 69 00 6e 00 67 00 3a 00 20 00 42 00 79 00 20 00 63 00 6c 00 6f 00 73 00 69 00 6e 00 67 00 20 00 6d 00 65 00 2c 00 20 00 79 00 6f 00 75 00 20 00 64 00 65 00 73 00 74 00 72 00 6f 00 79 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 } //01 00  Warning: By closing me, you destroy your files
		$a_01_1 = {50 00 6c 00 65 00 61 00 73 00 65 00 20 00 61 00 64 00 64 00 20 00 74 00 68 00 65 00 20 00 73 00 74 00 72 00 69 00 6e 00 67 00 73 00 3a 00 20 00 65 00 6e 00 63 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 20 00 61 00 6e 00 64 00 20 00 65 00 6e 00 63 00 65 00 78 00 74 00 65 00 6e 00 74 00 69 00 6f 00 6e 00 } //01 00  Please add the strings: encpassword and encextention
		$a_01_2 = {33 00 70 00 43 00 58 00 6f 00 32 00 70 00 69 00 45 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  3pCXo2piEd.exe
		$a_01_3 = {59 00 6f 00 75 00 72 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 77 00 69 00 74 00 68 00 20 00 61 00 20 00 6d 00 69 00 6c 00 69 00 74 00 61 00 72 00 79 00 2d 00 67 00 72 00 61 00 64 00 65 00 20 00 61 00 6c 00 67 00 6f 00 72 00 69 00 74 00 68 00 6d 00 } //01 00  Your computer files have been encrypted with a military-grade algorithm
		$a_01_4 = {53 00 70 00 65 00 63 00 74 00 72 00 65 00 20 00 44 00 65 00 63 00 72 00 79 00 70 00 74 00 6f 00 72 00 } //01 00  Spectre Decryptor
		$a_01_5 = {43 00 6c 00 69 00 63 00 6b 00 20 00 74 00 68 00 65 00 20 00 50 00 61 00 79 00 6d 00 65 00 6e 00 74 00 20 00 63 00 68 00 61 00 6e 00 6e 00 65 00 6c 00 20 00 61 00 6e 00 64 00 20 00 63 00 6f 00 6d 00 70 00 6c 00 65 00 74 00 65 00 20 00 69 00 74 00 } //01 00  Click the Payment channel and complete it
		$a_01_6 = {47 00 65 00 74 00 20 00 79 00 6f 00 75 00 72 00 20 00 6b 00 65 00 79 00 73 00 20 00 61 00 6e 00 64 00 20 00 65 00 6e 00 74 00 65 00 72 00 20 00 69 00 74 00 20 00 68 00 65 00 72 00 65 00 2e 00 20 00 46 00 69 00 6e 00 69 00 73 00 68 00 65 00 64 00 21 00 20 00 4e 00 6f 00 77 00 20 00 79 00 6f 00 75 00 72 00 20 00 64 00 61 00 74 00 61 00 20 00 77 00 69 00 6c 00 6c 00 20 00 62 00 65 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //01 00  Get your keys and enter it here. Finished! Now your data will be decrypted
		$a_01_7 = {44 00 65 00 63 00 72 00 79 00 70 00 74 00 20 00 46 00 69 00 6c 00 65 00 73 00 } //01 00  Decrypt Files
		$a_01_8 = {54 00 68 00 65 00 20 00 4b 00 65 00 79 00 20 00 69 00 73 00 20 00 69 00 6e 00 76 00 61 00 6c 00 69 00 64 00 } //00 00  The Key is invalid
	condition:
		any of ($a_*)
 
}