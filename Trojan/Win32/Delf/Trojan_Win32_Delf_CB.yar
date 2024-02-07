
rule Trojan_Win32_Delf_CB{
	meta:
		description = "Trojan:Win32/Delf.CB,SIGNATURE_TYPE_PEHSTR,2e 01 2e 01 10 00 00 ffffffc8 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1e 00  SOFTWARE\Borland\Delphi\RTL
		$a_01_1 = {50 72 6f 63 65 73 73 33 32 4e 65 78 74 } //1e 00  Process32Next
		$a_01_2 = {53 65 53 68 75 74 64 6f 77 6e 50 72 69 76 69 6c 65 67 65 } //1e 00  SeShutdownPrivilege
		$a_01_3 = {67 65 74 68 6f 73 74 6e 61 6d 65 } //01 00  gethostname
		$a_01_4 = {48 54 54 50 2f 31 2e 31 } //01 00  HTTP/1.1
		$a_01_5 = {48 6f 73 74 3a } //01 00  Host:
		$a_01_6 = {57 69 6e 64 6f 77 73 20 32 30 30 30 } //01 00  Windows 2000
		$a_01_7 = {57 69 6e 64 6f 77 73 20 58 50 } //01 00  Windows XP
		$a_01_8 = {57 69 6e 64 6f 77 73 20 32 30 30 33 } //01 00  Windows 2003
		$a_01_9 = {7b 77 69 6e 64 6f 77 2e 6c 6f 63 61 74 69 6f 6e } //01 00  {window.location
		$a_01_10 = {65 6e 64 3b 6e 61 6d 65 3a } //01 00  end;name:
		$a_01_11 = {65 6e 64 3b 75 73 65 72 3a } //01 00  end;user:
		$a_01_12 = {70 6f 72 74 64 32 3a } //01 00  portd2:
		$a_01_13 = {65 6e 64 3b 6b 6c 6a 73 70 61 73 73 3a } //01 00  end;kljspass:
		$a_01_14 = {6d 65 6e 61 6d 65 65 78 65 3a } //01 00  menameexe:
		$a_01_15 = {75 70 64 73 6b 6c 6a 73 2e 62 61 74 } //00 00  updskljs.bat
	condition:
		any of ($a_*)
 
}