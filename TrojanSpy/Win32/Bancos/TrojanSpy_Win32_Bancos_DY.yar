
rule TrojanSpy_Win32_Bancos_DY{
	meta:
		description = "TrojanSpy:Win32/Bancos.DY,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 65 00 6e 00 68 00 61 00 20 00 43 00 61 00 72 00 74 00 61 00 6f 00 3a 00 20 00 43 00 6f 00 6e 00 74 00 65 00 } //01 00  Senha Cartao: Conte
		$a_01_1 = {49 00 74 00 61 00 4b 00 65 00 79 00 2e 00 2e 00 2e 00 2e 00 31 00 3a 00 } //01 00  ItaKey....1:
		$a_01_2 = {50 00 57 00 44 00 20 00 43 00 41 00 52 00 44 00 2e 00 2e 00 2e 00 2e 00 } //01 00  PWD CARD....
		$a_01_3 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 } //01 00  DisableTaskMgr
		$a_01_4 = {41 00 54 00 45 00 4e 00 43 00 41 00 4f 00 3a 00 20 00 53 00 45 00 4e 00 48 00 41 00 } //00 00  ATENCAO: SENHA
	condition:
		any of ($a_*)
 
}