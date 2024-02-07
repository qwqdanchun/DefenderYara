
rule Trojan_Win32_Ineudok_A{
	meta:
		description = "Trojan:Win32/Ineudok.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 77 00 69 00 6e 00 2f 00 65 00 75 00 65 00 75 00 2e 00 70 00 68 00 70 00 3f 00 75 00 70 00 64 00 3d 00 6f 00 6b 00 26 00 76 00 6c 00 3d 00 } //01 00  /win/eueu.php?upd=ok&vl=
		$a_01_1 = {2f 00 76 00 72 00 6e 00 78 00 2f 00 69 00 6e 00 64 00 65 00 78 00 2e 00 70 00 68 00 70 00 3f 00 69 00 6e 00 66 00 3d 00 73 00 68 00 77 00 68 00 26 00 63 00 64 00 3d 00 77 00 6d 00 76 00 26 00 73 00 64 00 3d 00 } //01 00  /vrnx/index.php?inf=shwh&cd=wmv&sd=
		$a_01_2 = {47 00 75 00 61 00 72 00 64 00 55 00 53 00 42 00 } //01 00  GuardUSB
		$a_01_3 = {74 00 68 00 64 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //00 00  thd32.exe
	condition:
		any of ($a_*)
 
}