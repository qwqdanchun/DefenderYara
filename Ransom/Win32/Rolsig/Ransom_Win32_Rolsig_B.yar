
rule Ransom_Win32_Rolsig_B{
	meta:
		description = "Ransom:Win32/Rolsig.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {ba 81 23 9e 6f 8b 90 01 01 e8 90 01 04 ba 60 cb da 25 a3 90 01 04 8b 90 01 01 e8 90 01 04 ba b9 86 56 26 a3 90 01 04 8b 90 01 01 e8 90 01 04 ba 3b 20 40 64 a3 90 01 04 8b 90 01 01 e8 90 01 04 ba 89 49 46 6a a3 90 01 04 8b 90 01 01 e8 90 01 04 ba 8f 91 f4 75 a3 90 01 04 8b 90 01 01 e8 90 01 04 ba 11 b3 31 45 a3 90 01 04 8b 90 01 01 e8 90 01 04 ba 87 bb 3b 6a a3 90 00 } //1
		$a_03_1 = {ba b7 e6 7b 6e 8b 90 01 01 e8 90 01 04 ba 02 1b a3 41 a3 90 01 04 8b 90 01 01 e8 90 01 04 ba f1 67 85 46 a3 90 01 04 8b 90 01 01 e8 90 01 04 ba 00 a5 37 65 a3 90 01 04 8b 90 01 01 e8 90 01 04 ba c3 b1 f3 3b a3 90 01 04 8b 90 01 01 e8 90 01 04 ba 4c 32 94 03 a3 90 01 04 8b 90 01 01 e8 90 01 04 ba 81 e9 18 4c a3 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}