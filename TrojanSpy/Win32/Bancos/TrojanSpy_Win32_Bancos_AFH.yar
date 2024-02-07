
rule TrojanSpy_Win32_Bancos_AFH{
	meta:
		description = "TrojanSpy:Win32/Bancos.AFH,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {2e 00 61 00 6c 00 65 00 73 00 73 00 67 00 79 00 6d 00 2e 00 63 00 68 00 2f 00 74 00 72 00 61 00 69 00 6e 00 69 00 6e 00 67 00 2f 00 90 02 04 2f 00 90 02 04 2e 00 70 00 68 00 70 00 90 00 } //01 00 
		$a_00_1 = {54 00 65 00 63 00 6c 00 61 00 64 00 6f 00 20 00 76 00 69 00 72 00 74 00 75 00 61 00 6c 00 20 00 64 00 65 00 73 00 61 00 62 00 69 00 6c 00 69 00 74 00 61 00 64 00 6f 00 2c 00 } //01 00  Teclado virtual desabilitado,
		$a_00_2 = {6d 00 65 00 73 00 73 00 61 00 67 00 65 00 3d 00 } //00 00  message=
	condition:
		any of ($a_*)
 
}