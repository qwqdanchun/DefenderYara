
rule TrojanClicker_Win32_Clikug_H{
	meta:
		description = "TrojanClicker:Win32/Clikug.H,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {5c 00 57 00 69 00 6e 00 48 00 65 00 6c 00 70 00 2e 00 65 00 78 00 65 00 22 00 20 00 2d 00 2d 00 50 00 72 00 65 00 43 00 68 00 65 00 63 00 6b 00 } //1 \WinHelp.exe" --PreCheck
		$a_01_1 = {58 00 45 00 31 00 70 00 59 00 33 00 4a 00 76 00 63 00 32 00 39 00 6d 00 64 00 46 00 78 00 58 00 61 00 57 00 35 00 6b 00 62 00 33 00 64 00 7a 00 58 00 45 00 31 00 68 00 61 00 57 00 35 00 30 00 5a 00 57 00 35 00 68 00 62 00 6d 00 4e 00 6c 00 } //1 XE1pY3Jvc29mdFxXaW5kb3dzXE1haW50ZW5hbmNl
		$a_01_2 = {4c 00 69 00 42 00 51 00 62 00 47 00 56 00 68 00 63 00 32 00 55 00 67 00 5a 00 47 00 38 00 67 00 62 00 6d 00 39 00 30 00 49 00 48 00 4e 00 30 00 62 00 33 00 41 00 67 00 64 00 47 00 68 00 70 00 63 00 79 00 42 00 30 00 59 00 58 00 4e 00 72 00 49 00 47 00 6c 00 75 00 49 00 47 00 39 00 79 00 5a 00 47 00 56 00 79 00 49 00 48 00 52 00 76 00 49 00 47 00 46 00 73 00 62 00 47 00 39 00 33 00 49 00 41 00 3d 00 3d 00 } //1 LiBQbGVhc2UgZG8gbm90IHN0b3AgdGhpcyB0YXNrIGluIG9yZGVyIHRvIGFsbG93IA==
		$a_01_3 = {49 00 48 00 56 00 77 00 5a 00 47 00 46 00 30 00 5a 00 58 00 49 00 75 00 49 00 46 00 42 00 73 00 5a 00 57 00 46 00 7a 00 5a 00 53 00 42 00 6b 00 62 00 79 00 42 00 75 00 62 00 33 00 51 00 67 00 63 00 33 00 52 00 76 00 63 00 43 00 42 00 30 00 61 00 47 00 6c 00 7a 00 49 00 48 00 52 00 68 00 63 00 32 00 73 00 67 00 61 00 57 00 34 00 67 00 62 00 33 00 4a 00 6b 00 5a 00 58 00 49 00 67 00 64 00 47 00 38 00 67 00 59 00 57 00 78 00 73 00 62 00 33 00 63 00 67 00 } //1 IHVwZGF0ZXIuIFBsZWFzZSBkbyBub3Qgc3RvcCB0aGlzIHRhc2sgaW4gb3JkZXIgdG8gYWxsb3cg
		$a_01_4 = {5c 00 55 00 70 00 64 00 48 00 65 00 6c 00 70 00 65 00 72 00 2e 00 64 00 6c 00 6c 00 } //1 \UpdHelper.dll
		$a_01_5 = {5c 00 52 00 75 00 6e 00 6e 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //1 \Runner.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}