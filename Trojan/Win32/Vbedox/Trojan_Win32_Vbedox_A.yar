
rule Trojan_Win32_Vbedox_A{
	meta:
		description = "Trojan:Win32/Vbedox.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_80_0 = {5c 50 72 6f 6a 65 74 73 5c 76 62 73 65 64 69 74 5f 73 6f 75 72 63 65 5c 73 63 72 69 70 74 32 65 78 65 5c 52 65 6c 65 61 73 65 5c 6d 79 77 73 63 72 69 70 74 2e 70 64 62 } //\Projets\vbsedit_source\script2exe\Release\mywscript.pdb  1
		$a_00_1 = {6f 00 62 00 6a 00 53 00 68 00 65 00 6c 00 6c 00 2e 00 72 00 75 00 6e 00 20 00 22 00 63 00 6d 00 64 00 20 00 2f 00 4b 00 20 00 22 00 26 00 72 00 69 00 6d 00 20 00 26 00 73 00 69 00 6d 00 20 00 26 00 67 00 69 00 6d 00 20 00 26 00 76 00 69 00 6d 00 2c 00 30 00 } //1 objShell.run "cmd /K "&rim &sim &gim &vim,0
		$a_02_2 = {4f 00 70 00 65 00 6e 00 22 00 47 00 45 00 54 00 22 00 2c 00 22 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 75 00 70 00 70 00 6f 00 72 00 74 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 [0-20] 2e 00 70 00 68 00 70 00 2f 00 [0-20] 2e 00 70 00 68 00 70 00 2f 00 63 00 73 00 72 00 73 00 73 00 73 00 2e 00 70 00 68 00 70 00 } //1
		$a_00_3 = {53 00 61 00 76 00 65 00 54 00 6f 00 46 00 69 00 6c 00 65 00 20 00 22 00 63 00 3a 00 2f 00 53 00 79 00 73 00 74 00 65 00 6d 00 56 00 6f 00 6c 00 75 00 6d 00 65 00 2f 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 2f 00 63 00 73 00 72 00 73 00 73 00 73 00 2e 00 65 00 78 00 65 00 } //1 SaveToFile "c:/SystemVolume/Program/csrsss.exe
		$a_00_4 = {61 00 74 00 74 00 72 00 69 00 62 00 20 00 2b 00 73 00 20 00 2b 00 68 00 20 00 63 00 3a 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 56 00 6f 00 6c 00 75 00 6d 00 65 00 20 00 26 00 20 00 63 00 68 00 64 00 69 00 72 00 } //1 attrib +s +h c:\SystemVolume & chdir
		$a_00_5 = {72 00 65 00 67 00 20 00 61 00 64 00 64 00 20 00 22 00 22 00 48 00 4b 00 43 00 55 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 22 00 22 00 20 00 2f 00 76 00 20 00 41 00 64 00 6f 00 62 00 65 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 53 00 5a 00 20 00 2f 00 64 00 20 00 63 00 3a 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 56 00 6f 00 6c 00 75 00 6d 00 65 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 5c 00 63 00 73 00 72 00 73 00 73 00 73 00 2e 00 65 00 78 00 65 00 } //1 reg add ""HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"" /v Adobe /t REG_SZ /d c:\SystemVolume\Program\csrsss.exe
	condition:
		((#a_80_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=5
 
}