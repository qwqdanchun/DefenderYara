
rule Backdoor_Win32_Visel_F{
	meta:
		description = "Backdoor:Win32/Visel.F,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 78 00 66 00 64 00 6e 00 66 00 2e 00 35 00 31 00 35 00 31 00 6a 00 2e 00 63 00 6f 00 6d 00 2e 00 63 00 6e 00 2f 00 64 00 6e 00 66 00 2e 00 74 00 78 00 74 00 } //01 00  http://xfdnf.5151j.com.cn/dnf.txt
		$a_01_1 = {2f 00 61 00 6e 00 6e 00 2f 00 62 00 61 00 63 00 6b 00 2e 00 68 00 74 00 6d 00 } //01 00  /ann/back.htm
		$a_01_2 = {5b 00 67 00 61 00 6d 00 65 00 51 00 51 00 41 00 64 00 64 00 72 00 5d 00 } //01 00  [gameQQAddr]
		$a_01_3 = {44 00 6f 00 6f 00 2e 00 65 00 78 00 65 00 } //01 00  Doo.exe
		$a_01_4 = {32 00 63 00 34 00 39 00 66 00 38 00 30 00 30 00 2d 00 63 00 32 00 64 00 64 00 2d 00 31 00 31 00 63 00 66 00 2d 00 39 00 61 00 64 00 36 00 2d 00 30 00 30 00 38 00 30 00 63 00 37 00 65 00 37 00 62 00 37 00 38 00 64 00 } //00 00  2c49f800-c2dd-11cf-9ad6-0080c7e7b78d
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Visel_F_2{
	meta:
		description = "Backdoor:Win32/Visel.F,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_02_0 = {49 00 6e 00 6a 00 65 00 63 00 74 00 90 02 10 55 00 52 00 4c 00 44 00 4e 00 53 00 90 02 10 44 00 65 00 73 00 63 00 72 00 69 00 70 00 74 00 69 00 6f 00 6e 00 90 02 10 44 00 69 00 73 00 70 00 6c 00 61 00 79 00 4e 00 61 00 6d 00 65 00 90 02 10 53 00 65 00 72 00 76 00 69 00 63 00 65 00 4e 00 61 00 6d 00 65 00 90 02 10 46 00 69 00 6c 00 65 00 4e 00 61 00 6d 00 65 00 90 02 10 49 00 70 00 5f 00 50 00 6f 00 72 00 74 00 90 02 10 49 00 70 00 90 02 10 43 00 6f 00 6e 00 66 00 69 00 67 00 90 02 10 55 00 72 00 6c 00 90 02 10 64 00 61 00 74 00 90 02 10 5c 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 90 00 } //01 00 
		$a_02_1 = {6b 6d 64 2e 65 78 65 20 2f 63 20 22 25 73 22 90 02 06 5c 00 6b 00 6d 00 64 00 2e 00 65 00 78 00 65 00 90 02 06 5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_01_2 = {4d 00 79 00 20 00 43 00 61 00 70 00 74 00 75 00 72 00 65 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 } //01 00  My Capture Window
		$a_02_3 = {7e 00 4d 00 48 00 7a 00 90 02 10 48 00 41 00 52 00 44 00 57 00 41 00 52 00 45 00 5c 00 44 00 45 00 53 00 43 00 52 00 49 00 50 00 54 00 49 00 4f 00 4e 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 43 00 65 00 6e 00 74 00 72 00 61 00 6c 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 72 00 5c 00 30 00 90 00 } //01 00 
		$a_02_4 = {44 6f 77 6e 43 74 72 6c 41 6c 74 44 65 6c 90 02 10 57 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 2e 00 65 00 78 00 65 90 00 } //01 00 
		$a_01_5 = {58 72 61 74 5f 44 4c 4c } //00 00  Xrat_DLL
	condition:
		any of ($a_*)
 
}