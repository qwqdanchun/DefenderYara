
rule Worm_Win32_Agent_DA{
	meta:
		description = "Worm:Win32/Agent.DA,SIGNATURE_TYPE_PEHSTR,ffffffe7 00 ffffffe7 00 10 00 00 64 00 "
		
	strings :
		$a_01_0 = {41 6d 69 72 43 69 76 69 6c 20 57 6f 72 6d 2e 70 64 62 } //64 00  AmirCivil Worm.pdb
		$a_01_1 = {59 6f 75 20 69 6e 66 65 63 74 65 64 20 62 79 20 69 72 76 69 72 75 73 20 54 45 41 4d } //0a 00  You infected by irvirus TEAM
		$a_01_2 = {5c 74 61 73 6b 6d 72 67 2e 65 78 65 } //0a 00  \taskmrg.exe
		$a_01_3 = {5c 44 72 69 76 65 72 33 32 2e 65 78 65 } //0a 00  \Driver32.exe
		$a_01_4 = {5c 53 65 78 20 53 74 6f 72 79 2e 74 78 74 2e 65 78 65 } //0a 00  \Sex Story.txt.exe
		$a_01_5 = {5c 53 65 78 53 74 6f 72 79 2e 74 78 74 } //01 00  \SexStory.txt
		$a_01_6 = {78 78 78 2e 33 67 70 } //01 00  xxx.3gp
		$a_01_7 = {63 72 69 6d 73 2e 6a 70 67 } //01 00  crims.jpg
		$a_01_8 = {73 65 78 20 77 65 62 73 68 6f 74 32 30 30 38 2e 73 63 72 } //01 00  sex webshot2008.scr
		$a_01_9 = {78 6e 78 78 20 73 63 72 65 65 6e 73 61 76 65 72 32 30 30 38 2e 73 63 72 } //01 00  xnxx screensaver2008.scr
		$a_01_10 = {73 65 78 20 77 65 62 20 73 68 6f 74 2e 73 63 72 } //01 00  sex web shot.scr
		$a_01_11 = {78 6e 78 78 20 73 63 72 65 65 6e 20 73 61 76 65 72 2e 73 63 72 } //01 00  xnxx screen saver.scr
		$a_01_12 = {65 78 70 6c 6f 69 74 20 66 6f 72 20 76 69 73 74 61 2e 74 78 74 } //01 00  exploit for vista.txt
		$a_01_13 = {73 65 78 20 6d 6f 76 69 65 20 6c 69 73 74 2e 64 61 74 } //01 00  sex movie list.dat
		$a_01_14 = {77 77 77 2e 73 79 6d 61 6e 74 65 63 2e 63 6f 6d } //01 00  www.symantec.com
		$a_01_15 = {77 77 77 2e 6b 61 73 70 65 72 73 6b 79 2e 63 6f 6d } //00 00  www.kaspersky.com
	condition:
		any of ($a_*)
 
}