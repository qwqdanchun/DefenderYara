
rule TrojanSpy_Win32_Banker_AEC{
	meta:
		description = "TrojanSpy:Win32/Banker.AEC,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 61 6e 74 23 61 6e 64 65 72 6e 23 65 74 2e 63 6f 23 6d 2e 62 23 72 2f 49 42 23 50 46 2f 4d 61 23 69 6e 2e 61 23 73 70 00 } //01 00 
		$a_01_1 = {5f 43 6f 6d 70 72 5f 50 61 67 6d 5f 49 6d 70 5f 44 52 45 5f 00 } //01 00 
		$a_01_2 = {2e 73 69 23 63 72 23 65 64 69 2e 63 6f 23 6d 2e 62 23 72 } //01 00  .si#cr#edi.co#m.b#r
		$a_01_3 = {3f 74 69 6d 23 65 4d 69 6c 6c 69 23 73 3d 30 26 63 6f 6f 70 46 69 6c 6c 3d } //01 00  ?tim#eMilli#s=0&coopFill=
		$a_01_4 = {74 6d 72 53 61 6e 74 61 53 65 67 75 72 61 54 69 6d 65 72 } //01 00  tmrSantaSeguraTimer
		$a_01_5 = {54 6d 72 52 65 69 6e 69 63 69 61 54 69 6d 65 72 } //01 00  TmrReiniciaTimer
		$a_01_6 = {70 6e 6c 49 74 61 43 54 62 43 6c 69 63 6b } //01 00  pnlItaCTbClick
		$a_01_7 = {6c 62 6c 43 61 72 74 61 6f 31 } //01 00  lblCartao1
		$a_01_8 = {4d 65 6e 73 61 67 65 6d 20 64 61 20 70 e1 67 69 6e 61 20 64 61 20 77 65 62 00 } //01 00 
		$a_01_9 = {53 49 43 52 45 44 49 00 54 65 6e 74 65 20 6e 6f 76 61 6d 65 6e 74 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}