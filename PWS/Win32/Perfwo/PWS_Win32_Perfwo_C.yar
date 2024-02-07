
rule PWS_Win32_Perfwo_C{
	meta:
		description = "PWS:Win32/Perfwo.C,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {65 6c 65 6d 65 6e 74 63 6c 69 65 6e 74 2e 65 78 65 } //01 00  elementclient.exe
		$a_00_1 = {64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //01 00  drivers\etc\hosts
		$a_00_2 = {73 65 72 76 65 72 6c 69 73 74 2e 69 6e 69 } //01 00  serverlist.ini
		$a_01_3 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_00_4 = {42 6f 72 6c 61 6e 64 } //01 00  Borland
		$a_00_5 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 4d 6f 7a 69 6c 6c 61 } //00 00  User-Agent: Mozilla
	condition:
		any of ($a_*)
 
}