
rule Trojan_Win32_Small_AG{
	meta:
		description = "Trojan:Win32/Small.AG,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 75 6e 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e } //01 00 
		$a_01_1 = {57 69 6e 64 6f 77 73 20 53 65 72 76 69 63 65 00 00 00 00 20 2d 73 65 72 76 69 63 65 } //01 00 
		$a_01_2 = {25 73 5c 64 73 25 63 25 63 25 63 2e 25 73 } //01 00  %s\ds%c%c%c.%s
		$a_01_3 = {53 46 46 44 4a 44 53 45 52 59 24 34 35 36 34 35 } //01 00  SFFDJDSERY$45645
		$a_01_4 = {64 65 73 5f 62 6f 74 2e 65 78 65 } //01 00  des_bot.exe
		$a_01_5 = {5f 57 6f 72 6b 50 72 6f 63 40 34 } //00 00  _WorkProc@4
	condition:
		any of ($a_*)
 
}