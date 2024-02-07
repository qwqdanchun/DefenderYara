
rule TrojanDownloader_Win32_Deyma_DEC_MTB{
	meta:
		description = "TrojanDownloader:Win32/Deyma.DEC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0d 00 00 0a 00 "
		
	strings :
		$a_81_0 = {34 33 35 30 69 6a 79 33 30 75 39 34 35 6a 39 66 } //01 00  4350ijy30u945j9f
		$a_81_1 = {4e 68 7a 63 4d 75 41 67 65 4e } //01 00  NhzcMuAgeN
		$a_81_2 = {69 6c 43 65 7a 63 54 67 6b 52 } //01 00  ilCezcTgkR
		$a_81_3 = {44 59 74 58 4b 53 6b 52 5a 4b } //01 00  DYtXKSkRZK
		$a_81_4 = {69 6f 75 77 4a 56 74 64 4b 63 } //01 00  iouwJVtdKc
		$a_81_5 = {44 44 50 49 67 56 6e 63 4a 76 } //01 00  DDPIgVncJv
		$a_81_6 = {49 4e 59 61 51 57 47 75 61 69 } //01 00  INYaQWGuai
		$a_81_7 = {4e 6c 64 68 79 6a 48 61 46 44 } //01 00  NldhyjHaFD
		$a_81_8 = {65 62 4a 69 42 44 74 79 76 69 } //01 00  ebJiBDtyvi
		$a_81_9 = {4b 4c 58 71 55 64 69 6d 69 4c } //01 00  KLXqUdimiL
		$a_81_10 = {64 72 4a 50 5a 47 68 48 61 44 } //01 00  drJPZGhHaD
		$a_81_11 = {49 6a 75 4b 50 4b 74 54 66 4e } //01 00  IjuKPKtTfN
		$a_81_12 = {7a 57 6c 6a 62 70 4b 57 4d 61 } //00 00  zWljbpKWMa
	condition:
		any of ($a_*)
 
}