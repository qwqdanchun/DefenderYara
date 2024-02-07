
rule Backdoor_Win32_Cycbot_A{
	meta:
		description = "Backdoor:Win32/Cycbot.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {26 68 77 69 64 3d 41 35 39 30 34 37 34 30 34 33 44 37 42 34 37 35 33 44 31 46 } //01 00  &hwid=A590474043D7B4753D1F
		$a_00_1 = {68 74 74 70 3a 2f 2f 71 69 6d 75 66 65 66 61 68 2e 63 6e 2f 67 62 6f 74 } //01 00  http://qimufefah.cn/gbot
		$a_00_2 = {5c 67 62 5f 25 64 2e 62 61 74 00 } //01 00 
		$a_00_3 = {40 65 63 68 6f 20 6f 66 66 0d 0a 3a 61 0d 0a 64 65 6c 20 22 25 73 22 0d 0a 69 66 20 65 78 69 73 74 20 22 25 73 22 20 67 6f 74 6f 20 61 0d 0a 64 65 6c 20 25 25 30 0d 0a 00 } //01 00 
		$a_01_4 = {c6 45 ac 56 88 5d ad c6 45 ae 53 88 5d af c6 45 b0 5f 88 5d b1 c6 45 b2 56 88 5d b3 c6 45 b4 45 } //00 00 
	condition:
		any of ($a_*)
 
}