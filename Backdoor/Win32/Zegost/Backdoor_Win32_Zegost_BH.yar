
rule Backdoor_Win32_Zegost_BH{
	meta:
		description = "Backdoor:Win32/Zegost.BH,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {56 65 72 43 c7 84 24 90 01 01 01 00 00 68 6b 3d 25 c7 84 24 90 01 01 01 00 00 64 3a 45 4e c7 84 24 90 00 } //02 00 
		$a_03_1 = {68 b7 0b 00 00 8d 8c 24 90 01 02 00 00 6a 00 51 66 c7 84 24 90 01 02 00 00 4c 69 c6 84 24 fe 90 00 } //02 00 
		$a_03_2 = {77 6f 77 78 c7 84 24 90 01 02 00 00 69 61 6f 62 c7 84 24 90 01 02 00 00 6f 2e 63 6f 90 00 } //02 00 
		$a_01_3 = {c7 45 dc 25 73 2d 25 88 5d e1 66 c7 45 e2 58 25 88 5d e5 66 c7 45 e6 58 25 88 5d e9 66 c7 45 ea 58 25 } //01 00 
		$a_01_4 = {4c 49 4e 4e 55 58 20 50 41 53 53 57 52 4f } //01 00  LINNUX PASSWRO
		$a_01_5 = {2d 2d 2d 3e 54 6f 20 4d 79 53 65 72 76 65 72 32 30 31 30 20 5e 5f 5e 20 5b 25 64 5d } //00 00  --->To MyServer2010 ^_^ [%d]
		$a_00_6 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}