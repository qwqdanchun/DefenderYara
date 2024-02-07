
rule Worm_BAT_Puontib_C{
	meta:
		description = "Worm:BAT/Puontib.C,SIGNATURE_TYPE_PEHSTR_EXT,2a 00 2a 00 0b 00 00 0a 00 "
		
	strings :
		$a_01_0 = {00 55 53 42 53 70 72 65 61 64 00 } //0a 00 
		$a_00_1 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //0a 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //0a 00  autorun.inf
		$a_01_3 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //01 00  [autorun]
		$a_01_4 = {00 4c 41 4e 53 70 72 65 61 64 00 } //01 00 
		$a_01_5 = {00 59 61 68 6f 6f 53 70 72 65 61 64 00 } //01 00 
		$a_01_6 = {00 50 32 50 53 70 72 65 61 64 00 } //01 00 
		$a_01_7 = {00 4d 53 4e 53 70 72 65 61 64 00 } //01 00 
		$a_01_8 = {00 53 6b 79 70 65 53 70 72 65 61 64 00 } //01 00 
		$a_01_9 = {4b 65 79 6c 6f 67 67 65 72 } //01 00  Keylogger
		$a_01_10 = {00 52 75 6e 00 47 43 00 4b 65 65 70 41 6c 69 76 65 00 } //00 00  刀湵䜀C敋灥汁癩e
	condition:
		any of ($a_*)
 
}