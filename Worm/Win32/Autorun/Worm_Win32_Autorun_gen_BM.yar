
rule Worm_Win32_Autorun_gen_BM{
	meta:
		description = "Worm:Win32/Autorun.gen!BM,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1a 00 08 00 00 0a 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 } //0a 00  SOFTWARE\Borland\Delphi
		$a_02_1 = {0f 85 20 01 00 00 68 c0 d4 01 00 e8 90 01 02 ff ff 8d 45 e4 e8 90 09 11 00 74 15 a1 90 01 02 14 13 ba 90 01 02 14 13 e8 90 01 02 ff ff 90 00 } //05 00 
		$a_02_2 = {43 3a 5c 50 52 4f 47 52 41 7e 31 5c 70 72 6f 90 10 02 00 2e 65 78 65 90 00 } //01 00 
		$a_02_3 = {68 74 74 70 3a 2f 2f 90 02 18 2f 31 90 10 02 00 2e 65 78 65 90 00 } //01 00 
		$a_00_4 = {65 3a 5c 48 69 64 65 2e 65 78 65 } //01 00  e:\Hide.exe
		$a_00_5 = {65 3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 } //01 00  e:\autorun.inf
		$a_02_6 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 77 6e 69 70 73 76 90 05 01 01 73 72 2e 65 78 65 20 2d 64 6f 77 6e 90 00 } //01 00 
		$a_00_7 = {70 65 72 65 66 69 63 2e 69 6e 69 } //00 00  perefic.ini
	condition:
		any of ($a_*)
 
}