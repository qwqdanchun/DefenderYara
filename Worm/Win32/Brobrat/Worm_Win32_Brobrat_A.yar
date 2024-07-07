
rule Worm_Win32_Brobrat_A{
	meta:
		description = "Worm:Win32/Brobrat.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_00_0 = {53 00 68 00 61 00 72 00 65 00 64 00 44 00 6f 00 63 00 73 00 } //1 SharedDocs
		$a_00_1 = {4d 00 75 00 73 00 69 00 63 00 } //1 Music
		$a_01_2 = {44 00 6f 00 63 00 75 00 00 } //1
		$a_00_3 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_00_4 = {53 00 68 00 65 00 6c 00 6c 00 5c 00 41 00 75 00 74 00 6f 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 3d 00 } //1 Shell\Auto\command =
		$a_00_5 = {3a 00 5c 00 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //1 :\Autorun.inf
		$a_00_6 = {5b 00 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //1 [Autorun]
		$a_00_7 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 20 00 65 00 72 00 72 00 6f 00 72 00 } //1 Windows Security error
		$a_00_8 = {68 00 65 00 6e 00 74 00 61 00 69 00 } //1 hentai
		$a_01_9 = {53 65 74 43 6f 6d 70 75 74 65 72 4e 61 6d 65 41 } //1 SetComputerNameA
		$a_00_10 = {47 65 74 43 6f 6d 70 75 74 65 72 4e 61 6d 65 41 } //1 GetComputerNameA
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_01_9  & 1)*1+(#a_00_10  & 1)*1) >=11
 
}