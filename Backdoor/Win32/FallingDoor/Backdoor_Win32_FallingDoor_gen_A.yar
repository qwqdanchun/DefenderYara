
rule Backdoor_Win32_FallingDoor_gen_A{
	meta:
		description = "Backdoor:Win32/FallingDoor.gen!A,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 05 00 00 03 00 "
		
	strings :
		$a_01_0 = {55 00 70 00 46 00 69 00 6c 00 65 00 2d 00 2d 00 2d 00 2d 00 50 00 72 00 65 00 53 00 74 00 61 00 72 00 74 00 } //02 00  UpFile----PreStart
		$a_01_1 = {51 00 51 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //03 00  QQPassword
		$a_01_2 = {43 00 68 00 61 00 74 00 4d 00 73 00 67 00 2d 00 2d 00 2d 00 } //01 00  ChatMsg---
		$a_01_3 = {4b 00 69 00 6c 00 6c 00 50 00 72 00 6f 00 63 00 65 00 73 00 } //02 00  KillProces
		$a_01_4 = {50 00 72 00 44 00 6f 00 77 00 6e 00 46 00 69 00 6c 00 65 00 } //00 00  PrDownFile
	condition:
		any of ($a_*)
 
}