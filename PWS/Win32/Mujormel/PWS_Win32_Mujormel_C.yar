
rule PWS_Win32_Mujormel_C{
	meta:
		description = "PWS:Win32/Mujormel.C,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {68 00 64 00 76 00 65 00 72 00 61 00 76 00 65 00 72 00 61 00 32 00 30 00 31 00 33 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //02 00  hdveravera2013@gmail.com
		$a_01_1 = {6d 00 61 00 6c 00 76 00 69 00 6e 00 61 00 2d 00 6d 00 61 00 72 00 69 00 61 00 40 00 75 00 6f 00 6c 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 } //02 00  malvina-maria@uol.com.br
		$a_01_2 = {61 00 73 00 31 00 30 00 32 00 30 00 33 00 30 00 } //01 00  as102030
		$a_01_3 = {48 00 53 00 42 00 43 00 20 00 2d 00 20 00 49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 3a 00 20 00 43 00 50 00 46 00 20 00 69 00 6e 00 76 00 ef 00 bf 00 bd 00 6c 00 69 00 64 00 6f 00 2e 00 } //01 00 
		$a_01_4 = {42 00 52 00 41 00 44 00 45 00 53 00 43 00 4f 00 20 00 49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 3a 00 20 00 50 00 6f 00 72 00 20 00 66 00 61 00 76 00 6f 00 72 00 2c 00 20 00 44 00 69 00 67 00 69 00 74 00 65 00 20 00 73 00 75 00 61 00 20 00 73 00 65 00 6e 00 68 00 61 00 20 00 64 00 65 00 20 00 34 00 20 00 64 00 69 00 67 00 69 00 74 00 6f 00 73 00 } //00 00  BRADESCO Informa: Por favor, Digite sua senha de 4 digitos
		$a_00_5 = {5d 04 00 } //00 e3 
	condition:
		any of ($a_*)
 
}