
rule TrojanSpy_Win32_Banker_DE{
	meta:
		description = "TrojanSpy:Win32/Banker.DE,SIGNATURE_TYPE_PEHSTR,ffffff92 01 ffffff92 01 08 00 00 64 00 "
		
	strings :
		$a_01_0 = {53 00 56 00 43 00 48 00 4f 00 53 00 54 00 } //64 00  SVCHOST
		$a_01_1 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //64 00  SOFTWARE\Borland\Delphi\RTL
		$a_01_2 = {53 00 69 00 73 00 74 00 65 00 6d 00 61 00 20 00 6f 00 70 00 65 00 72 00 61 00 63 00 69 00 6f 00 6e 00 61 00 6c 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 } //64 00  Sistema operacional Microsoft
		$a_01_3 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 43 00 6f 00 72 00 70 00 6f 00 72 00 61 00 74 00 69 00 6f 00 6e 00 2e 00 20 00 54 00 6f 00 64 00 6f 00 73 00 20 00 6f 00 73 00 20 00 64 00 69 00 72 00 65 00 69 00 74 00 6f 00 73 00 20 00 72 00 65 00 73 00 65 00 72 00 76 00 61 00 64 00 6f 00 73 00 2e 00 } //01 00  Microsoft Corporation. Todos os direitos reservados.
		$a_01_4 = {4d 41 49 4c 20 46 52 4f 4d 3a 3c } //01 00  MAIL FROM:<
		$a_01_5 = {75 5f 50 72 69 6e 63 5f 32 36 30 36 } //01 00  u_Princ_2606
		$a_01_6 = {45 20 6d 20 50 20 72 20 45 20 73 20 41 20 73 20 2e 20 4e 20 45 20 54 } //01 00  E m P r E s A s . N E T
		$a_01_7 = {7b 20 49 20 6e 20 66 20 2e 20 4e 20 45 20 54 20 45 20 6d 20 70 20 72 20 65 20 73 20 61 } //00 00  { I n f . N E T E m p r e s a
	condition:
		any of ($a_*)
 
}