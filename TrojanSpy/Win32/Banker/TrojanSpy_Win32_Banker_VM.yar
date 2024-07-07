
rule TrojanSpy_Win32_Banker_VM{
	meta:
		description = "TrojanSpy:Win32/Banker.VM,SIGNATURE_TYPE_PEHSTR,31 01 31 01 1b 00 00 "
		
	strings :
		$a_01_0 = {3c 69 6e 70 75 74 20 74 79 70 65 3d 68 69 64 64 65 6e 20 6e 61 6d 65 3d 4e 6f 6d 65 55 73 75 61 72 69 6f 20 69 64 3d 4e 6f 6d 65 55 73 75 61 72 69 6f 20 73 69 7a 65 3d 38 3e } //100 <input type=hidden name=NomeUsuario id=NomeUsuario size=8>
		$a_01_1 = {3c 69 6e 70 75 74 20 74 79 70 65 3d 68 69 64 64 65 6e 20 6e 61 6d 65 3d 53 65 6e 68 61 55 73 75 61 72 69 6f 20 69 64 3d 53 65 6e 68 61 55 73 75 61 72 69 6f 20 73 69 7a 65 3d 36 3e } //100 <input type=hidden name=SenhaUsuario id=SenhaUsuario size=6>
		$a_01_2 = {3c 69 6e 70 75 74 20 74 79 70 65 3d 68 69 64 64 65 6e 20 6e 61 6d 65 3d 74 78 74 41 73 73 42 61 6e 20 69 64 3d 74 78 74 41 73 73 42 61 6e 20 73 69 7a 65 3d 38 3e } //100 <input type=hidden name=txtAssBan id=txtAssBan size=8>
		$a_01_3 = {62 61 6e 63 6f 61 6c 66 61 } //1 bancoalfa
		$a_01_4 = {62 61 6e 63 6f 62 72 61 73 69 6c } //1 bancobrasil
		$a_01_5 = {62 61 6e 63 6f 64 6f 65 73 74 61 64 6f } //1 bancodoestado
		$a_01_6 = {62 61 6e 63 6f 66 69 62 72 61 } //1 bancofibra
		$a_01_7 = {62 61 6e 63 6f 72 75 72 61 6c } //1 bancorural
		$a_01_8 = {62 61 6e 65 73 65 } //1 banese
		$a_01_9 = {62 61 6e 65 73 70 61 } //1 banespa
		$a_01_10 = {62 61 6e 72 69 73 75 6c } //1 banrisul
		$a_01_11 = {62 62 63 6f 6d 62 72 } //1 bbcombr
		$a_01_12 = {62 65 73 63 } //1 besc
		$a_01_13 = {63 69 74 69 62 61 6e 6b } //1 citibank
		$a_01_14 = {63 6f 63 72 65 64 68 6f 6d 65 } //1 cocredhome
		$a_01_15 = {69 6e 74 65 72 6e 65 74 62 61 6e 6b 69 6e 67 63 61 69 78 61 } //1 internetbankingcaixa
		$a_01_16 = {69 6e 74 65 72 6e 65 74 63 61 69 78 61 2e 63 61 69 78 61 2e 67 6f 76 2e 62 72 } //1 internetcaixa.caixa.gov.br
		$a_01_17 = {6e 6f 73 73 61 63 61 69 78 61 } //1 nossacaixa
		$a_01_18 = {72 65 61 6c 69 6e 74 65 72 6e 65 74 65 6d 70 72 65 73 61 } //1 realinternetempresa
		$a_01_19 = {73 61 6e 74 61 6e 64 65 72 } //1 santander
		$a_01_20 = {73 65 63 75 72 65 77 65 62 } //1 secureweb
		$a_01_21 = {73 69 63 72 65 64 69 } //1 sicredi
		$a_01_22 = {73 6f 66 69 73 61 } //1 sofisa
		$a_01_23 = {73 75 64 61 6d 65 72 69 73 } //1 sudameris
		$a_01_24 = {74 65 63 6c 61 64 6f 76 69 72 74 75 61 6c } //1 tecladovirtual
		$a_01_25 = {74 72 69 62 61 6e 63 6f } //1 tribanco
		$a_01_26 = {75 6e 69 62 61 6e 63 6f } //1 unibanco
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*100+(#a_01_2  & 1)*100+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_01_21  & 1)*1+(#a_01_22  & 1)*1+(#a_01_23  & 1)*1+(#a_01_24  & 1)*1+(#a_01_25  & 1)*1+(#a_01_26  & 1)*1) >=305
 
}