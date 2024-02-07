
rule TrojanSpy_Win32_Banker_GQ{
	meta:
		description = "TrojanSpy:Win32/Banker.GQ,SIGNATURE_TYPE_PEHSTR_EXT,4a 06 4a 06 10 00 00 ffffffe8 03 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //64 00  SOFTWARE\Borland\Delphi\RTL
		$a_00_1 = {61 75 74 6f 72 75 6e 2e 69 6e 66 } //64 00  autorun.inf
		$a_00_2 = {73 68 65 6c 6c 65 78 65 63 75 74 65 } //64 00  shellexecute
		$a_00_3 = {73 68 65 6c 6c 5c 41 75 74 6f 5c 63 6f 6d 6d 61 6e 64 } //64 00  shell\Auto\command
		$a_00_4 = {49 45 46 72 61 6d 65 } //64 00  IEFrame
		$a_00_5 = {5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //64 00  \Software\Microsoft\Windows\CurrentVersion\Run
		$a_00_6 = {53 79 73 43 6f 6d } //03 00  SysCom
		$a_02_7 = {43 3a 5c 44 6f 63 75 6d 65 6e 74 73 20 61 6e 64 20 53 65 74 74 69 6e 67 73 5c 41 6c 6c 20 55 73 65 72 73 5c 4d 65 6e 75 20 49 6e 69 63 69 61 72 5c 50 72 6f 67 72 61 6d 61 73 5c 49 6e 69 63 69 61 6c 69 7a 61 72 90 02 0a 2e 65 78 65 90 00 } //03 00 
		$a_02_8 = {43 3a 5c 44 6f 63 75 6d 65 6e 74 73 20 61 6e 64 20 53 65 74 74 69 6e 67 73 5c 41 6c 6c 20 55 73 65 72 73 5c 73 74 61 72 74 20 6d 65 6e 75 5c 70 72 6f 67 72 61 6d 73 5c 73 74 61 72 74 75 70 90 02 0a 2e 65 78 65 90 00 } //01 00 
		$a_00_9 = {6d 73 6e 6d 73 67 72 2e 65 78 65 } //01 00  msnmsgr.exe
		$a_00_10 = {68 74 74 70 3a 2f 2f 77 77 77 2e 62 62 2e 63 6f 6d 2e 62 72 2f 70 6f 72 74 61 6c 62 62 } //01 00  http://www.bb.com.br/portalbb
		$a_00_11 = {68 74 74 70 3a 2f 2f 77 77 77 2e 62 72 61 64 65 73 63 6f 2e 63 6f 6d 2e 62 72 } //01 00  http://www.bradesco.com.br
		$a_00_12 = {68 74 74 70 3a 2f 2f 77 77 77 2e 75 6e 69 62 61 6e 63 6f 2e 63 6f 6d 2e 62 72 } //01 00  http://www.unibanco.com.br
		$a_00_13 = {68 74 74 70 3a 2f 2f 77 77 77 2e 69 74 61 75 2e 63 6f 6d 2e 62 72 } //01 00  http://www.itau.com.br
		$a_00_14 = {68 74 74 70 73 3a 2f 2f 69 6e 74 65 72 6e 65 74 62 61 6e 6b 69 6e 67 2e 63 61 69 78 61 2e 67 6f 76 2e 62 72 } //01 00  https://internetbanking.caixa.gov.br
		$a_00_15 = {68 74 74 70 3a 2f 2f 77 77 77 2e 6e 6f 73 73 61 63 61 69 78 61 2e 63 6f 6d 2e 62 72 } //00 00  http://www.nossacaixa.com.br
	condition:
		any of ($a_*)
 
}