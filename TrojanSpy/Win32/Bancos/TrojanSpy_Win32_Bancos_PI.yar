
rule TrojanSpy_Win32_Bancos_PI{
	meta:
		description = "TrojanSpy:Win32/Bancos.PI,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 09 00 00 14 00 "
		
	strings :
		$a_03_0 = {eb 07 c7 45 90 01 01 01 00 00 00 83 f3 90 01 01 8d 45 90 01 01 50 89 5d 90 01 01 c6 45 90 01 01 00 8d 55 90 01 01 33 c9 b8 90 01 04 e8 90 01 04 8b 55 90 01 01 8d 45 90 01 01 e8 90 01 04 8b f3 47 ff 4d 90 01 01 75 a8 90 00 } //02 00 
		$a_00_1 = {42 4b 62 68 54 62 7e 58 42 4b 21 3b ba 28 c3 } //02 00 
		$a_01_2 = {0f b7 1a 0f bf 31 0f af de 81 c3 00 08 00 00 8b 74 24 24 c1 fb 0c 83 c1 02 89 1e 83 c2 02 83 44 24 24 04 40 83 f8 40 7c d7 } //01 00 
		$a_01_3 = {45 6d 62 65 64 64 65 64 20 57 65 62 20 42 72 6f 77 73 65 72 20 66 72 6f 6d 3a 20 68 74 74 70 3a 2f 2f 62 73 61 6c 73 61 2e 63 6f 6d 2f } //01 00  Embedded Web Browser from: http://bsalsa.com/
		$a_01_4 = {55 73 75 61 72 69 6f 20 2f 20 53 65 6e 68 61 } //02 00  Usuario / Senha
		$a_01_5 = {6f 20 4e 6f 73 73 61 20 43 68 61 76 65 20 64 65 20 53 65 67 75 72 61 6e } //03 00  o Nossa Chave de Seguran
		$a_01_6 = {54 69 6d 65 72 4b 69 6c 6c 47 62 } //02 00  TimerKillGb
		$a_01_7 = {54 69 6d 65 72 53 74 6f 70 4b 69 6c 6c } //01 00  TimerStopKill
		$a_01_8 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //00 00  SeDebugPrivilege
	condition:
		any of ($a_*)
 
}