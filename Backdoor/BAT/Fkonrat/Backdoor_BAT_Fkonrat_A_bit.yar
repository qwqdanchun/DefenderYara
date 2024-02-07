
rule Backdoor_BAT_Fkonrat_A_bit{
	meta:
		description = "Backdoor:BAT/Fkonrat.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 03 00 "
		
	strings :
		$a_01_0 = {46 6b 6e 30 77 6e 65 64 20 52 61 74 } //02 00  Fkn0wned Rat
		$a_01_1 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 64 00 20 00 61 00 6e 00 64 00 20 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 64 00 } //02 00  downloaded and executed
		$a_01_2 = {66 00 64 00 66 00 67 00 64 00 66 00 67 00 73 00 64 00 67 00 64 00 66 00 67 00 64 00 66 00 67 00 } //01 00  fdfgdfgsdgdfgdfg
		$a_01_3 = {5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 73 00 2e 00 65 00 78 00 65 00 } //01 00  \svchosts.exe
		$a_01_4 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //00 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_00_5 = {5d 04 00 00 } //7a a1 
	condition:
		any of ($a_*)
 
}