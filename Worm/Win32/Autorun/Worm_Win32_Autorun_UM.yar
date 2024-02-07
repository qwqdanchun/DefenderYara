
rule Worm_Win32_Autorun_UM{
	meta:
		description = "Worm:Win32/Autorun.UM,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_02_0 = {42 00 6c 00 34 00 63 00 6b 00 90 02 04 53 00 63 00 30 00 72 00 70 00 69 00 30 00 4e 00 90 00 } //01 00 
		$a_00_1 = {7b 00 48 00 4f 00 4d 00 45 00 7d 00 } //01 00  {HOME}
		$a_00_2 = {7b 00 45 00 4e 00 44 00 7d 00 } //01 00  {END}
		$a_00_3 = {53 00 6f 00 6c 00 64 00 69 00 65 00 72 00 20 00 56 00 69 00 72 00 75 00 73 00 } //01 00  Soldier Virus
		$a_00_4 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //01 00  [autorun]
		$a_00_5 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00  autorun.inf
		$a_00_6 = {54 61 73 6b 6b 69 6c 6c 20 2f 69 6d } //00 00  Taskkill /im
	condition:
		any of ($a_*)
 
}