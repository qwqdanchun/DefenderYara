
rule Trojan_Win32_Farfli_MB_MTB{
	meta:
		description = "Trojan:Win32/Farfli.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_00_0 = {b0 6b b1 61 88 44 24 43 88 44 24 44 b0 20 b2 2f c6 44 24 40 74 88 4c 24 41 c6 44 24 42 73 88 5c 24 45 c6 44 24 46 6c c6 44 24 47 6c 88 44 24 48 88 54 24 49 c6 44 24 4a 66 88 44 24 4b 88 54 24 4c 88 5c 24 4d c6 44 24 4e 6d 88 44 24 4f } //01 00 
		$a_80_1 = {43 3a 5c 25 73 73 76 63 68 61 73 74 2e 65 78 65 } //C:\%ssvchast.exe  01 00 
		$a_81_2 = {53 6c 65 65 70 } //01 00  Sleep
		$a_81_3 = {47 65 74 41 73 79 6e 63 4b 65 79 53 74 61 74 65 } //01 00  GetAsyncKeyState
		$a_00_4 = {5b 43 4c 45 41 52 5d } //01 00  [CLEAR]
		$a_00_5 = {5b 42 41 43 4b 53 50 41 43 45 5d } //01 00  [BACKSPACE]
		$a_00_6 = {5b 44 6f 77 6e 5d } //01 00  [Down]
		$a_00_7 = {5b 52 69 67 68 74 5d } //01 00  [Right]
		$a_00_8 = {5b 4c 65 66 74 5d } //01 00  [Left]
		$a_00_9 = {5b 45 6e 64 5d } //00 00  [End]
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Farfli_MB_MTB_2{
	meta:
		description = "Trojan:Win32/Farfli.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {55 8b ec 56 8b 75 10 57 8b 4e 04 8b 7d 0c 8b 46 08 03 cf 3b c8 7c 23 41 03 c0 3b c1 0f 4f c8 51 } //02 00 
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 52 00 75 00 6e 00 } //02 00  Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run
		$a_01_2 = {4c 00 6f 00 63 00 61 00 6c 00 5c 00 6d 00 69 00 6e 00 65 00 72 00 66 00 75 00 63 00 6b 00 65 00 72 00 } //02 00  Local\minerfucker
		$a_01_3 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 4f 00 6e 00 63 00 65 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\RunOnce
		$a_01_4 = {43 72 79 70 74 45 6e 63 72 79 70 74 } //01 00  CryptEncrypt
		$a_01_5 = {47 65 74 54 68 72 65 61 64 50 72 69 6f 72 69 74 79 } //00 00  GetThreadPriority
	condition:
		any of ($a_*)
 
}