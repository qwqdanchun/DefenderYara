
rule PWS_Win32_QQpass_EE{
	meta:
		description = "PWS:Win32/QQpass.EE,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 09 00 00 02 00 "
		
	strings :
		$a_00_0 = {f7 f5 8b 44 24 20 8a 1c 31 8a 04 02 8a 54 24 13 02 c1 32 c3 32 c2 02 d3 88 04 31 } //01 00 
		$a_00_1 = {85 c0 74 12 8d 54 24 10 52 e8 } //02 00 
		$a_00_2 = {49 44 3d 25 64 26 41 63 74 69 6f 6e 3d 47 65 74 4d 79 49 50 } //02 00  ID=%d&Action=GetMyIP
		$a_00_3 = {4e 75 6d 62 65 72 3d 25 73 26 50 61 73 73 57 6f 72 64 3d 25 73 } //01 00  Number=%s&PassWord=%s
		$a_00_4 = {51 51 48 65 6c 70 65 72 44 6c 6c } //01 00  QQHelperDll
		$a_00_5 = {00 71 71 63 2e 64 6c 6c } //02 00  焀捱搮汬
		$a_00_6 = {31 36 38 77 64 2e 63 6f 6d 3a 38 31 2f } //02 00  168wd.com:81/
		$a_00_7 = {61 64 6d 69 6e 2e 63 6f 6d 3a 38 31 2f } //02 00  admin.com:81/
		$a_02_8 = {8b 48 7c 83 c0 14 85 c9 0f 84 90 01 02 00 00 8b 70 6c 85 f6 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}