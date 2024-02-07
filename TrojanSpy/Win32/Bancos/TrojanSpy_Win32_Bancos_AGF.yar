
rule TrojanSpy_Win32_Bancos_AGF{
	meta:
		description = "TrojanSpy:Win32/Bancos.AGF,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 00 62 00 6c 00 69 00 6e 00 66 00 65 00 63 00 74 00 73 00 20 00 28 00 43 00 4f 00 4d 00 50 00 55 00 54 00 45 00 52 00 5f 00 4e 00 41 00 4d 00 45 00 2c 00 20 00 55 00 53 00 45 00 52 00 5f 00 4e 00 41 00 4d 00 45 00 } //01 00  tblinfects (COMPUTER_NAME, USER_NAME
		$a_01_1 = {79 00 79 00 33 00 31 00 33 00 39 00 36 00 } //01 00  yy31396
		$a_03_2 = {76 00 50 00 72 00 6f 00 34 00 5c 00 90 02 0a 5c 00 49 00 73 00 49 00 6e 00 66 00 65 00 63 00 74 00 65 00 64 00 90 00 } //01 00 
		$a_01_3 = {4c 00 6f 00 67 00 6f 00 66 00 2e 00 64 00 6c 00 6c 00 } //00 00  Logof.dll
	condition:
		any of ($a_*)
 
}