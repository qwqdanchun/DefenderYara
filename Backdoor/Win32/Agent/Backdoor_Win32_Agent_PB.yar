
rule Backdoor_Win32_Agent_PB{
	meta:
		description = "Backdoor:Win32/Agent.PB,SIGNATURE_TYPE_PEHSTR_EXT,fffffff3 00 fffffff3 00 09 00 00 64 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //64 00  SOFTWARE\Borland\Delphi\RTL
		$a_02_1 = {68 74 74 70 3a 2f 2f 77 77 77 2e 67 61 6d 65 39 39 38 38 2e 63 6e 2f 90 02 08 2e 65 78 65 90 00 } //0a 00 
		$a_00_2 = {63 6e 74 2e 65 78 65 } //0a 00  cnt.exe
		$a_00_3 = {65 66 32 36 65 76 2e 64 6c 6c } //0a 00  ef26ev.dll
		$a_00_4 = {5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //0a 00  \wininit.ini
		$a_00_5 = {62 72 6f 77 73 65 77 6d 7a 65 72 6f 2e 64 6c 6c } //01 00  browsewmzero.dll
		$a_00_6 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00  URLDownloadToFileA
		$a_00_7 = {53 65 53 68 75 74 64 6f 77 6e 50 72 69 76 69 6c 65 67 65 } //01 00  SeShutdownPrivilege
		$a_00_8 = {41 64 6a 75 73 74 54 6f 6b 65 6e 50 72 69 76 69 6c 65 67 65 73 } //00 00  AdjustTokenPrivileges
	condition:
		any of ($a_*)
 
}