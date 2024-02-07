
rule Backdoor_Win32_Folpsy_A_dll{
	meta:
		description = "Backdoor:Win32/Folpsy.A!dll,SIGNATURE_TYPE_PEHSTR,09 00 08 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 6f 67 67 65 64 20 4f 6e 20 41 74 20 25 64 2f 25 64 2f 25 64 20 25 64 3a 25 64 3a 25 64 } //01 00  Logged On At %d/%d/%d %d:%d:%d
		$a_01_1 = {25 31 30 31 75 20 20 3c 44 49 52 3e } //01 00  %101u  <DIR>
		$a_01_2 = {46 61 69 6c 20 54 6f 20 52 65 63 69 65 76 65 28 29 } //01 00  Fail To Recieve()
		$a_01_3 = {2d 2d 3e 44 65 6c 65 74 65 20 41 } //01 00  -->Delete A
		$a_01_4 = {43 6c 65 61 6e 20 25 73 20 45 76 65 6e 74 } //01 00  Clean %s Event
		$a_01_5 = {33 32 46 69 72 73 74 28 29 20 46 61 69 6c 3a 45 72 72 6f 72 20 25 64 } //01 00  32First() Fail:Error %d
		$a_01_6 = {44 72 69 76 65 20 25 73 20 28 46 4f 4c 50 50 59 29 } //01 00  Drive %s (FOLPPY)
		$a_01_7 = {28 55 6e 6b 6e 6f 77 29 } //01 00  (Unknow)
		$a_01_8 = {55 70 74 69 6d 65 3a 20 25 2d 2e 32 64 20 44 61 79 73 } //01 00  Uptime: %-.2d Days
		$a_01_9 = {50 6c 7a 20 69 6e 70 75 74 20 70 61 73 73 77 6f 72 64 3a } //00 00  Plz input password:
	condition:
		any of ($a_*)
 
}