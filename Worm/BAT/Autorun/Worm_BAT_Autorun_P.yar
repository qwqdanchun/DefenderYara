
rule Worm_BAT_Autorun_P{
	meta:
		description = "Worm:BAT/Autorun.P,SIGNATURE_TYPE_PEHSTR,07 00 07 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {26 00 66 00 6c 00 61 00 67 00 69 00 72 00 63 00 3d 00 } //01 00  &flagirc=
		$a_01_1 = {6f 00 70 00 65 00 6e 00 3d 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  open=autorun.exe
		$a_01_2 = {2f 00 64 00 6f 00 6d 00 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 70 00 68 00 70 00 } //01 00  /dom/update.php
		$a_01_3 = {2f 00 64 00 6f 00 6d 00 2f 00 72 00 65 00 73 00 75 00 6c 00 74 00 2e 00 70 00 68 00 70 00 } //01 00  /dom/result.php
		$a_01_4 = {2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2f 00 6d 00 73 00 6e 00 6d 00 73 00 67 00 73 00 2e 00 65 00 78 00 65 00 } //01 00  /download/msnmsgs.exe
		$a_01_5 = {20 00 69 00 6e 00 74 00 6f 00 20 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 66 00 6f 00 6c 00 64 00 65 00 72 00 } //01 00   into microsoft folder
		$a_01_6 = {2e 00 64 00 6f 00 6d 00 62 00 6f 00 74 00 2e 00 63 00 6f 00 2e 00 63 00 63 00 } //01 00  .dombot.co.cc
		$a_01_7 = {6b 00 69 00 6c 00 6c 00 65 00 64 00 21 00 20 00 41 00 44 00 44 00 49 00 4f 00 21 00 } //00 00  killed! ADDIO!
	condition:
		any of ($a_*)
 
}