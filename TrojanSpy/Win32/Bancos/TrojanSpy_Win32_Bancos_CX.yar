
rule TrojanSpy_Win32_Bancos_CX{
	meta:
		description = "TrojanSpy:Win32/Bancos.CX,SIGNATURE_TYPE_PEHSTR,33 00 2e 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 6c 00 69 00 6f 00 32 00 30 00 32 00 30 00 2e 00 77 00 65 00 62 00 63 00 69 00 6e 00 64 00 61 00 72 00 69 00 6f 00 2e 00 63 00 6f 00 6d 00 2f 00 77 00 } //0a 00  http://clio2020.webcindario.com/w
		$a_01_1 = {77 00 69 00 6e 00 7a 00 69 00 6e 00 6e 00 } //05 00  winzinn
		$a_01_2 = {54 6d 61 69 73 76 61 6d 6f 71 75 65 76 61 6d 6f } //05 00  Tmaisvamoquevamo
		$a_01_3 = {2a 00 2e 00 64 00 62 00 78 00 } //05 00  *.dbx
		$a_01_4 = {2a 00 2e 00 77 00 61 00 62 00 } //05 00  *.wab
		$a_01_5 = {2a 00 2e 00 6d 00 62 00 78 00 } //05 00  *.mbx
		$a_01_6 = {2a 00 2e 00 65 00 6d 00 6c 00 } //05 00  *.eml
		$a_01_7 = {2a 00 2e 00 6d 00 62 00 6f 00 78 00 } //01 00  *.mbox
		$a_01_8 = {53 69 7a 65 6f 66 52 65 73 6f 75 72 63 65 } //00 00  SizeofResource
	condition:
		any of ($a_*)
 
}