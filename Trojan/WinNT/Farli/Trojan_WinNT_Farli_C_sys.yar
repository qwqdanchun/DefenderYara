
rule Trojan_WinNT_Farli_C_sys{
	meta:
		description = "Trojan:WinNT/Farli.C!sys,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 0a 00 00 02 00 "
		
	strings :
		$a_01_0 = {33 c0 85 f6 0f 9d c0 5e c9 c2 04 00 } //02 00 
		$a_01_1 = {ab ab ab 8d 45 f4 56 89 45 dc 56 33 c0 8d 7d f0 6a 21 89 75 ec 6a 01 6a 01 ab 68 80 00 } //02 00 
		$a_01_2 = {74 4d 8b 46 3c 83 65 08 00 8b 44 30 78 03 c6 } //02 00 
		$a_01_3 = {f3 ab 66 ab aa 8d 45 f8 50 8d 45 fc 6a 04 50 6a 0b ff d6 3d 04 00 00 c0 } //02 00 
		$a_01_4 = {59 c2 04 00 25 00 73 00 25 00 73 00 } //02 00 
		$a_01_5 = {25 00 25 00 73 00 79 00 73 00 74 00 65 00 6d 00 72 00 6f 00 6f 00 74 00 25 00 25 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 52 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 } //02 00 
		$a_01_6 = {65 00 6d 00 33 00 32 00 5c 00 25 00 73 00 2e 00 64 00 6c 00 6c 00 2c 00 44 00 6c 00 6c 00 55 00 } //05 00  em32\%s.dll,DllU
		$a_00_7 = {5a 77 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //05 00  ZwQuerySystemInformation
		$a_01_8 = {6e 74 6f 73 6b 72 6e 6c 2e 65 78 65 } //05 00  ntoskrnl.exe
		$a_01_9 = {5a 77 43 72 65 61 74 65 46 69 6c 65 } //00 00  ZwCreateFile
	condition:
		any of ($a_*)
 
}