
rule TrojanSpy_Win32_Bancos_AGZ{
	meta:
		description = "TrojanSpy:Win32/Bancos.AGZ,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 69 00 74 00 69 00 62 00 61 00 6e 00 6b 00 20 00 42 00 72 00 61 00 73 00 69 00 6c 00 20 00 2d 00 20 00 47 00 6f 00 6f 00 67 00 6c 00 65 00 20 00 43 00 68 00 72 00 6f 00 6d 00 65 00 } //01 00  Citibank Brasil - Google Chrome
		$a_01_1 = {62 00 61 00 6e 00 63 00 6f 00 62 00 72 00 61 00 73 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 2f 00 61 00 61 00 70 00 66 00 2f 00 6c 00 6f 00 67 00 69 00 6e 00 2e 00 6a 00 73 00 70 00 3f 00 61 00 61 00 70 00 66 00 2e 00 49 00 44 00 48 00 3d 00 73 00 69 00 6d 00 26 00 70 00 65 00 72 00 66 00 69 00 6c 00 3d 00 } //01 00  bancobrasil.com.br/aapf/login.jsp?aapf.IDH=sim&perfil=
		$a_01_2 = {5b 00 62 00 62 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 5d 00 20 00 2d 00 20 00 2d 00 20 00 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 20 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 } //00 00  [bb.com.br] - - Mozilla Firefox
	condition:
		any of ($a_*)
 
}