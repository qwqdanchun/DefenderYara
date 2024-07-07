
rule Trojan_Win32_Startpage_SS{
	meta:
		description = "Trojan:Win32/Startpage.SS,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 37 00 38 00 2e 00 73 00 6f 00 75 00 70 00 61 00 79 00 2e 00 63 00 6f 00 6d 00 2f 00 70 00 6c 00 75 00 67 00 69 00 6e 00 2f 00 67 00 2e 00 61 00 73 00 70 00 3f 00 69 00 64 00 3d 00 } //4 http://78.soupay.com/plugin/g.asp?id=
		$a_01_1 = {5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 48 00 69 00 64 00 65 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 49 00 63 00 6f 00 6e 00 73 00 5c 00 4e 00 65 00 77 00 53 00 74 00 61 00 72 00 74 00 50 00 61 00 6e 00 65 00 6c 00 5c 00 7b 00 38 00 37 00 31 00 43 00 35 00 33 00 38 00 30 00 2d 00 34 00 32 00 41 00 30 00 2d 00 31 00 30 00 36 00 39 00 2d 00 41 00 32 00 45 00 41 00 2d 00 30 00 38 00 30 00 30 00 32 00 42 00 33 00 30 00 33 00 30 00 39 00 44 00 7d 00 } //3 \Explorer\HideDesktopIcons\NewStartPanel\{871C5380-42A0-1069-A2EA-08002B30309D}
		$a_01_2 = {4d 61 78 74 68 6f 6e 2e 65 78 65 2c 54 68 65 57 6f 72 6c 64 2e 65 78 65 2c 49 45 58 50 4c 4f 52 45 2e 45 58 45 2c 46 69 72 65 66 6f 78 50 6f 72 74 61 62 6c 65 2e 65 78 65 2c 66 69 72 65 66 6f 78 2e 65 78 65 2c 33 36 30 53 74 61 72 74 2e 65 78 65 } //4 Maxthon.exe,TheWorld.exe,IEXPLORE.EXE,FirefoxPortable.exe,firefox.exe,360Start.exe
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*3+(#a_01_2  & 1)*4) >=11
 
}