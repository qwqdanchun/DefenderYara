
rule Rogue_Win32_Vakcune{
	meta:
		description = "Rogue:Win32/Vakcune,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {00 50 6f 77 65 72 53 63 61 6e } //01 00  倀睯牥捓湡
		$a_01_1 = {00 51 75 61 72 61 6e 74 69 6e 65 50 6f 77 } //01 00  儀慵慲瑮湩健睯
		$a_00_2 = {5c 44 65 6c 55 53 2e 62 61 74 } //02 00  \DelUS.bat
		$a_01_3 = {00 41 64 46 61 69 6c 65 64 52 65 70 61 69 72 } //02 00 
		$a_01_4 = {00 64 62 5c 70 77 64 62 2e 64 61 74 00 } //02 00 
		$a_01_5 = {00 41 64 77 61 72 65 2e 25 73 00 00 00 5b 73 79 73 } //02 00 
		$a_01_6 = {45 00 62 00 69 00 7a 00 20 00 4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 } //00 00  Ebiz Network
	condition:
		any of ($a_*)
 
}