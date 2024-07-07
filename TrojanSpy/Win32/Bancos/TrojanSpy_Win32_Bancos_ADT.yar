
rule TrojanSpy_Win32_Bancos_ADT{
	meta:
		description = "TrojanSpy:Win32/Bancos.ADT,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {0f b7 01 83 c0 90 01 01 66 83 f8 6f 77 0a 83 e0 7f 0f a3 05 90 01 04 72 05 66 c7 01 00 00 90 00 } //2
		$a_01_1 = {0f b7 01 66 83 e8 08 74 0e 83 c0 d8 66 83 e8 0a 72 05 66 c7 01 00 00 c3 } //2
		$a_00_2 = {2e 00 62 00 72 00 2f 00 48 00 4f 00 42 00 2d 00 4d 00 45 00 55 00 48 00 53 00 42 00 43 00 2f 00 73 00 65 00 72 00 76 00 6c 00 65 00 74 00 73 00 2f 00 4c 00 6f 00 67 00 69 00 6e 00 4d 00 65 00 75 00 48 00 53 00 42 00 43 00 3f 00 43 00 50 00 46 00 3d 00 } //2 .br/HOB-MEUHSBC/servlets/LoginMeuHSBC?CPF=
		$a_00_3 = {61 00 67 00 5f 00 63 00 74 00 61 00 } //1 ag_cta
		$a_00_4 = {43 00 4f 00 4e 00 46 00 49 00 52 00 4d 00 45 00 20 00 43 00 4f 00 4d 00 20 00 41 00 20 00 53 00 55 00 41 00 20 00 53 00 45 00 4e 00 48 00 41 00 20 00 50 00 48 00 4f 00 4e 00 45 00 20 00 43 00 45 00 4e 00 54 00 45 00 52 00 20 00 48 00 53 00 42 00 43 00 2e 00 } //1 CONFIRME COM A SUA SENHA PHONE CENTER HSBC.
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_00_2  & 1)*2+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}