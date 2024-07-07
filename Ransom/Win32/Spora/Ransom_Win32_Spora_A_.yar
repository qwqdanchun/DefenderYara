
rule Ransom_Win32_Spora_A_{
	meta:
		description = "Ransom:Win32/Spora.A!!Spora.gen!rsm,SIGNATURE_TYPE_ARHSTR_EXT,0a 00 0a 00 0b 00 00 "
		
	strings :
		$a_00_0 = {6a 59 58 0f b7 d0 2b cb 8b c2 c1 e2 10 0b c2 d1 e9 f3 ab 13 c9 66 f3 ab } //3
		$a_00_1 = {25 00 73 00 5c 00 25 00 73 00 2e 00 4c 00 53 00 54 00 } //2 %s\%s.LST
		$a_00_2 = {25 00 73 00 5c 00 25 00 73 00 2e 00 4b 00 45 00 59 00 } //2 %s\%s.KEY
		$a_00_3 = {38 00 78 00 2d 00 25 00 30 00 34 00 78 00 2d 00 25 00 30 00 34 00 78 00 2d 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 2d 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 2e 00 65 00 78 00 65 00 } //1 8x-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x.exe
		$a_00_4 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 } //2 vssadmin.exe delete shadows
		$a_00_5 = {62 00 63 00 64 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 20 00 2f 00 73 00 65 00 74 00 20 00 7b 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 7d 00 20 00 72 00 65 00 63 00 6f 00 76 00 65 00 72 00 79 00 65 00 6e 00 61 00 62 00 6c 00 65 00 64 00 20 00 6e 00 6f 00 } //2 bcdedit.exe /set {default} recoveryenabled no
		$a_00_6 = {77 00 6d 00 69 00 63 00 2e 00 65 00 78 00 65 00 } //1 wmic.exe
		$a_00_7 = {00 7b 64 61 74 61 7d 00 00 7b 6b 65 79 7d 00 } //2
		$a_00_8 = {49 00 73 00 53 00 68 00 6f 00 72 00 74 00 63 00 75 00 74 00 } //1 IsShortcut
		$a_00_9 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 43 00 6c 00 61 00 73 00 73 00 65 00 73 00 5c 00 6c 00 6e 00 6b 00 66 00 69 00 6c 00 65 00 } //1 SOFTWARE\Classes\lnkfile
		$a_00_10 = {2e 00 37 00 7a 00 00 00 2e 00 72 00 61 00 72 00 00 00 00 00 2e 00 7a 00 69 00 70 00 00 00 00 00 2e 00 74 00 69 00 66 00 66 00 00 00 2e 00 6a 00 70 00 65 00 67 00 00 00 2e 00 6a 00 70 00 67 00 } //2
	condition:
		((#a_00_0  & 1)*3+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2+(#a_00_3  & 1)*1+(#a_00_4  & 1)*2+(#a_00_5  & 1)*2+(#a_00_6  & 1)*1+(#a_00_7  & 1)*2+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*2) >=10
 
}