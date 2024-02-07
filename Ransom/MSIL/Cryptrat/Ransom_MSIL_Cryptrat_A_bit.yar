
rule Ransom_MSIL_Cryptrat_A_bit{
	meta:
		description = "Ransom:MSIL/Cryptrat.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {66 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 6c 00 6f 00 6c 00 61 00 61 00 69 00 6c 00 2e 00 } //01 00  ftp://www.lolaail.
		$a_01_1 = {65 6e 63 72 79 70 74 20 77 69 74 68 20 6f 75 72 20 34 72 77 35 77 20 63 72 79 70 74 20 76 69 72 75 73 } //01 00  encrypt with our 4rw5w crypt virus
		$a_01_2 = {5c 34 72 77 35 77 44 65 63 72 79 70 74 6f 72 5c 6f 62 6a 5c 44 65 62 75 67 5c 34 72 77 35 77 44 65 63 72 79 70 74 6f 72 2e 70 64 62 } //01 00  \4rw5wDecryptor\obj\Debug\4rw5wDecryptor.pdb
		$a_01_3 = {2a 00 2e 00 34 00 72 00 77 00 63 00 72 00 79 00 34 00 77 00 } //01 00  *.4rwcry4w
		$a_01_4 = {2e 00 34 00 72 00 6e 00 6b 00 65 00 79 00 } //00 00  .4rnkey
	condition:
		any of ($a_*)
 
}