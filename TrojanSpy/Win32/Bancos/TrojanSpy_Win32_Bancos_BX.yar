
rule TrojanSpy_Win32_Bancos_BX{
	meta:
		description = "TrojanSpy:Win32/Bancos.BX,SIGNATURE_TYPE_PEHSTR_EXT,27 00 27 00 08 00 00 0a 00 "
		
	strings :
		$a_00_0 = {15 00 00 00 67 6f 76 65 72 6e 6f 40 62 72 61 73 69 6c 2e 67 6f 76 2e 62 72 } //0a 00 
		$a_01_1 = {06 00 00 00 44 61 74 61 3a 20 00 00 ff ff ff ff 07 00 00 00 20 48 6f 72 61 3a 20 00 } //05 00 
		$a_01_2 = {15 00 00 00 43 4f 4d 50 55 54 41 44 4f 52 5f 43 41 44 41 53 54 52 41 44 4f } //05 00 
		$a_00_3 = {40 67 6d 61 69 6c 2e 63 6f 6d } //05 00  @gmail.com
		$a_01_4 = {0c 54 46 5f 50 52 49 4e 43 49 50 41 4c } //02 00 
		$a_01_5 = {49 74 61 75 7a 69 6e 68 6f 70 61 73 } //02 00  Itauzinhopas
		$a_01_6 = {4d 45 44 49 44 4f 52 5f 54 45 4d 50 4f } //02 00  MEDIDOR_TEMPO
		$a_01_7 = {43 4f 4d 50 4f 4e 45 4e 54 45 5f 45 4e 56 49 41 52 } //00 00  COMPONENTE_ENVIAR
	condition:
		any of ($a_*)
 
}