
rule Backdoor_Win32_Mosucker_Y{
	meta:
		description = "Backdoor:Win32/Mosucker.Y,SIGNATURE_TYPE_PEHSTR,1d 00 1d 00 0d 00 00 0a 00 "
		
	strings :
		$a_01_0 = {4d 4d 50 30 37 2e 43 6f 6d 6d 61 6e 64 4c 69 6e 65 31 } //0a 00  MMP07.CommandLine1
		$a_01_1 = {69 6e 74 65 72 6e 65 74 20 65 78 70 6c 6f 72 65 72 00 45 78 70 6c 6f 72 65 72 00 00 4d 4d 50 30 37 00 } //04 00 
		$a_01_2 = {5c 00 47 00 75 00 69 00 64 00 6f 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 } //01 00  \Guido\Desktop\
		$a_01_3 = {44 72 69 76 65 31 } //01 00  Drive1
		$a_01_4 = {52 65 73 74 61 72 74 } //01 00  Restart
		$a_01_5 = {74 6d 72 4f 6e 6c 69 6e 65 } //01 00  tmrOnline
		$a_01_6 = {74 6d 72 55 70 64 61 74 65 72 } //01 00  tmrUpdater
		$a_01_7 = {74 6d 72 43 47 49 } //01 00  tmrCGI
		$a_01_8 = {74 6d 72 49 43 51 } //01 00  tmrICQ
		$a_01_9 = {6c 62 6c 49 43 51 } //01 00  lblICQ
		$a_01_10 = {74 6d 72 43 6f 6e 6e 65 63 74 } //01 00  tmrConnect
		$a_01_11 = {74 6d 72 50 61 73 73 77 6f 72 64 } //01 00  tmrPassword
		$a_01_12 = {6c 73 74 44 61 74 61 54 72 61 6e 73 } //00 00  lstDataTrans
	condition:
		any of ($a_*)
 
}