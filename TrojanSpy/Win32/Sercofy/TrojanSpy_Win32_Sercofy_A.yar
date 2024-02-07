
rule TrojanSpy_Win32_Sercofy_A{
	meta:
		description = "TrojanSpy:Win32/Sercofy.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0f 00 00 01 00 "
		
	strings :
		$a_00_0 = {41 72 65 20 79 6f 75 20 75 73 65 72 3f } //01 00  Are you user?
		$a_00_1 = {43 61 6e 6e 6f 74 20 66 69 6e 64 20 64 69 72 65 63 74 6f 72 79 20 77 69 74 68 20 77 72 69 74 65 5c 72 65 61 64 20 72 69 67 68 74 73 2e } //01 00  Cannot find directory with write\read rights.
		$a_00_2 = {43 6c 6f 73 65 20 61 6e 74 69 76 69 72 75 73 5c 66 69 72 65 77 61 6c 6c 2e } //01 00  Close antivirus\firewall.
		$a_00_3 = {5c 62 75 2d 62 75 2e 65 78 65 } //01 00  \bu-bu.exe
		$a_00_4 = {66 61 69 6c 73 2e 20 47 65 74 4c 61 73 74 45 72 72 6f 72 20 3d 20 25 58 2e } //01 00  fails. GetLastError = %X.
		$a_00_5 = {5f 54 49 44 2b 64 65 6c 74 61 5d 20 3c 3e 20 30 2e } //01 00  _TID+delta] <> 0.
		$a_00_6 = {25 75 73 3a 50 49 44 3a 25 64 3a 54 49 44 3a 25 64 3a 25 70 32 64 2e 25 70 32 64 2e 25 70 32 64 2e 25 70 32 64 3a 3a 25 73 } //01 00  %us:PID:%d:TID:%d:%p2d.%p2d.%p2d.%p2d::%s
		$a_00_7 = {25 73 5c 25 70 34 64 2e 25 70 32 64 2e 25 70 32 64 2e 25 70 32 64 2e 25 70 32 64 2e 25 70 32 64 2e 25 70 33 64 2e 74 78 74 } //01 00  %s\%p4d.%p2d.%p2d.%p2d.%p2d.%p2d.%p3d.txt
		$a_00_8 = {2f 6d 6f 64 75 6c 65 73 2f 46 69 6c 65 73 2f 70 75 62 5f 64 69 72 2f 73 65 72 79 2f 73 65 72 79 25 64 2e 65 78 65 } //01 00  /modules/Files/pub_dir/sery/sery%d.exe
		$a_00_9 = {47 6c 6f 62 61 6c 5c 53 41 54 41 53 45 52 59 5f 52 4d } //01 00  Global\SATASERY_RM
		$a_00_10 = {4f 53 20 69 6e 66 6f 3a 5b 64 77 4d 61 6a 6f 72 56 65 72 73 69 6f 6e 5d 3d 25 58 2c 5b 64 77 4d 69 6e 6f 72 56 65 72 73 69 6f 6e 5d 3d 25 58 2c 5b 64 77 42 75 69 6c 64 4e 75 6d 62 65 72 5d 3d 25 58 } //01 00  OS info:[dwMajorVersion]=%X,[dwMinorVersion]=%X,[dwBuildNumber]=%X
		$a_00_11 = {25 73 5c 53 63 72 65 65 6e 73 68 6f 74 73 5c } //01 00  %s\Screenshots\
		$a_00_12 = {53 45 52 59 4c 4f 47 49 4e 40 6d 61 69 6c 2e 72 75 } //03 00  SERYLOGIN@mail.ru
		$a_01_13 = {f7 d9 8d 56 05 2b 55 0c 39 d1 76 03 01 7e 01 eb 19 83 f8 06 75 14 80 3e ff 75 0f 80 7e 01 90 72 09 80 7e 01 97 77 03 01 7e 02 01 c6 eb a0 } //03 00 
		$a_01_14 = {c7 04 24 00 00 00 00 8a 06 84 c0 0f 84 b0 00 00 00 3c 25 74 03 a4 eb e8 8a 46 01 3c 64 74 5d } //00 00 
	condition:
		any of ($a_*)
 
}