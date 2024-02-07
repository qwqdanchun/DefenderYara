
rule Backdoor_Win32_Poison_Y_dll{
	meta:
		description = "Backdoor:Win32/Poison.Y!dll,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {2e 6b 6c 67 00 } //01 00 
		$a_01_1 = {55 6e 74 5f 57 65 62 43 61 6d } //01 00  Unt_WebCam
		$a_01_2 = {55 6e 74 5f 44 6f 77 6e 46 69 6c 65 54 68 72 65 61 64 } //01 00  Unt_DownFileThread
		$a_01_3 = {55 6e 69 74 5f 46 69 6c 65 54 72 61 6e 73 } //01 00  Unit_FileTrans
		$a_01_4 = {55 6e 69 74 5f 53 63 72 65 65 6e 53 70 79 } //01 00  Unit_ScreenSpy
		$a_00_5 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //01 00  InternetOpenUrlA
		$a_00_6 = {63 61 70 47 65 74 44 72 69 76 65 72 44 65 73 63 72 69 70 74 69 6f 6e 41 } //01 00  capGetDriverDescriptionA
		$a_00_7 = {4d 61 69 6e 53 65 72 76 69 63 65 } //01 00  MainService
		$a_00_8 = {4d 61 69 6e 57 6f 72 6b } //01 00  MainWork
		$a_00_9 = {53 65 72 76 69 63 65 4d 61 69 6e } //00 00  ServiceMain
	condition:
		any of ($a_*)
 
}