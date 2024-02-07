
rule Backdoor_Win32_Leeson_E_dha{
	meta:
		description = "Backdoor:Win32/Leeson.E!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 00 73 00 5c 00 44 00 46 00 25 00 30 00 35 00 64 00 2e 00 74 00 6d 00 70 00 } //01 00  %s\DF%05d.tmp
		$a_01_1 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 4d 00 65 00 64 00 69 00 61 00 20 00 50 00 6c 00 61 00 79 00 65 00 72 00 } //01 00  \Microsoft\Media Player
		$a_01_2 = {43 00 6c 00 65 00 61 00 72 00 42 00 72 00 6f 00 77 00 73 00 69 00 6e 00 67 00 48 00 69 00 73 00 74 00 6f 00 72 00 79 00 4f 00 6e 00 45 00 78 00 69 00 74 00 } //01 00  ClearBrowsingHistoryOnExit
		$a_01_3 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 46 00 69 00 72 00 73 00 74 00 52 00 75 00 6e 00 43 00 75 00 73 00 74 00 6f 00 6d 00 69 00 7a 00 65 00 } //01 00  DisableFirstRunCustomize
		$a_01_4 = {25 00 73 00 5c 00 61 00 64 00 75 00 6c 00 74 00 2e 00 73 00 66 00 74 00 } //01 00  %s\adult.sft
		$a_01_5 = {25 00 73 00 5c 00 4e 00 6f 00 74 00 69 00 63 00 65 00 } //01 00  %s\Notice
		$a_01_6 = {54 45 58 54 41 52 45 41 } //00 00  TEXTAREA
	condition:
		any of ($a_*)
 
}