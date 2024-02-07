
rule PWS_Win32_OnLineGames_CPA_sys{
	meta:
		description = "PWS:Win32/OnLineGames.CPA!sys,SIGNATURE_TYPE_PEHSTR,34 00 34 00 11 00 00 0a 00 "
		
	strings :
		$a_01_0 = {5a 77 43 72 65 61 74 65 46 69 6c 65 } //0a 00  ZwCreateFile
		$a_01_1 = {5c 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 5c 00 4d 00 61 00 63 00 68 00 69 00 6e 00 65 00 5c 00 53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 } //0a 00  \Registry\Machine\SYSTEM\CurrentControlSet\Services\
		$a_01_2 = {5c 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 5c 00 4d 00 61 00 63 00 68 00 69 00 6e 00 65 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 } //0a 00  \Registry\Machine\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows\
		$a_01_3 = {47 61 6d 65 48 61 63 6b 5c 52 65 67 44 72 69 76 65 72 5c 6f 62 6a 66 72 65 5c 69 33 38 36 5c 52 65 67 2e 70 64 62 } //0a 00  GameHack\RegDriver\objfre\i386\Reg.pdb
		$a_01_4 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 63 00 3a 00 5c 00 6e 00 61 00 6d 00 65 00 2e 00 6c 00 6f 00 67 00 } //01 00  \DosDevices\c:\name.log
		$a_01_5 = {61 74 67 6e 65 68 7a 2e 64 6c 6c } //01 00  atgnehz.dll
		$a_01_6 = {62 61 75 68 67 6e 65 6d 2e 64 6c 6c } //01 00  bauhgnem.dll
		$a_01_7 = {64 75 79 67 6e 65 66 2e 64 6c 6c } //01 00  duygnef.dll
		$a_01_8 = {69 6a 6f 75 67 69 65 6d 6e 61 77 2e 64 6c 6c } //01 00  ijougiemnaw.dll
		$a_01_9 = {69 71 61 69 78 6e 61 69 6a 2e 64 6c 6c } //01 00  iqaixnaij.dll
		$a_01_10 = {74 61 69 6a 6f 61 64 2e 64 6c 6c } //01 00  taijoad.dll
		$a_01_11 = {73 61 75 68 61 64 2e 64 6c 6c } //01 00  sauhad.dll
		$a_01_12 = {6a 65 6d 6e 61 77 2e 64 6c 6c } //01 00  jemnaw.dll
		$a_01_13 = {6e 61 64 67 6e 6f 68 69 61 63 2e 64 6c 6c } //01 00  nadgnohiac.dll
		$a_01_14 = {67 6e 6f 6c 6e 61 69 74 2e 64 6c 6c } //01 00  gnolnait.dll
		$a_01_15 = {71 6c 69 68 7a 6f 75 68 67 6e 66 65 2e 64 6c 6c } //01 00  qlihzouhgnfe.dll
		$a_01_16 = {75 74 69 65 6d 6e 61 77 2e 64 6c 6c } //00 00  utiemnaw.dll
	condition:
		any of ($a_*)
 
}