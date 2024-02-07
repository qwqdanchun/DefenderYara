
rule Backdoor_Win32_Venixol_A{
	meta:
		description = "Backdoor:Win32/Venixol.A,SIGNATURE_TYPE_PEHSTR_EXT,04 01 ffffffe6 00 0c 00 00 64 00 "
		
	strings :
		$a_01_0 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 2e 00 65 00 78 00 65 00 20 00 2f 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 2f 00 66 00 20 00 2f 00 74 00 6e 00 20 00 58 00 4d 00 4c 00 52 00 50 00 43 00 53 00 52 00 56 00 33 00 } //32 00  schtasks.exe /delete /f /tn XMLRPCSRV3
		$a_01_1 = {a7 4f 73 08 24 2a 15 1f 04 f8 25 34 b5 57 d0 b0 50 91 fa 4d } //32 00 
		$a_01_2 = {b6 5a 7a 06 7e 3d 5e 0d 08 ee 3e 39 ae 4b c6 a5 1d 97 e6 0e c5 64 } //32 00 
		$a_01_3 = {bf 5e 64 1d 35 3d 48 50 1d e0 20 31 aa 59 d4 b7 50 91 fa 4d } //1e 00 
		$a_01_4 = {bf 4f 76 47 3f 21 5e 50 00 e6 2f 28 a9 4b d9 a2 0a dc f6 4f cd } //1e 00 
		$a_01_5 = {91 6d 5b 47 06 0a 69 37 3e c6 0b 14 e8 76 f3 90 } //1e 00 
		$a_01_6 = {58 33 4e 31 63 47 56 79 58 32 4e 7a 62 54 70 36 64 47 55 6b 4e 7a 51 78 4e 54 63 77 4f 47 46 32 62 47 6c 7a } //1e 00  X3N1cGVyX2NzbTp6dGUkNzQxNTcwOGF2bGlz
		$a_01_7 = {56 45 4e 49 58 33 4e 31 63 47 56 79 58 32 4e 7a 62 54 70 36 64 47 55 6b 4e 7a 51 78 4e 54 63 77 4f 47 46 32 62 47 6c 7a } //1e 00  VENIX3N1cGVyX2NzbTp6dGUkNzQxNTcwOGF2bGlz
		$a_01_8 = {59 57 52 74 61 57 34 36 63 47 46 7a 63 33 64 76 63 6d 51 3d } //1e 00  YWRtaW46cGFzc3dvcmQ=
		$a_01_9 = {4d 54 49 7a 4e 44 6f 78 4d 6a 4d 30 } //14 00  MTIzNDoxMjM0
		$a_01_10 = {b8 68 58 4d 56 bb 65 d4 85 86 b9 0a 00 00 00 66 ba 58 56 ed 89 5d ec 5b 83 4d fc ff 33 c0 81 7d ec 68 58 4d 56 } //14 00 
		$a_01_11 = {6a 53 66 89 4d fc 33 c9 66 89 4d fe 59 6a 62 66 89 4d d0 59 6a 69 66 89 4d d2 59 6a 65 } //00 00 
		$a_00_12 = {5d 04 00 00 05 f9 02 80 5c 24 00 00 06 f9 02 80 00 00 01 00 06 00 0e 00 87 01 42 6c 61 64 61 62 69 6e 64 69 2e 4a 00 00 02 40 05 82 42 00 04 00 87 10 00 00 ab 97 f7 30 39 b1 74 52 bc 6e 51 96 40 b6 04 00 87 10 00 00 fb 05 5e 79 bb df 16 18 } //09 a6 
	condition:
		any of ($a_*)
 
}