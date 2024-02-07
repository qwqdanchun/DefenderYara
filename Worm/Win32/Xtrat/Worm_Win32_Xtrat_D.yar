
rule Worm_Win32_Xtrat_D{
	meta:
		description = "Worm:Win32/Xtrat.D,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {2a 00 5c 00 41 00 43 00 3a 00 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 52 00 6f 00 64 00 61 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 75 00 6e 00 64 00 65 00 72 00 5c 00 55 00 6e 00 64 00 65 00 72 00 30 00 64 00 65 00 61 00 6e 00 64 00 6f 00 2e 00 76 00 62 00 70 00 } //01 00  *\AC:\Users\Roda\Desktop\under\Under0deando.vbp
		$a_01_1 = {72 00 65 00 67 00 20 00 61 00 64 00 64 00 20 00 68 00 6b 00 63 00 75 00 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 70 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 20 00 2f 00 76 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 72 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 74 00 6f 00 6f 00 6c 00 73 00 20 00 2f 00 74 00 20 00 72 00 65 00 67 00 5f 00 64 00 77 00 6f 00 72 00 64 00 20 00 2f 00 64 00 } //01 00  reg add hkcu\software\microsoft\windows\currentversion\policies\system /v disableregistrytools /t reg_dword /d
		$a_01_2 = {72 00 65 00 67 00 20 00 61 00 64 00 64 00 20 00 68 00 6b 00 63 00 75 00 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 70 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 20 00 2f 00 76 00 20 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 20 00 2f 00 74 00 20 00 72 00 65 00 67 00 5f 00 64 00 77 00 6f 00 72 00 64 00 20 00 2f 00 64 00 } //01 00  reg add hkcu\software\microsoft\windows\currentversion\policies\system /v DisableTaskMgr /t reg_dword /d
		$a_01_3 = {61 00 76 00 67 00 74 00 72 00 61 00 79 00 2e 00 65 00 78 00 65 00 } //01 00  avgtray.exe
		$a_01_4 = {61 00 76 00 67 00 77 00 64 00 73 00 76 00 63 00 2e 00 65 00 78 00 65 00 } //01 00  avgwdsvc.exe
		$a_01_5 = {45 00 47 00 55 00 49 00 2e 00 65 00 78 00 65 00 } //00 00  EGUI.exe
		$a_00_6 = {5d 04 00 00 } //31 41 
	condition:
		any of ($a_*)
 
}