
rule TrojanClicker_Win32_Senterpud_A{
	meta:
		description = "TrojanClicker:Win32/Senterpud.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 3a 5c 50 72 6f 67 2d 50 68 6f 74 6f 73 68 6f 70 5c 48 61 63 6b 5c 48 61 63 6b } //01 00  D:\Prog-Photoshop\Hack\Hack
		$a_01_1 = {48 61 63 6b 50 75 62 5c 48 61 63 6b 50 75 62 5c 6f 62 6a 5c 44 65 62 75 67 5c 57 69 6e 6d 67 74 2e 70 64 62 } //01 00  HackPub\HackPub\obj\Debug\Winmgt.pdb
		$a_01_2 = {70 00 65 00 72 00 64 00 75 00 73 00 65 00 6e 00 74 00 69 00 65 00 72 00 2e 00 62 00 79 00 65 00 74 00 68 00 6f 00 73 00 74 00 37 00 2e 00 63 00 6f 00 6d 00 2f 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 2f 00 } //01 00  perdusentier.byethost7.com/Service/
		$a_01_3 = {70 00 65 00 72 00 64 00 75 00 73 00 65 00 6e 00 74 00 69 00 65 00 72 00 2e 00 6c 00 65 00 67 00 74 00 75 00 78 00 2e 00 6f 00 72 00 67 00 2f 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 2f 00 } //01 00  perdusentier.legtux.org/Application/
		$a_01_4 = {2e 00 79 00 6f 00 6f 00 63 00 6c 00 69 00 63 00 6b 00 2e 00 63 00 6f 00 6d 00 2f 00 } //01 00  .yooclick.com/
		$a_01_5 = {7b 00 30 00 7d 00 5c 00 77 00 67 00 65 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  {0}\wget.exe
		$a_01_6 = {2e 00 65 00 78 00 65 00 2e 00 7a 00 69 00 70 00 } //01 00  .exe.zip
		$a_01_7 = {2f 00 69 00 6e 00 64 00 65 00 78 00 2e 00 70 00 68 00 70 00 } //01 00  /index.php
		$a_01_8 = {53 74 61 72 74 44 6f 77 6e 6c 6f 61 64 00 } //00 00  瑓牡䑴睯汮慯d
	condition:
		any of ($a_*)
 
}