
rule TrojanDropper_Win32_Banker_O{
	meta:
		description = "TrojanDropper:Win32/Banker.O,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 69 6d 65 5f 50 72 6f 67 72 65 73 73 42 61 72 } //01 00  Time_ProgressBar
		$a_01_1 = {2a 00 5c 00 41 00 43 00 3a 00 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 41 00 64 00 6d 00 69 00 6e 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 6f 00 74 00 68 00 65 00 72 00 5f 00 63 00 72 00 5c 00 52 00 5f 00 50 00 45 00 5c 00 32 00 32 00 30 00 31 00 5c 00 5f 00 43 00 4c 00 43 00 2e 00 76 00 62 00 70 00 } //01 00  *\AC:\Users\Admin\Desktop\other_cr\R_PE\2201\_CLC.vbp
		$a_01_2 = {45 00 58 00 50 00 5f 00 43 00 50 00 46 00 49 00 58 00 } //01 00  EXP_CPFIX
		$a_01_3 = {54 00 49 00 50 00 4f 00 46 00 44 00 41 00 59 00 2e 00 54 00 58 00 54 00 } //01 00  TIPOFDAY.TXT
		$a_01_4 = {54 00 69 00 6d 00 65 00 52 00 65 00 6d 00 61 00 69 00 6e 00 2e 00 65 00 78 00 65 00 } //00 00  TimeRemain.exe
	condition:
		any of ($a_*)
 
}