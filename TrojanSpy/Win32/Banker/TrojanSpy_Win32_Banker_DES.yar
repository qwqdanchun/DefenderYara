
rule TrojanSpy_Win32_Banker_DES{
	meta:
		description = "TrojanSpy:Win32/Banker.DES,SIGNATURE_TYPE_PEHSTR,38 00 38 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {73 69 6d 63 61 72 64 31 2e 64 6c 6c } //0a 00  simcard1.dll
		$a_01_1 = {70 70 72 65 74 32 2e 64 6c 6c } //0a 00  ppret2.dll
		$a_01_2 = {74 6e 73 31 2e 64 6c 6c } //0a 00  tns1.dll
		$a_01_3 = {36 38 44 35 42 42 46 39 2d 45 45 44 35 2d 34 31 32 35 2d 42 32 32 37 2d 35 35 46 38 31 35 34 30 42 46 34 44 } //0a 00  68D5BBF9-EED5-4125-B227-55F81540BF4D
		$a_01_4 = {41 34 37 45 35 45 41 35 2d 46 33 34 46 2d 34 31 65 39 2d 38 43 32 38 2d 38 36 30 42 41 30 39 44 46 38 44 39 } //05 00  A47E5EA5-F34F-41e9-8C28-860BA09DF8D9
		$a_01_5 = {53 6f 66 74 77 61 72 65 5c 4d 52 53 6f 66 74 } //01 00  Software\MRSoft
		$a_01_6 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //00 00  ShellExecuteA
	condition:
		any of ($a_*)
 
}