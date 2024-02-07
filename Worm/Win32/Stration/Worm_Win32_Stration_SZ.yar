
rule Worm_Win32_Stration_SZ{
	meta:
		description = "Worm:Win32/Stration.SZ,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 06 00 00 05 00 "
		
	strings :
		$a_02_0 = {5c 53 79 73 74 65 6d 33 32 5c 6f 64 66 90 01 01 62 63 90 00 } //04 00 
		$a_00_1 = {49 6d 70 65 72 73 6f 6e 61 74 65 00 53 68 75 74 64 6f 77 6e 00 00 00 00 44 6c 6c 4e 61 6d 65 00 25 73 25 73 2e 75 30 30 } //02 00 
		$a_00_2 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e 5c 4e 6f 74 69 66 79 5c 69 65 78 70 6c 6f 72 65 } //01 00  SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\Notify\iexplore
		$a_00_3 = {7b 45 43 37 32 43 46 36 38 2d 46 38 37 30 2d 34 34 62 31 2d 38 35 33 43 2d 39 44 43 31 33 46 34 34 37 46 45 39 7d } //01 00  {EC72CF68-F870-44b1-853C-9DC13F447FE9}
		$a_00_4 = {7b 32 32 38 30 35 44 36 37 2d 44 45 31 38 2d 34 39 66 37 2d 39 37 42 39 2d 34 43 38 35 39 43 38 34 35 34 38 39 7d } //01 00  {22805D67-DE18-49f7-97B9-4C859C845489}
		$a_00_5 = {45 6e 75 6d 50 72 6f 63 65 73 73 4d 6f 64 75 6c 65 73 } //00 00  EnumProcessModules
	condition:
		any of ($a_*)
 
}