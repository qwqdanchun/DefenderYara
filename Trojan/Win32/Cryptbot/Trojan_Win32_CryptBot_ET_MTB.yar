
rule Trojan_Win32_CryptBot_ET_MTB{
	meta:
		description = "Trojan:Win32/CryptBot.ET!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 01 00 "
		
	strings :
		$a_81_0 = {6d 75 74 65 78 6e 61 6d 65 2d 73 76 63 6d 75 74 65 78 } //01 00  mutexname-svcmutex
		$a_81_1 = {43 4f 4d 53 50 45 43 20 25 73 20 2f 63 20 64 65 6c 20 25 73 } //01 00  COMSPEC %s /c del %s
		$a_81_2 = {25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 53 79 73 74 65 6d 33 32 5c 73 76 63 68 6f 73 74 2e 65 78 65 20 2d 6b 20 6e 65 74 73 76 63 73 } //01 00  %SystemRoot%\System32\svchost.exe -k netsvcs
		$a_81_3 = {5c 75 70 64 61 74 65 2e 69 6e 69 } //01 00  \update.ini
		$a_81_4 = {53 65 72 76 69 63 65 44 6c 6c 55 6e 6c 6f 61 64 4f 6e 53 74 6f 70 } //01 00  ServiceDllUnloadOnStop
		$a_81_5 = {69 6e 73 74 61 6c 6c 20 4f 6e 20 48 61 73 20 70 72 6f 78 79 21 } //01 00  install On Has proxy!
		$a_81_6 = {66 69 6c 65 2e 64 61 74 61 } //01 00  file.data
		$a_81_7 = {49 6e 73 74 61 6c 6c 53 72 76 20 25 73 20 20 25 73 } //00 00  InstallSrv %s  %s
		$a_00_8 = {5d 04 00 } //00 31 
	condition:
		any of ($a_*)
 
}