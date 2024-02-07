
rule TrojanSpy_Win32_Bancos_ABD{
	meta:
		description = "TrojanSpy:Win32/Bancos.ABD,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 09 00 00 01 00 "
		
	strings :
		$a_03_0 = {49 4e 53 54 41 4c 41 44 4f 00 90 02 40 5c 53 6f 66 74 77 61 72 65 5c 41 6c 78 5c 43 6f 6e 66 69 67 5c 90 00 } //01 00 
		$a_01_1 = {4d 4f 44 55 4c 4f 00 } //01 00 
		$a_01_2 = {47 65 72 61 6c 00 } //01 00  敇慲l
		$a_01_3 = {4e 4f 4d 45 5f 45 58 45 43 55 54 41 56 45 4c 5f } //01 00  NOME_EXECUTAVEL_
		$a_01_4 = {55 52 4c 5f 45 58 45 43 55 54 41 56 45 4c 5f } //01 00  URL_EXECUTAVEL_
		$a_01_5 = {41 54 55 41 4c 49 5a 41 52 5f 45 58 45 43 55 54 41 56 45 4c 5f } //01 00  ATUALIZAR_EXECUTAVEL_
		$a_01_6 = {62 61 6e 63 6f 62 72 61 73 69 6c 2e 63 6f 6d 2e 62 72 } //01 00  bancobrasil.com.br
		$a_00_7 = {be 01 00 00 00 8b 45 fc 8b 80 0c 03 00 00 0f b6 44 30 ff 33 d8 8d 45 d0 50 89 5d d4 c6 45 d8 00 8d 55 d4 33 c9 b8 } //01 00 
		$a_02_8 = {6a 00 6a 00 ff 75 f8 68 90 01 03 00 8d 55 ac b8 90 01 02 00 00 e8 90 01 04 ff 75 ac 68 90 01 03 00 8d 45 b0 ba 04 00 00 00 e8 90 01 04 8b 45 b0 e8 90 01 04 50 8b 45 f4 e8 90 01 04 50 6a 00 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}