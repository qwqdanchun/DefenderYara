
rule Trojan_Win32_Killwin_C{
	meta:
		description = "Trojan:Win32/Killwin.C,SIGNATURE_TYPE_PEHSTR,15 00 15 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {6d 00 79 00 20 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 49 00 5f 00 52 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //0a 00  my programs\I_R\Project1.vbp
		$a_01_1 = {43 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 2a 00 2e 00 65 00 78 00 65 00 } //01 00  C:\windows\system32\*.exe
		$a_01_2 = {49 00 5f 00 52 00 5f 00 57 00 49 00 4e 00 5f 00 44 00 45 00 46 00 45 00 41 00 54 00 45 00 52 00 } //01 00  I_R_WIN_DEFEATER
		$a_01_3 = {49 00 52 00 41 00 51 00 5f 00 52 00 45 00 53 00 49 00 53 00 54 00 41 00 4e 00 43 00 45 00 } //00 00  IRAQ_RESISTANCE
	condition:
		any of ($a_*)
 
}