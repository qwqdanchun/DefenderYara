
rule TrojanSpy_Win32_Bancos_WE{
	meta:
		description = "TrojanSpy:Win32/Bancos.WE,SIGNATURE_TYPE_PEHSTR,08 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {6c 00 69 00 64 00 6f 00 73 00 2e 00 20 00 50 00 6f 00 72 00 20 00 66 00 61 00 76 00 6f 00 72 00 2c 00 20 00 64 00 69 00 67 00 69 00 74 00 65 00 20 00 63 00 6f 00 72 00 72 00 65 00 74 00 61 00 6d 00 65 00 6e 00 74 00 65 00 2e 00 } //02 00  lidos. Por favor, digite corretamente.
		$a_01_1 = {2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 2f 00 61 00 64 00 6d 00 69 00 6e 00 2f 00 6d 00 61 00 69 00 6c 00 2f 00 6d 00 6f 00 64 00 69 00 6e 00 66 00 6f 00 2e 00 74 00 78 00 74 00 } //03 00  .com.br/admin/mail/modinfo.txt
		$a_01_2 = {3e 00 5b 00 41 00 47 00 2f 00 43 00 54 00 2f 00 44 00 49 00 47 00 5d 00 3a 00 20 00 } //01 00  >[AG/CT/DIG]: 
		$a_01_3 = {72 00 65 00 6d 00 65 00 74 00 65 00 6e 00 74 00 65 00 3d 00 } //00 00  remetente=
	condition:
		any of ($a_*)
 
}