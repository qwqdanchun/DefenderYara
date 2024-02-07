
rule Backdoor_Win32_Minjat_A{
	meta:
		description = "Backdoor:Win32/Minjat.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 41 54 41 5f 42 45 47 49 4e 3a 00 } //01 00  䅄䅔䉟䝅义:
		$a_01_1 = {53 79 73 74 65 6d 33 32 5c 44 52 49 56 45 52 53 5c 61 73 79 6e 63 6d 61 63 2e 73 79 73 } //01 00  System32\DRIVERS\asyncmac.sys
		$a_01_2 = {22 00 25 00 73 00 22 00 20 00 2d 00 6c 00 6f 00 63 00 61 00 6c 00 } //01 00  "%s" -local
		$a_00_3 = {25 00 55 00 53 00 45 00 52 00 50 00 52 00 4f 00 46 00 49 00 4c 00 45 00 25 00 5c 00 73 00 70 00 6f 00 6f 00 6c 00 76 00 2e 00 65 00 78 00 65 00 } //01 00  %USERPROFILE%\spoolv.exe
		$a_00_4 = {57 00 69 00 6e 00 73 00 74 00 61 00 30 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 } //01 00  Winsta0\Default
		$a_00_5 = {8a 04 3e 3c 30 72 0c 3c 39 77 08 0f b6 c8 83 e9 30 eb 16 3c 61 72 0c 3c 7a 77 08 0f b6 c8 83 e9 57 eb 06 0f b6 c8 83 e9 37 } //00 00 
	condition:
		any of ($a_*)
 
}