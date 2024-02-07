
rule Trojan_Win32_VB_PA{
	meta:
		description = "Trojan:Win32/VB.PA,SIGNATURE_TYPE_PEHSTR_EXT,ffffffa4 01 ffffffa4 01 07 00 00 64 00 "
		
	strings :
		$a_00_0 = {57 53 41 53 74 61 72 74 75 70 } //64 00  WSAStartup
		$a_01_1 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //64 00  MSVBVM60.DLL
		$a_00_2 = {44 61 6e 42 74 52 32 37 30 34 31 34 } //64 00  DanBtR270414
		$a_00_3 = {66 49 4c 45 63 4f 50 59 20 77 4f 52 6d } //0a 00  fILEcOPY wORm
		$a_00_4 = {43 00 3a 00 5c 00 44 00 61 00 6e 00 42 00 74 00 52 00 32 00 37 00 30 00 34 00 31 00 34 00 2e 00 65 00 78 00 65 00 } //0a 00  C:\DanBtR270414.exe
		$a_00_5 = {5c 00 44 00 40 00 6e 00 42 00 74 00 52 00 32 00 37 00 30 00 34 00 31 00 34 00 5c 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 20 00 66 00 69 00 6e 00 61 00 6c 00 5c 00 44 00 61 00 6e 00 42 00 74 00 52 00 32 00 37 00 30 00 34 00 31 00 34 00 2e 00 76 00 62 00 70 00 } //0a 00  \D@nBtR270414\version final\DanBtR270414.vbp
		$a_00_6 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 44 00 61 00 6e 00 42 00 74 00 52 00 32 00 37 00 30 00 34 00 31 00 34 00 } //00 00  HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\DanBtR270414
	condition:
		any of ($a_*)
 
}