
rule TrojanSpy_Win32_Banker_AGW{
	meta:
		description = "TrojanSpy:Win32/Banker.AGW,SIGNATURE_TYPE_PEHSTR,05 00 05 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 00 4e 00 53 00 45 00 52 00 54 00 20 00 49 00 4e 00 54 00 4f 00 20 00 63 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 65 00 5f 00 64 00 65 00 70 00 5f 00 63 00 6f 00 6d 00 75 00 6e 00 69 00 63 00 61 00 63 00 61 00 6f 00 20 00 28 00 4e 00 5f 00 4d 00 43 00 41 00 44 00 44 00 52 00 45 00 53 00 53 00 20 00 2c 00 20 00 4e 00 5f 00 50 00 4f 00 52 00 54 00 41 00 29 00 20 00 56 00 41 00 4c 00 55 00 45 00 53 00 20 00 28 00 3a 00 4d 00 43 00 41 00 44 00 44 00 52 00 45 00 53 00 53 00 2c 00 20 00 3a 00 50 00 4f 00 52 00 54 00 41 00 29 00 20 00 } //01 00  INSERT INTO controle_dep_comunicacao (N_MCADDRESS , N_PORTA) VALUES (:MCADDRESS, :PORTA) 
		$a_01_1 = {6e 65 74 73 68 20 66 69 72 65 77 61 6c 6c 20 61 64 64 20 61 6c 6c 6f 77 65 64 70 72 6f 67 72 61 6d 20 } //01 00  netsh firewall add allowedprogram 
		$a_01_2 = {2d 43 20 2d 73 73 68 20 2d 32 20 2d 50 20 32 32 20 2d 69 20 } //01 00  -C -ssh -2 -P 22 -i 
		$a_01_3 = {2a 2a 52 65 66 65 72 65 6e 63 69 61 20 43 61 72 64 2a 2a } //01 00  **Referencia Card**
		$a_01_4 = {48 53 42 43 20 42 41 4e 4b 20 42 52 41 53 49 4c 20 53 2e 41 2e 20 2d 20 42 41 4e 43 4f 20 4d } //01 00  HSBC BANK BRASIL S.A. - BANCO M
		$a_01_5 = {42 61 6e 63 6f 20 53 61 6e 74 61 6e 64 65 72 20 53 2e 41 2e } //01 00  Banco Santander S.A.
		$a_01_6 = {28 4e 5f 55 53 45 52 2c 20 4e 5f 50 41 53 53 29 20 56 41 4c 55 45 53 20 28 3a 55 53 45 52 2c 20 3a 50 41 53 53 29 } //01 00  (N_USER, N_PASS) VALUES (:USER, :PASS)
		$a_01_7 = {68 74 74 70 3a 2f 2f 70 72 6f 6d 6f 74 65 2e 6f 72 6b 75 74 2e 63 6f 6d 2f 70 72 65 76 69 65 77 3f 6e 74 3d 6f 72 6b 75 74 2e 63 6f 6d 26 74 74 3d } //01 00  http://promote.orkut.com/preview?nt=orkut.com&tt=
		$a_01_8 = {45 6d 62 65 64 64 65 64 57 42 20 68 74 74 70 3a 2f 2f 62 73 61 6c 73 61 2e 63 6f 6d 2f } //01 00  EmbeddedWB http://bsalsa.com/
		$a_01_9 = {4e 75 6d 65 72 6f 20 43 61 72 64 2e 2e 2e 2e 3a } //01 00  Numero Card....:
		$a_01_10 = {63 72 65 64 69 74 46 6f 72 6d 3a 63 61 72 64 4e 75 6d 62 65 72 } //00 00  creditForm:cardNumber
	condition:
		any of ($a_*)
 
}