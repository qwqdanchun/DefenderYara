
rule Worm_Win32_Autorun_X{
	meta:
		description = "Worm:Win32/Autorun.X,SIGNATURE_TYPE_PEHSTR,33 00 33 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {5c 00 62 00 6c 00 75 00 65 00 73 00 74 00 61 00 72 00 5c 00 64 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 } //0a 00  \bluestar\desktop\
		$a_01_1 = {77 00 69 00 6e 00 64 00 69 00 72 00 } //0a 00  windir
		$a_01_2 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 20 00 2e 00 5c 00 } //0a 00  explorer .\
		$a_01_3 = {5a 6f 6d 62 69 65 5f 47 65 74 54 79 70 65 49 6e 66 6f 43 6f 75 6e 74 } //0a 00  Zombie_GetTypeInfoCount
		$a_01_4 = {56 42 39 38 5c 56 42 36 2e 4f 4c 42 } //01 00  VB98\VB6.OLB
		$a_01_5 = {73 00 63 00 76 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  scvhost.exe
		$a_01_6 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //00 00  svchost.exe
	condition:
		any of ($a_*)
 
}