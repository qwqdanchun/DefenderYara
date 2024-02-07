
rule Trojan_Win32_Azorult_AX_{
	meta:
		description = "Trojan:Win32/Azorult.AX!!Azorult.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,09 00 09 00 0a 00 00 01 00 "
		
	strings :
		$a_81_0 = {50 61 73 73 77 6f 72 64 73 4c 69 73 74 2e 74 78 74 } //01 00  PasswordsList.txt
		$a_81_1 = {73 63 72 2e 6a 70 67 } //01 00  scr.jpg
		$a_81_2 = {69 70 2e 74 78 74 } //01 00  ip.txt
		$a_81_3 = {53 79 73 74 65 6d 2e 74 78 74 } //01 00  System.txt
		$a_81_4 = {2e 61 64 64 72 65 73 73 2e 74 78 74 } //01 00  .address.txt
		$a_81_5 = {25 41 50 50 44 41 54 41 25 5c 53 6b 79 70 65 } //01 00  %APPDATA%\Skype
		$a_81_6 = {33 35 33 45 37 37 44 46 2d 39 32 38 42 2d 34 39 34 31 2d 41 36 33 31 2d 35 31 32 36 36 32 46 30 37 38 35 41 33 30 36 31 2d 34 45 34 30 2d 42 42 43 32 2d 33 41 32 37 46 36 34 31 44 33 32 42 2d 35 34 46 46 2d 34 34 44 37 2d 38 35 46 33 2d 44 39 35 30 46 35 31 39 46 31 32 46 } //01 00  353E77DF-928B-4941-A631-512662F0785A3061-4E40-BBC2-3A27F641D32B-54FF-44D7-85F3-D950F519F12F
		$a_81_7 = {43 6f 6d 70 75 74 65 72 28 55 73 65 72 6e 61 6d 65 29 20 3a } //01 00  Computer(Username) :
		$a_81_8 = {53 63 72 65 65 6e 3a } //01 00  Screen:
		$a_81_9 = {5b 53 6f 66 74 5d } //00 00  [Soft]
	condition:
		any of ($a_*)
 
}