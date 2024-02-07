
rule TrojanSpy_Win32_Bancos_NV{
	meta:
		description = "TrojanSpy:Win32/Bancos.NV,SIGNATURE_TYPE_PEHSTR,15 00 14 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {00 00 2e 00 65 00 78 00 65 00 00 00 00 00 72 00 65 00 67 00 77 00 72 00 69 00 74 00 65 00 00 00 } //0a 00 
		$a_01_1 = {00 50 73 65 6e 68 61 00 00 41 72 71 75 69 76 6f 00 } //01 00 
		$a_01_2 = {62 00 72 00 61 00 64 00 65 00 73 00 63 00 6f 00 } //01 00  bradesco
		$a_01_3 = {63 00 61 00 69 00 78 00 61 00 } //01 00  caixa
		$a_01_4 = {73 00 61 00 6e 00 74 00 61 00 6e 00 64 00 65 00 72 00 } //00 00  santander
	condition:
		any of ($a_*)
 
}