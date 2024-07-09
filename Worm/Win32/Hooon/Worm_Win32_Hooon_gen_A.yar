
rule Worm_Win32_Hooon_gen_A{
	meta:
		description = "Worm:Win32/Hooon.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,10 00 0b 00 06 00 00 "
		
	strings :
		$a_03_0 = {33 c0 83 ff 05 0f 95 c0 f7 d8 66 85 c0 74 45 8b 3d ?? ?? 40 00 8d 4d e4 68 ?? ?? 40 00 51 ff d7 8b 16 50 8d 45 e8 52 50 ff d7 50 e8 08 d9 ff ff ff 15 } //10
		$a_03_1 = {70 66 89 0d ?? ?? 40 00 e9 ?? ?? ff ff 68 ?? ?? 40 00 eb 34 8d 4d e4 8d 55 e8 51 52 6a 02 ff 15 ?? ?? 40 00 83 c4 0c 8d 4d e0 ff 15 ?? ?? 40 00 } //5
		$a_00_2 = {43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 4d 00 75 00 73 00 74 00 61 00 66 00 61 00 2e 00 4d 00 49 00 43 00 52 00 4f 00 53 00 4f 00 46 00 2d 00 44 00 45 00 42 00 31 00 34 00 30 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 } //5 C:\Documents and Settings\Mustafa.MICROSOF-DEB140\Desktop\
		$a_00_3 = {44 65 73 69 67 6e 65 64 20 42 79 20 4e 6f 6f 6f 48 } //5 Designed By NoooH
		$a_00_4 = {73 00 74 00 61 00 72 00 74 00 20 00 2f 00 62 00 20 00 74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 74 00 61 00 73 00 6b 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 20 00 2f 00 69 00 6d 00 20 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 69 00 6d 00 20 00 72 00 65 00 67 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 } //1 start /b taskkill /f /im taskmgr.exe /im cmd.exe /im regedit.exe
		$a_00_5 = {64 00 65 00 6c 00 20 00 2f 00 71 00 20 00 43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 4b 00 69 00 6c 00 6c 00 41 00 6c 00 6c 00 2e 00 62 00 61 00 74 00 } //1 del /q C:\WINDOWS\system32\KillAll.bat
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*5+(#a_00_2  & 1)*5+(#a_00_3  & 1)*5+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=11
 
}