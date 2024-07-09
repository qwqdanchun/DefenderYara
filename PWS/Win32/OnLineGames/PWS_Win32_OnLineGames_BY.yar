
rule PWS_Win32_OnLineGames_BY{
	meta:
		description = "PWS:Win32/OnLineGames.BY,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 07 00 00 "
		
	strings :
		$a_00_0 = {44 69 76 78 44 65 63 6f 64 65 72 2e 55 6e 49 6e 69 74 69 61 6c 69 7a 65 44 69 76 78 44 65 63 6f 64 65 72 00 66 74 73 57 6f 72 64 42 72 65 61 6b } //2
		$a_00_1 = {76 31 2e 39 2e 36 2e 35 } //2 v1.9.6.5
		$a_00_2 = {48 6f 6f 6b 6f 66 66 00 48 6f 6f 6b 6f 6e 00 } //2
		$a_00_3 = {63 71 73 6a 71 77 65 72 74 79 } //2 cqsjqwerty
		$a_03_4 = {6a 00 50 68 14 01 00 00 68 ?? ?? 00 10 53 ff 15 ?? ?? 00 10 e8 } //1
		$a_00_5 = {77 73 61 73 79 73 74 65 6d 2e 67 69 66 00 00 00 44 61 74 61 5c 4c 50 4b 2e 64 6c 6c 00 00 00 00 44 61 74 61 5c 77 6f 6f 6f 6c 69 6e 69 74 2e 64 61 74 00 00 44 61 74 61 5c 77 6f 6f 6f 6c 2e 64 6c 6c } //1
		$a_00_6 = {53 4f 46 54 57 41 52 45 5c 73 6e 64 61 5c 57 6f 6f 6f 6c } //1 SOFTWARE\snda\Woool
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2+(#a_00_3  & 1)*2+(#a_03_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=9
 
}