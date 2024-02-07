
rule Backdoor_Win32_ATMRippery_A{
	meta:
		description = "Backdoor:Win32/ATMRippery.A,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 61 73 6b 6b 69 6c 6c 20 2f 49 4d 20 64 62 61 63 6b 75 70 2e 65 78 65 } //01 00  taskkill /IM dbackup.exe
		$a_01_1 = {5c 53 79 73 74 65 6d 33 32 5c 64 62 61 63 6b 75 70 2e 65 78 65 } //01 00  \System32\dbackup.exe
		$a_01_2 = {44 00 42 00 61 00 63 00 6b 00 75 00 70 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //0a 00  DBackup Service
		$a_01_3 = {41 54 4d 52 69 70 70 65 72 } //0a 00  ATMRipper
		$a_01_4 = {50 33 db 68 98 01 00 00 43 51 89 } //01 00 
		$a_03_5 = {44 69 73 70 65 6e 73 69 6e 67 90 02 20 63 61 73 68 90 00 } //01 00 
		$a_01_6 = {33 2e 48 49 44 45 } //01 00  3.HIDE
		$a_01_7 = {32 2e 43 4c 45 41 4e 20 4c 4f 47 53 } //00 00  2.CLEAN LOGS
		$a_00_8 = {5d 04 00 00 05 90 03 80 5c 35 00 00 } //06 90 
	condition:
		any of ($a_*)
 
}