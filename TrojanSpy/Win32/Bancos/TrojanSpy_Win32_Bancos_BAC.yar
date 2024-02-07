
rule TrojanSpy_Win32_Bancos_BAC{
	meta:
		description = "TrojanSpy:Win32/Bancos.BAC,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 65 6e 68 61 } //01 00  senha
		$a_00_1 = {63 00 69 00 74 00 69 00 62 00 61 00 6e 00 6b 00 } //01 00  citibank
		$a_00_2 = {53 49 43 52 45 44 49 54 69 6d 65 72 } //01 00  SICREDITimer
		$a_00_3 = {73 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 61 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 70 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //01 00  select * from antivirusproduct
		$a_00_4 = {62 00 72 00 61 00 64 00 65 00 73 00 63 00 6f 00 } //01 00  bradesco
		$a_01_5 = {8b c0 33 d2 66 33 10 8b 08 c1 e9 10 66 33 d1 66 33 50 04 66 33 50 06 66 33 50 08 66 33 50 0a 66 33 50 0c 66 33 50 0e 66 33 50 10 8b 40 10 c1 e8 10 66 33 d0 8b c2 c3 } //00 00 
	condition:
		any of ($a_*)
 
}