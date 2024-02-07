
rule Ransom_Win32_Koadalocka_B{
	meta:
		description = "Ransom:Win32/Koadalocka.B,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {42 00 69 00 74 00 63 00 6f 00 69 00 6e 00 20 00 74 00 6f 00 20 00 66 00 6f 00 6c 00 6c 00 6f 00 77 00 69 00 6e 00 67 00 20 00 61 00 64 00 64 00 72 00 65 00 73 00 73 00 } //02 00  Bitcoin to following address
		$a_01_1 = {69 00 6d 00 70 00 6f 00 72 00 74 00 61 00 6e 00 74 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 61 00 72 00 65 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //02 00  important files are encrypted
		$a_01_2 = {43 00 6f 00 70 00 79 00 69 00 6e 00 67 00 20 00 6e 00 6f 00 74 00 50 00 65 00 74 00 79 00 61 00 } //02 00  Copying notPetya
		$a_01_3 = {64 00 65 00 6c 00 65 00 74 00 65 00 6a 00 6f 00 75 00 72 00 6e 00 61 00 6c 00 20 00 2f 00 44 00 20 00 43 00 3a 00 } //02 00  deletejournal /D C:
		$a_01_4 = {79 00 6f 00 75 00 72 00 20 00 69 00 6d 00 70 00 6f 00 72 00 74 00 61 00 6e 00 74 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 61 00 72 00 65 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //01 00  your important files are encrypted
		$a_01_5 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //01 00  CreateEncryptor
		$a_01_6 = {41 54 54 26 43 4b 33 76 61 6c 75 61 74 31 30 6e } //00 00  ATT&CK3valuat10n
	condition:
		any of ($a_*)
 
}