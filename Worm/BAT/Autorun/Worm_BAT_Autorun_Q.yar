
rule Worm_BAT_Autorun_Q{
	meta:
		description = "Worm:BAT/Autorun.Q,SIGNATURE_TYPE_PEHSTR,22 00 22 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {63 00 6c 00 6f 00 77 00 7a 00 65 00 72 00 40 00 } //0a 00  clowzer@
		$a_01_1 = {73 00 6d 00 74 00 70 00 2e 00 6d 00 65 00 6e 00 61 00 72 00 61 00 2e 00 6d 00 61 00 } //0a 00  smtp.menara.ma
		$a_01_2 = {73 00 68 00 65 00 6c 00 6c 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 3d 00 73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 65 00 78 00 65 00 } //01 00  shellexecute=system.exe
		$a_01_3 = {65 00 3a 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 65 00 78 00 65 00 } //01 00  e:\system.exe
		$a_01_4 = {65 00 3a 00 5c 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00  e:\autorun.inf
		$a_01_5 = {65 00 3a 00 5c 00 72 00 65 00 67 00 2e 00 65 00 78 00 65 00 } //01 00  e:\reg.exe
		$a_01_6 = {66 00 3a 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 65 00 78 00 65 00 } //01 00  f:\system.exe
		$a_01_7 = {66 00 3a 00 5c 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00  f:\autorun.inf
		$a_01_8 = {66 00 3a 00 5c 00 72 00 65 00 67 00 2e 00 65 00 78 00 65 00 } //01 00  f:\reg.exe
		$a_01_9 = {3c 00 62 00 72 00 3e 00 20 00 69 00 70 00 20 00 3a 00 20 00 3c 00 66 00 6f 00 6e 00 74 00 } //00 00  <br> ip : <font
	condition:
		any of ($a_*)
 
}