
rule TrojanSpy_Win32_Bafi_P{
	meta:
		description = "TrojanSpy:Win32/Bafi.P,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {e3 0f 53 6a 01 68 f1 00 00 00 51 ff 15 90 01 04 8d 45 90 01 01 50 ff 15 90 01 04 8d 45 90 01 01 50 ff 75 90 01 01 ff 15 90 01 04 ff 75 90 01 01 ff 75 90 01 01 ff 15 90 00 } //01 00 
		$a_00_1 = {00 62 61 6e 6b 5c 73 72 76 62 6c 63 6b 35 2e 74 6d 70 00 } //01 00 
		$a_00_2 = {00 25 73 6e 65 74 62 61 6e 6b 5f 25 73 5f 25 73 00 } //01 00 
		$a_00_3 = {00 6e 61 74 69 6f 6e 61 6c 69 72 69 73 68 62 61 6e 6b 00 } //01 00 
		$a_00_4 = {00 62 61 6e 6b 6f 66 61 6d 65 72 69 63 61 00 } //01 00 
		$a_00_5 = {00 6e 61 74 69 6f 6e 61 6c 63 69 74 79 63 61 72 64 73 65 72 76 69 63 65 73 6f 6e 6c 69 6e 65 00 } //00 00  渀瑡潩慮捬瑩捹牡獤牥楶散潳汮湩e
	condition:
		any of ($a_*)
 
}
rule TrojanSpy_Win32_Bafi_P_2{
	meta:
		description = "TrojanSpy:Win32/Bafi.P,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0f 00 00 03 00 "
		
	strings :
		$a_03_0 = {32 c2 32 e2 88 66 90 01 01 88 47 90 01 01 8a 46 90 01 01 8a 67 90 01 01 32 c2 32 e2 88 66 90 00 } //02 00 
		$a_00_1 = {5c 61 70 70 63 6f 6e 66 33 32 2e 65 78 65 } //02 00  \appconf32.exe
		$a_00_2 = {2e 77 6d 61 2e 78 6d 6c 2e 62 61 74 2e } //02 00  .wma.xml.bat.
		$a_00_3 = {26 76 65 72 73 69 6f 6e 32 3d } //01 00  &version2=
		$a_00_4 = {5c 54 53 54 68 65 6d 65 2e 65 78 65 } //01 00  \TSTheme.exe
		$a_00_5 = {2f 69 6e 64 65 78 2e 70 68 70 } //01 00  /index.php
		$a_00_6 = {6e 61 74 69 6f 6e 61 6c 69 72 69 73 68 62 61 6e 6b } //01 00  nationalirishbank
		$a_00_7 = {77 65 6c 6c 73 66 61 72 67 6f } //01 00  wellsfargo
		$a_00_8 = {64 69 73 63 6f 76 65 72 63 61 72 64 } //01 00  discovercard
		$a_00_9 = {70 61 79 70 61 6c } //01 00  paypal
		$a_00_10 = {63 68 61 73 65 } //01 00  chase
		$a_00_11 = {5c 54 79 70 65 64 55 52 4c 73 } //01 00  \TypedURLs
		$a_00_12 = {73 6b 79 70 65 2e 65 78 65 } //01 00  skype.exe
		$a_00_13 = {61 76 67 74 72 61 79 2e 65 78 65 } //01 00  avgtray.exe
		$a_00_14 = {62 64 61 67 65 6e 74 2e 65 78 65 } //00 00  bdagent.exe
	condition:
		any of ($a_*)
 
}