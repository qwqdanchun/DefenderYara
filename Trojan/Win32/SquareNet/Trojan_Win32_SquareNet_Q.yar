
rule Trojan_Win32_SquareNet_Q{
	meta:
		description = "Trojan:Win32/SquareNet.Q,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 63 68 72 6f 6d 69 75 6d 5c 73 72 63 5c 62 61 73 65 5c 70 69 63 6b 6c 65 2e 63 63 } //01 00  \chromium\src\base\pickle.cc
		$a_01_1 = {7b 45 44 36 39 30 31 41 31 2d 32 45 38 30 2d 34 46 42 41 2d 41 41 44 35 2d 38 34 36 33 38 46 43 33 46 33 38 32 7d } //01 00  {ED6901A1-2E80-4FBA-AAD5-84638FC3F382}
		$a_01_2 = {7b 00 45 00 44 00 36 00 39 00 30 00 31 00 41 00 31 00 2d 00 32 00 45 00 38 00 30 00 2d 00 34 00 46 00 42 00 41 00 2d 00 41 00 41 00 44 00 35 00 2d 00 38 00 34 00 36 00 33 00 38 00 46 00 43 00 33 00 46 00 33 00 38 00 32 00 7d 00 } //03 00  {ED6901A1-2E80-4FBA-AAD5-84638FC3F382}
		$a_01_3 = {3a 5c 63 65 66 5f 32 38 38 33 5c 63 68 72 6f 6d 69 75 6d 5f 67 69 74 5c 63 68 72 6f 6d 69 75 6d 5c 73 72 63 5c 6f 75 74 5c 52 65 6c 65 61 73 65 5f 47 4e 5f 78 38 36 5c 76 6d 78 63 6c 69 65 6e 74 2e 65 78 65 2e 70 64 62 } //03 00  :\cef_2883\chromium_git\chromium\src\out\Release_GN_x86\vmxclient.exe.pdb
		$a_01_4 = {3a 5c 63 65 66 5f 32 35 32 36 5c 64 6f 77 6e 6c 6f 61 64 5c 63 68 72 6f 6d 69 75 6d 5c 73 72 63 5c 6f 75 74 5c 52 65 6c 65 61 73 65 5c 77 69 6e 6c 74 63 2e 65 78 65 2e 70 64 62 } //02 00  :\cef_2526\download\chromium\src\out\Release\winltc.exe.pdb
		$a_01_5 = {77 69 6e 6c 74 63 2e 65 78 65 } //02 00  winltc.exe
		$a_01_6 = {76 6d 78 63 6c 69 65 6e 74 2e 65 78 65 } //00 00  vmxclient.exe
	condition:
		any of ($a_*)
 
}