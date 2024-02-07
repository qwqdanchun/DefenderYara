
rule TrojanDropper_Win32_Startpage_AB{
	meta:
		description = "TrojanDropper:Win32/Startpage.AB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 4c 53 49 44 5c 7b 38 37 31 43 35 33 38 30 2d 34 32 41 30 2d 31 30 36 39 2d 41 32 45 41 2d 30 38 30 30 32 42 33 30 33 30 39 44 7d 5c 53 68 65 6c 6c 46 6f 6c 64 65 72 } //01 00  CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\ShellFolder
		$a_01_1 = {57 73 68 53 68 65 6c 6c 2e 43 72 65 61 74 65 53 68 6f 72 74 63 75 74 28 46 61 76 6f 72 69 74 65 73 20 26 } //01 00  WshShell.CreateShortcut(Favorites &
		$a_01_2 = {5c 49 6e 22 26 22 74 22 26 22 65 72 6e 22 26 22 65 74 20 45 78 70 6c 22 26 22 6f 72 22 26 22 65 72 5c 4d 22 26 22 61 22 26 22 69 22 26 22 6e 5c 53 22 26 22 74 22 26 22 61 72 22 26 22 74 20 50 22 26 22 61 22 26 22 67 65 22 } //01 00  \In"&"t"&"ern"&"et Expl"&"or"&"er\M"&"a"&"i"&"n\S"&"t"&"ar"&"t P"&"a"&"ge"
		$a_01_3 = {5c 57 69 22 26 22 6e 64 22 26 22 6f 77 73 5c 43 22 26 22 75 72 72 65 6e 22 26 22 74 56 65 72 73 22 26 22 69 6f 6e 5c 52 22 26 22 75 22 26 22 6e 5c } //01 00  \Wi"&"nd"&"ows\C"&"urren"&"tVers"&"ion\R"&"u"&"n\
		$a_01_4 = {2f 66 2f 71 2f 61 20 64 65 6c 20 22 fe 1a 1a 5c 49 6e 74 65 72 6e 65 74 2a 2e 2a 22 } //01 00 
		$a_01_5 = {31 6e 6b 66 69 6c 65 5c 73 68 65 6c 6c 65 78 5c 49 63 6f 6e 48 61 6e 64 6c 65 72 } //00 00  1nkfile\shellex\IconHandler
	condition:
		any of ($a_*)
 
}