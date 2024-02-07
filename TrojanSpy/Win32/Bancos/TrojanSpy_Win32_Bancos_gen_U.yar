
rule TrojanSpy_Win32_Bancos_gen_U{
	meta:
		description = "TrojanSpy:Win32/Bancos.gen!U,SIGNATURE_TYPE_PEHSTR_EXT,ffffffec 05 ffffff9c 05 2f 00 00 ffffffe8 03 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 } //c8 00  SOFTWARE\Borland\Delphi
		$a_01_1 = {4d 6f 7a 69 6c 6c 61 57 69 6e 64 6f 77 43 6c 61 73 73 } //c8 00  MozillaWindowClass
		$a_01_2 = {6d 75 6c 74 69 70 61 72 74 2f 6d 69 78 65 64 3b 20 62 6f 75 6e 64 61 72 79 3d } //64 00  multipart/mixed; boundary=
		$a_02_3 = {41 67 65 6e 63 69 61 90 02 21 43 6f 6e 74 61 90 02 50 53 65 6e 68 61 90 00 } //64 00 
		$a_02_4 = {43 6f 6e 74 61 3a 2e 2e 2e 90 02 30 53 65 6e 68 61 90 02 30 44 69 67 69 74 6f 90 00 } //0a 00 
		$a_01_5 = {62 6f 75 6e 64 61 72 79 3d 22 3d 5f 4e 65 78 74 50 61 72 74 5f 32 72 65 6c } //0a 00  boundary="=_NextPart_2rel
		$a_01_6 = {67 6d 61 69 6c 2d 73 6d 74 70 2d 69 6e 2e 6c 2e 67 6f 6f 67 6c 65 2e 63 6f 6d } //05 00  gmail-smtp-in.l.google.com
		$a_03_7 = {33 43 6c 69 63 6b 13 00 90 02 10 49 6d 61 67 65 90 00 } //05 00 
		$a_00_8 = {63 61 69 78 61 } //05 00  caixa
		$a_00_9 = {62 61 6e 63 6f 62 72 61 73 69 6c } //05 00  bancobrasil
		$a_00_10 = {76 69 72 75 73 20 73 65 6d 70 72 65 20 61 74 75 61 6c 69 7a 61 64 6f } //05 00  virus sempre atualizado
		$a_00_11 = {62 61 6e 63 6f 72 65 61 6c } //05 00  bancoreal
		$a_00_12 = {41 42 4e 20 41 4d 52 4f 20 } //05 00  ABN AMRO 
		$a_00_13 = {50 6f 72 74 61 6c 20 42 72 61 73 69 6c } //05 00  Portal Brasil
		$a_01_14 = {73 61 6e 74 61 6e 64 65 72 } //05 00  santander
		$a_00_15 = {42 61 6e 63 6f } //05 00  Banco
		$a_01_16 = {53 61 6e 74 61 6e 64 65 72 } //05 00  Santander
		$a_01_17 = {62 61 6e 65 73 70 61 } //05 00  banespa
		$a_00_18 = {62 72 61 64 65 73 63 6f } //05 00  bradesco
		$a_00_19 = {47 65 72 65 6e 63 69 61 64 6f 72 } //05 00  Gerenciador
		$a_00_20 = {46 69 6e 61 6e 63 65 69 72 6f } //05 00  Financeiro
		$a_01_21 = {42 61 6e 65 73 70 61 } //05 00  Banespa
		$a_00_22 = {69 74 61 75 2e 63 6f 6d } //05 00  itau.com
		$a_00_23 = {62 62 2e 63 6f 6d 2e 62 72 } //05 00  bb.com.br
		$a_00_24 = {5c 47 62 50 6c 75 67 69 6e 5c } //0a 00  \GbPlugin\
		$a_01_25 = {28 4c 53 68 69 66 74 20 68 6f 63 68 29 } //0c 00  (LShift hoch)
		$a_01_26 = {42 72 61 64 65 73 63 6f 20 49 6e 74 65 72 6e 65 74 20 42 61 6e 6b 69 6e 67 } //02 00  Bradesco Internet Banking
		$a_00_27 = {4b 65 79 50 72 65 73 73 } //07 00  KeyPress
		$a_00_28 = {41 67 65 6e 63 69 61 4b 65 79 50 72 65 73 73 } //07 00  AgenciaKeyPress
		$a_00_29 = {43 6f 6e 74 61 4b 65 79 50 72 65 73 73 } //06 00  ContaKeyPress
		$a_00_30 = {54 69 74 75 6c 61 72 2e 2e 2e } //06 00  Titular...
		$a_00_31 = {43 6f 6e 74 61 2e 2e 2e } //05 00  Conta...
		$a_00_32 = {64 69 67 69 74 6f 73 2e } //04 00  digitos.
		$a_00_33 = {69 6d 67 4c 6f 67 69 6e } //03 00  imgLogin
		$a_00_34 = {69 6d 67 43 6f 6e 66 69 72 6d } //02 00  imgConfirm
		$a_00_35 = {30 4d 6f 75 73 65 44 6f 77 6e } //03 00  0MouseDown
		$a_00_36 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //03 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_00_37 = {53 65 6e 68 61 } //02 00  Senha
		$a_00_38 = {73 65 63 72 65 74 61 } //04 00  secreta
		$a_00_39 = {6f 20 54 65 63 6c 61 64 6f 20 56 69 72 74 75 61 6c } //01 00  o Teclado Virtual
		$a_00_40 = {54 65 63 6c 61 64 6f } //01 00  Teclado
		$a_00_41 = {70 72 69 76 61 63 } //02 00  privac
		$a_00_42 = {66 6f 74 6f 73 } //01 00  fotos
		$a_00_43 = {41 72 71 75 69 76 6f } //02 00  Arquivo
		$a_00_44 = {69 64 65 6e 74 69 66 69 63 } //01 00  identific
		$a_00_45 = {69 6e 63 6f 72 72 65 74 61 } //38 ff  incorreta
		$a_00_46 = {40 6c 6f 67 68 61 75 73 2e 63 6f 6d 2e 62 72 00 } //00 00  汀杯慨獵挮浯戮r
	condition:
		any of ($a_*)
 
}