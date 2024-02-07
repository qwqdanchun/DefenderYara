
rule Trojan_Win32_Neop_gmb{
	meta:
		description = "Trojan:Win32/Neop!gmb,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {72 65 67 20 61 64 64 20 48 4b 45 59 5f 4c 4f 43 41 4c 5f 4d 41 43 48 49 4e 45 5c 53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 43 6f 6e 74 72 6f 6c 5c 4c 73 61 20 2f 76 20 66 6f 72 63 65 67 75 65 73 74 20 2f 74 20 52 45 47 5f 44 57 4f 52 44 20 2f 64 20 30 20 2f 66 } //01 00  reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa /v forceguest /t REG_DWORD /d 0 /f
		$a_01_1 = {6e 65 74 20 75 73 65 72 20 69 75 73 72 5f 64 65 62 75 67 } //01 00  net user iusr_debug
		$a_01_2 = {6e 65 74 20 6c 6f 63 61 6c 67 72 6f 75 70 20 61 64 6d 69 6e 69 73 74 72 61 74 6f 72 73 20 69 75 73 72 5f 64 65 62 75 67 20 2f 61 64 64 } //01 00  net localgroup administrators iusr_debug /add
		$a_01_3 = {6e 65 74 20 61 63 63 6f 75 6e 74 73 20 2f 6d 61 78 70 77 61 67 65 3a 75 6e 6c 69 6d 69 74 65 64 } //01 00  net accounts /maxpwage:unlimited
		$a_01_4 = {72 00 75 00 6e 00 6e 00 69 00 6e 00 67 00 2e 00 2e 00 2e 00 } //01 00  running...
		$a_01_5 = {6e 00 74 00 6c 00 6f 00 67 00 2e 00 62 00 61 00 74 00 } //01 00  ntlog.bat
		$a_01_6 = {66 00 6f 00 6c 00 64 00 65 00 72 00 62 00 69 00 6e 00 64 00 2e 00 64 00 6c 00 6c 00 } //01 00  folderbind.dll
		$a_01_7 = {66 00 69 00 6c 00 65 00 62 00 69 00 6e 00 64 00 64 00 6f 00 63 00 2e 00 64 00 6c 00 6c 00 } //01 00  filebinddoc.dll
		$a_01_8 = {63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 63 00 6d 00 64 00 2e 00 64 00 6c 00 6c 00 } //01 00  commandcmd.dll
		$a_01_9 = {6e 00 74 00 64 00 65 00 74 00 65 00 63 00 74 00 2e 00 62 00 61 00 74 00 } //01 00  ntdetect.bat
		$a_01_10 = {43 00 4d 00 44 00 2e 00 65 00 78 00 65 00 20 00 2f 00 43 00 20 00 6e 00 74 00 64 00 65 00 74 00 65 00 63 00 74 00 2e 00 62 00 61 00 74 00 20 00 25 00 73 00 20 00 3e 00 2e 00 5c 00 52 00 65 00 73 00 75 00 6c 00 74 00 } //01 00  CMD.exe /C ntdetect.bat %s >.\Result
		$a_01_11 = {50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 43 6f 6d 6d 6f 6e 20 46 69 6c 65 73 5c 53 79 73 74 65 6d 5c 77 61 62 33 32 2e 65 78 65 } //00 00  Program Files\Common Files\System\wab32.exe
	condition:
		any of ($a_*)
 
}