
rule Backdoor_Win32_Wkysol_E{
	meta:
		description = "Backdoor:Win32/Wkysol.E,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 0e 00 00 02 00 "
		
	strings :
		$a_03_0 = {bb 01 eb 09 66 c7 85 90 01 04 50 00 6a 00 6a 00 6a 03 68 90 09 07 00 66 c7 85 90 00 } //02 00 
		$a_03_1 = {80 c9 80 89 8d 90 01 04 6a 04 8d 95 90 1b 00 52 6a 1f 8b 85 90 01 04 50 ff 15 90 00 } //02 00 
		$a_03_2 = {6a 04 50 80 c9 80 6a 1f 56 89 4c 24 90 01 01 ff d3 90 00 } //02 00 
		$a_03_3 = {10 0e 00 00 ff 15 90 01 04 99 b9 08 07 00 00 f7 f9 03 d1 68 90 01 04 68 90 01 04 89 15 90 01 04 ff d3 90 00 } //02 00 
		$a_00_4 = {6b 79 73 5f 61 6c 6c 6f 77 5f 67 65 74 2e 61 73 70 3f 6e 61 6d 65 3d 67 65 74 6b 79 73 } //02 00  kys_allow_get.asp?name=getkys
		$a_01_5 = {31 39 39 39 30 38 31 37 00 } //01 00 
		$a_00_6 = {70 75 74 2e 61 73 70 3f 74 79 70 65 3d } //01 00  put.asp?type=
		$a_01_7 = {50 49 44 3a 25 35 64 20 20 20 20 50 41 54 48 3a 25 73 } //01 00  PID:%5d    PATH:%s
		$a_01_8 = {63 68 6b 73 72 76 2e 74 6d 70 } //02 00  chksrv.tmp
		$a_01_9 = {2d 72 65 6d 6f 76 65 6b 79 73 } //01 00  -removekys
		$a_01_10 = {41 43 5f 58 53 49 5f 55 74 69 6c 47 65 74 43 61 72 64 53 74 61 74 75 73 } //02 00  AC_XSI_UtilGetCardStatus
		$a_01_11 = {6e 65 74 77 6f 72 6b 2e 70 72 6f 78 79 2e 68 74 74 70 5f 70 6f 72 74 00 4e 55 4c 4c 00 00 00 00 70 72 65 66 73 2e 6a 73 } //02 00 
		$a_00_12 = {67 65 74 2e 61 73 70 3f 6e 61 6d 65 3d 67 65 74 2e 6a 73 } //02 00  get.asp?name=get.js
		$a_00_13 = {73 63 64 6c 6c 00 00 00 73 63 65 78 65 00 00 00 75 72 6c 00 73 6c 65 65 70 74 69 6d 65 00 00 00 73 72 76 5f 69 6e 66 6f } //00 00 
	condition:
		any of ($a_*)
 
}