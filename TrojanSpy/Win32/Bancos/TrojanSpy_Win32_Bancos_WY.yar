
rule TrojanSpy_Win32_Bancos_WY{
	meta:
		description = "TrojanSpy:Win32/Bancos.WY,SIGNATURE_TYPE_PEHSTR,06 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {6c 00 69 00 64 00 6f 00 73 00 2e 00 20 00 50 00 6f 00 72 00 20 00 66 00 61 00 76 00 6f 00 72 00 20 00 65 00 73 00 63 00 72 00 69 00 62 00 61 00 20 00 63 00 6f 00 72 00 72 00 65 00 63 00 74 00 61 00 6d 00 65 00 6e 00 74 00 65 00 2e 00 } //1 lidos. Por favor escriba correctamente.
		$a_01_1 = {4d 00 61 00 64 00 65 00 20 00 62 00 79 00 3a 00 20 00 73 00 63 00 72 00 6c 00 61 00 62 00 73 00 } //2 Made by: scrlabs
		$a_01_2 = {42 00 61 00 6e 00 6b 00 69 00 6e 00 74 00 65 00 72 00 3e 00 42 00 61 00 6e 00 63 00 61 00 20 00 64 00 65 00 20 00 70 00 61 00 72 00 74 00 69 00 63 00 75 00 6c 00 61 00 72 00 65 00 73 00 3e 00 49 00 6e 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 65 00 73 00 2d 00 46 00 69 00 6e 00 61 00 6e 00 63 00 69 00 61 00 63 00 69 00 } //2 Bankinter>Banca de particulares>Inversiones-Financiaci
		$a_01_3 = {6e 00 20 00 2d 00 20 00 50 00 61 00 79 00 50 00 61 00 6c 00 } //1 n - PayPal
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1) >=4
 
}