
rule TrojanSpy_Win32_Bancos_ADU{
	meta:
		description = "TrojanSpy:Win32/Bancos.ADU,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 00 72 00 65 00 65 00 6e 00 63 00 68 00 69 00 6d 00 65 00 6e 00 74 00 6f 00 20 00 69 00 6e 00 63 00 6f 00 72 00 72 00 65 00 74 00 6f 00 2e 00 } //02 00  Preenchimento incorreto.
		$a_01_1 = {2f 00 62 00 68 00 66 00 2f 00 74 00 65 00 6d 00 70 00 2f 00 69 00 6e 00 64 00 65 00 78 00 2e 00 61 00 73 00 70 00 3f 00 73 00 74 00 61 00 72 00 74 00 3d 00 74 00 72 00 75 00 65 00 26 00 78 00 78 00 78 00 3d 00 31 00 30 00 26 00 78 00 3d 00 } //02 00  /bhf/temp/index.asp?start=true&xxx=10&x=
		$a_01_2 = {64 00 65 00 2e 00 61 00 73 00 70 00 3f 00 73 00 74 00 61 00 72 00 74 00 3d 00 74 00 72 00 75 00 65 00 } //01 00  de.asp?start=true
		$a_01_3 = {63 61 69 64 65 6e 74 72 6f } //01 00  caidentro
		$a_01_4 = {78 75 72 75 70 61 } //01 00  xurupa
		$a_01_5 = {63 61 69 66 6f 72 61 } //00 00  caifora
	condition:
		any of ($a_*)
 
}