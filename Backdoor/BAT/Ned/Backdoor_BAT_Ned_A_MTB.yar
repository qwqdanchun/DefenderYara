
rule Backdoor_BAT_Ned_A_MTB{
	meta:
		description = "Backdoor:BAT/Ned.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_1 = {52 00 45 00 53 00 54 00 41 00 52 00 54 00 4d 00 45 00 } //01 00  RESTARTME
		$a_01_2 = {44 00 45 00 4c 00 2d 00 54 00 45 00 4d 00 50 00 } //01 00  DEL-TEMP
		$a_01_3 = {2f 00 6c 00 6f 00 67 00 2e 00 70 00 68 00 70 00 } //01 00  /log.php
		$a_01_4 = {5c 00 4c 00 61 00 73 00 74 00 2d 00 57 00 65 00 65 00 6b 00 2d 00 } //01 00  \Last-Week-
		$a_01_5 = {5c 00 76 00 6d 00 47 00 75 00 65 00 73 00 74 00 4c 00 69 00 62 00 2e 00 64 00 6c 00 6c 00 } //00 00  \vmGuestLib.dll
	condition:
		any of ($a_*)
 
}