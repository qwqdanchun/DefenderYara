
rule Backdoor_Win32_Ceckno_D{
	meta:
		description = "Backdoor:Win32/Ceckno.D,SIGNATURE_TYPE_PEHSTR,06 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 65 72 76 69 63 65 00 38 35 37 39 46 43 35 33 44 31 37 33 35 30 39 34 43 36 32 42 43 44 38 38 43 33 33 46 32 37 42 38 } //01 00  敓癲捩e㔸㤷䍆㌵ㅄ㌷〵㐹㙃䈲䑃㠸㍃䘳㜲㡂
		$a_01_1 = {23 31 3c 3c 3c 3c 3c 49 44 43 3c 3c 3c 3c 3c 3c 3c 3c 25 73 3c } //01 00  #1<<<<<IDC<<<<<<<<%s<
		$a_01_2 = {55 73 65 72 69 6e 69 74 00 00 00 00 25 73 5c 75 73 65 72 69 6e 69 74 2e 65 78 65 2c } //01 00 
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e } //01 00  SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
		$a_01_4 = {55 50 44 41 54 41 3a 00 53 54 4f 50 41 54 54 41 43 4b } //01 00  偕䅄䅔:呓偏呁䅔䭃
		$a_01_5 = {73 6f 63 6b 65 74 } //00 00  socket
	condition:
		any of ($a_*)
 
}