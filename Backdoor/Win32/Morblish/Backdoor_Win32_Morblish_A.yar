
rule Backdoor_Win32_Morblish_A{
	meta:
		description = "Backdoor:Win32/Morblish.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 00 54 00 53 00 4c 00 69 00 73 00 74 00 65 00 6e 00 } //01 00  WTSListen
		$a_01_1 = {57 00 54 00 53 00 49 00 64 00 6c 00 65 00 } //01 00  WTSIdle
		$a_01_2 = {57 00 54 00 53 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 65 00 64 00 } //01 00  WTSConnected
		$a_01_3 = {57 00 54 00 53 00 41 00 63 00 74 00 69 00 76 00 65 00 } //01 00  WTSActive
		$a_01_4 = {71 73 6d 2e 62 61 74 } //01 00  qsm.bat
		$a_01_5 = {3a 4c 31 90 02 10 64 65 6c 90 00 } //01 00 
		$a_01_6 = {6d 61 73 74 65 72 20 73 65 63 72 65 74 } //01 00  master secret
		$a_01_7 = {8b 45 fc 6a 05 40 59 99 f7 f9 ff } //00 00 
		$a_00_8 = {5d 04 00 00 e8 } //65 03 
	condition:
		any of ($a_*)
 
}