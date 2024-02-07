
rule Trojan_Win32_AutoitInject_AR_MTB{
	meta:
		description = "Trojan:Win32/AutoitInject.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,30 00 30 00 13 00 00 14 00 "
		
	strings :
		$a_01_0 = {31 44 31 4a 31 50 31 5a 31 61 31 } //01 00  1D1J1P1Z1a1
		$a_00_1 = {46 00 49 00 4c 00 45 00 57 00 52 00 49 00 54 00 45 00 } //01 00  FILEWRITE
		$a_00_2 = {53 00 48 00 45 00 4c 00 4c 00 45 00 58 00 45 00 43 00 55 00 54 00 45 00 } //01 00  SHELLEXECUTE
		$a_00_3 = {53 00 54 00 52 00 49 00 4e 00 47 00 52 00 45 00 47 00 45 00 58 00 50 00 52 00 45 00 50 00 4c 00 41 00 43 00 45 00 } //01 00  STRINGREGEXPREPLACE
		$a_00_4 = {53 00 54 00 52 00 49 00 4e 00 47 00 52 00 45 00 50 00 4c 00 41 00 43 00 45 00 } //01 00  STRINGREPLACE
		$a_00_5 = {53 00 54 00 52 00 49 00 4e 00 47 00 52 00 45 00 56 00 45 00 52 00 53 00 45 00 } //01 00  STRINGREVERSE
		$a_00_6 = {54 00 43 00 50 00 41 00 43 00 43 00 45 00 50 00 54 00 } //01 00  TCPACCEPT
		$a_00_7 = {54 00 43 00 50 00 43 00 4c 00 4f 00 53 00 45 00 53 00 4f 00 43 00 4b 00 45 00 54 00 } //01 00  TCPCLOSESOCKET
		$a_00_8 = {54 00 43 00 50 00 43 00 4f 00 4e 00 4e 00 45 00 43 00 54 00 } //01 00  TCPCONNECT
		$a_00_9 = {54 00 43 00 50 00 4e 00 41 00 4d 00 45 00 54 00 4f 00 49 00 50 00 } //01 00  TCPNAMETOIP
		$a_00_10 = {55 00 42 00 4f 00 55 00 4e 00 44 00 } //01 00  UBOUND
		$a_00_11 = {55 00 44 00 50 00 42 00 49 00 4e 00 44 00 } //01 00  UDPBIND
		$a_00_12 = {55 00 44 00 50 00 43 00 4c 00 4f 00 53 00 45 00 53 00 4f 00 43 00 4b 00 45 00 54 00 } //01 00  UDPCLOSESOCKET
		$a_00_13 = {57 00 49 00 4e 00 57 00 41 00 49 00 54 00 41 00 43 00 54 00 49 00 56 00 45 00 } //01 00  WINWAITACTIVE
		$a_00_14 = {53 00 54 00 41 00 52 00 54 00 4d 00 45 00 4e 00 55 00 43 00 4f 00 4d 00 4d 00 4f 00 4e 00 44 00 49 00 52 00 } //01 00  STARTMENUCOMMONDIR
		$a_00_15 = {53 00 54 00 41 00 52 00 54 00 55 00 50 00 43 00 4f 00 4d 00 4d 00 4f 00 4e 00 44 00 49 00 52 00 } //01 00  STARTUPCOMMONDIR
		$a_00_16 = {4c 00 4f 00 43 00 41 00 4c 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 44 00 49 00 52 00 } //01 00  LOCALAPPDATADIR
		$a_00_17 = {41 00 50 00 50 00 44 00 41 00 54 00 41 00 44 00 49 00 52 00 } //14 00  APPDATADIR
		$a_00_18 = {61 00 64 00 70 00 72 00 6f 00 76 00 69 00 64 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //00 00  adprovider.exe
		$a_00_19 = {e7 57 00 00 00 00 53 00 c7 05 67 0f ec ed f2 3f 88 74 78 e3 da 1e ac f2 1e 17 3f ce 80 31 1e fe e3 93 9a 36 c7 05 67 0f ec ed f2 3f 88 } //74 78 
	condition:
		any of ($a_*)
 
}