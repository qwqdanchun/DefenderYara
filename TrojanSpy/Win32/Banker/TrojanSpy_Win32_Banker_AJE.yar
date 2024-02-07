
rule TrojanSpy_Win32_Banker_AJE{
	meta:
		description = "TrojanSpy:Win32/Banker.AJE,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 0a 00 "
		
	strings :
		$a_00_0 = {28 00 22 00 49 00 44 00 5f 00 50 00 43 00 22 00 2c 00 20 00 22 00 4e 00 4d 00 46 00 55 00 4e 00 43 00 49 00 4f 00 4e 00 41 00 52 00 49 00 4f 00 22 00 2c 00 20 00 22 00 49 00 4e 00 46 00 4f 00 52 00 4d 00 41 00 43 00 41 00 4f 00 22 00 29 00 } //01 00  ("ID_PC", "NMFUNCIONARIO", "INFORMACAO")
		$a_00_1 = {74 65 63 6c 61 64 6f } //01 00  teclado
		$a_00_2 = {6d 00 65 00 6e 00 73 00 61 00 67 00 65 00 6d 00 } //01 00  mensagem
		$a_00_3 = {73 00 61 00 6e 00 74 00 61 00 6e 00 64 00 65 00 72 00 } //01 00  santander
		$a_01_4 = {69 00 62 00 32 00 2e 00 62 00 72 00 61 00 64 00 65 00 73 00 63 00 6f 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 2f 00 69 00 62 00 70 00 66 00 6c 00 6f 00 67 00 69 00 6e 00 } //01 00  ib2.bradesco.com.br/ibpflogin
		$a_01_5 = {43 61 64 61 73 74 72 6f } //00 00  Cadastro
	condition:
		any of ($a_*)
 
}