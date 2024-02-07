
rule PWS_Win32_Perfwo_A{
	meta:
		description = "PWS:Win32/Perfwo.A,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0c 00 07 00 00 03 00 "
		
	strings :
		$a_01_0 = {45 6c 65 6d 65 6e 74 43 6c 69 65 6e 74 } //01 00  ElementClient
		$a_00_1 = {65 6c 65 6d 65 6e 74 63 6c 69 65 6e 74 2e 65 78 65 } //03 00  elementclient.exe
		$a_00_2 = {2f 73 65 6e 64 6d 61 69 6c 2e } //02 00  /sendmail.
		$a_00_3 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 77 77 77 2d 66 6f 72 6d 2d 75 72 6c 65 6e 63 6f 64 65 64 } //01 00  Content-Type: application/x-www-form-urlencoded
		$a_00_4 = {55 73 65 72 3d } //01 00  User=
		$a_00_5 = {50 61 73 73 3d } //02 00  Pass=
		$a_01_6 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //00 00  WriteProcessMemory
	condition:
		any of ($a_*)
 
}