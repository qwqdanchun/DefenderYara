
rule Backdoor_Win64_Vawtrak_A{
	meta:
		description = "Backdoor:Win64/Vawtrak.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {5b 56 4e 43 5d 20 53 74 61 72 74 20 53 65 76 65 72 } //01 00  [VNC] Start Sever
		$a_00_1 = {74 68 69 73 2e 47 65 74 58 48 52 3d 66 75 6e 63 74 69 6f 6e 28 29 7b 22 75 6e 64 65 66 69 6e 65 64 22 } //01 00  this.GetXHR=function(){"undefined"
		$a_02_2 = {48 83 c1 08 e8 90 01 04 f7 d8 1b c9 f7 d9 81 c1 fe 00 00 00 89 4b 04 eb 90 01 01 c7 41 04 ff 00 00 00 48 83 c1 08 ba 05 00 00 00 ff 15 90 01 04 eb 90 01 01 c7 41 04 ff 00 00 00 90 00 } //01 00 
		$a_02_3 = {c1 c8 03 69 c0 fd 43 03 00 41 bf c3 9e 26 00 be 00 00 ff 7f 41 03 c7 44 8b e0 89 90 01 05 44 23 e6 85 c0 75 90 01 01 ff 15 90 01 04 c1 c8 03 69 c0 fd 43 03 00 41 bd ff 7f 00 00 41 03 c7 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win64_Vawtrak_A_2{
	meta:
		description = "Backdoor:Win64/Vawtrak.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {69 64 3d 25 30 2e 38 58 25 30 2e 38 58 25 30 2e 38 58 25 30 2e 38 58 } //01 00  id=%0.8X%0.8X%0.8X%0.8X
		$a_00_1 = {69 6e 66 6f 3d 25 30 2e 32 58 25 30 2e 32 58 25 30 2e 32 58 25 30 2e 32 58 25 30 2e 32 58 25 30 2e 32 58 25 30 2e 32 58 25 30 2e 34 58 25 30 2e 32 58 25 30 2e 34 58 } //01 00  info=%0.2X%0.2X%0.2X%0.2X%0.2X%0.2X%0.2X%0.4X%0.2X%0.4X
		$a_00_2 = {7e 25 30 2e 34 78 25 30 2e 34 78 25 30 2e 34 78 } //01 00  ~%0.4x%0.4x%0.4x
		$a_00_3 = {5b 25 30 2e 32 75 3a 25 30 2e 32 75 3a 25 30 2e 32 75 5d } //01 00  [%0.2u:%0.2u:%0.2u]
		$a_00_4 = {2f 73 68 6f 77 74 68 72 65 61 64 2e 70 68 70 3f 74 3d 25 75 } //01 00  /showthread.php?t=%u
		$a_00_5 = {2f 6e 65 77 74 68 72 65 61 64 2e 70 68 70 3f 64 6f 3d 70 6f 73 74 74 68 72 65 61 64 26 66 3d 25 75 } //01 00  /newthread.php?do=postthread&f=%u
		$a_00_6 = {2f 6e 65 77 72 65 70 6c 79 2e 70 68 70 3f 64 6f 3d 70 6f 73 74 72 65 70 6c 79 26 74 3d 25 75 } //03 00  /newreply.php?do=postreply&t=%u
		$a_01_7 = {83 38 02 74 05 83 38 04 75 53 81 3a 47 45 54 20 75 08 41 b9 01 00 00 00 eb 24 81 3a 50 55 54 20 75 08 41 b9 03 00 00 00 eb 14 81 3a 50 4f 53 54 75 2b 80 7a 04 20 75 25 } //00 00 
	condition:
		any of ($a_*)
 
}