
rule Backdoor_Win32_Poison_gen_A{
	meta:
		description = "Backdoor:Win32/Poison.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 09 00 00 01 00 "
		
	strings :
		$a_00_0 = {61 64 76 70 61 63 6b } //01 00  advpack
		$a_00_1 = {53 74 75 62 50 61 74 68 } //02 00  StubPath
		$a_02_2 = {68 05 0b 7e 26 ff 90 01 03 40 00 68 90 01 02 40 00 90 02 05 a3 90 01 02 40 00 68 8c ad 5d db ff 90 00 } //02 00 
		$a_02_3 = {68 ba 36 c1 0a ff 90 01 03 40 00 68 90 01 02 40 00 90 02 05 a3 90 01 02 40 00 68 22 fc 89 da ff 90 01 03 40 00 68 90 01 02 40 00 90 02 05 a3 90 01 02 40 00 68 d5 ba 9b 0e 90 00 } //02 00 
		$a_02_4 = {68 c4 f2 00 ec ff 90 01 03 40 00 68 90 01 02 40 00 90 02 05 a3 90 01 02 40 00 68 81 fe c3 b0 ff 90 00 } //01 00 
		$a_00_5 = {53 4f 46 54 57 41 52 45 5c 43 6c 61 73 73 65 73 5c 68 74 74 70 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 } //01 00  SOFTWARE\Classes\http\shell\open\command
		$a_00_6 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 41 63 74 69 76 65 20 53 65 74 75 70 5c 49 6e 73 74 61 6c 6c 65 64 20 43 6f 6d 70 6f 6e 65 6e 74 73 5c } //02 00  Software\Microsoft\Active Setup\Installed Components\
		$a_00_7 = {ff 96 84 00 00 00 6a 00 8d 45 fc 50 6a 00 6a 00 6a 00 6a 00 6a 00 57 68 02 00 00 80 ff 56 50 8d 45 fc 50 68 3f 00 0f 00 6a 00 57 68 02 00 00 80 ff 56 40 68 ff 00 00 00 8d 86 5d 06 00 00 50 6a 01 6a 00 8d 86 d0 03 00 00 50 ff 75 fc ff 56 48 ff 75 fc ff 56 3c } //02 00 
		$a_00_8 = {41 9f f8 97 d0 f8 42 47 43 46 45 9f 51 04 27 c6 86 aa 28 14 14 14 17 61 18 } //00 00 
	condition:
		any of ($a_*)
 
}