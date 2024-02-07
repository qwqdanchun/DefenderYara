
rule PWS_Win32_Zbot_gen_AB{
	meta:
		description = "PWS:Win32/Zbot.gen!AB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0b 00 00 02 00 "
		
	strings :
		$a_01_0 = {55 4d 48 3a 3a 53 43 41 4e 41 42 4f 52 54 45 44 00 } //02 00 
		$a_01_1 = {41 56 5a 42 43 00 } //01 00  噁䉚C
		$a_01_2 = {42 6f 6f 74 20 42 75 73 20 45 78 74 65 6e 64 65 72 00 } //01 00  潂瑯䈠獵䔠瑸湥敤r
		$a_01_3 = {52 61 70 70 6f 72 74 4b 45 4c 4c 00 } //01 00  慒灰牯䭴䱅L
		$a_01_4 = {52 61 70 70 6f 72 74 4d 67 6d 74 53 65 72 76 69 63 65 00 } //01 00 
		$a_01_5 = {52 54 5f 44 4c 4c 00 } //01 00 
		$a_01_6 = {72 61 70 70 6f 72 74 70 67 2e 73 79 73 00 } //01 00 
		$a_01_7 = {61 76 70 33 32 2e 65 78 65 00 } //01 00  癡㍰⸲硥e
		$a_01_8 = {6d 73 6d 70 73 76 63 2e 65 78 65 00 } //01 00 
		$a_01_9 = {44 65 6c 53 76 63 00 } //01 00 
		$a_01_10 = {44 65 6c 46 69 6c 65 00 } //00 00  敄䙬汩e
	condition:
		any of ($a_*)
 
}