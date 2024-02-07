
rule BrowserModifier_Win32_Xupiter{
	meta:
		description = "BrowserModifier:Win32/Xupiter,SIGNATURE_TYPE_PEHSTR_EXT,68 00 68 00 1d 00 00 64 00 "
		
	strings :
		$a_00_0 = {68 74 74 70 3a 2f 2f 77 77 77 2e 78 75 70 69 74 65 72 2e 63 6f 6d 2f } //64 00  http://www.xupiter.com/
		$a_00_1 = {68 74 74 70 3a 2f 2f 77 77 77 2e 62 72 6f 77 73 65 72 77 69 73 65 2e 63 6f 6d 2f } //64 00  http://www.browserwise.com/
		$a_00_2 = {68 74 74 70 3a 2f 2f 77 77 77 2e 73 71 77 69 72 65 2e 63 6f 6d 2f } //02 00  http://www.sqwire.com/
		$a_00_3 = {58 55 50 49 54 45 52 5f 54 4f 4f 4c 42 41 52 } //02 00  XUPITER_TOOLBAR
		$a_00_4 = {53 4f 46 54 57 41 52 45 5c 58 75 70 69 74 65 72 } //02 00  SOFTWARE\Xupiter
		$a_00_5 = {58 75 70 69 74 65 72 43 66 67 4c 6f 61 64 65 72 } //02 00  XupiterCfgLoader
		$a_00_6 = {70 6f 70 75 6e 64 65 72 2e 68 74 6d 6c } //02 00  popunder.html
		$a_00_7 = {70 6f 70 75 6e 64 65 72 2e 63 66 67 } //02 00  popunder.cfg
		$a_00_8 = {43 50 6f 70 75 6e 64 65 72 44 6f 63 } //02 00  CPopunderDoc
		$a_00_9 = {43 50 6f 70 75 6e 64 65 72 56 69 65 77 } //02 00  CPopunderView
		$a_00_10 = {58 75 70 69 74 65 72 54 6f 6f 6c 62 61 72 2e 65 78 65 } //02 00  XupiterToolbar.exe
		$a_00_11 = {58 75 70 69 74 65 72 54 6f 6f 6c 62 61 72 4c 6f 61 64 65 72 2e 65 78 65 } //02 00  XupiterToolbarLoader.exe
		$a_00_12 = {58 75 70 69 74 65 72 54 6f 6f 6c 62 61 72 2e 44 4c 4c } //02 00  XupiterToolbar.DLL
		$a_00_13 = {58 75 70 69 74 65 72 4d 65 6e 75 2e 78 6d 6c } //02 00  XupiterMenu.xml
		$a_00_14 = {58 75 70 69 74 65 72 4d 65 6e 75 2e 64 61 74 } //01 00  XupiterMenu.dat
		$a_00_15 = {53 54 41 52 54 55 50 5f 55 52 4c } //01 00  STARTUP_URL
		$a_00_16 = {49 45 20 41 63 74 69 76 69 74 79 } //02 00  IE Activity
		$a_00_17 = {53 6f 66 74 77 61 72 65 5c 53 51 } //02 00  Software\SQ
		$a_00_18 = {53 71 77 69 72 65 2c 20 49 6e 63 20 74 6f 6f 6c 62 61 72 20 77 61 73 20 69 6e 73 74 61 6c 6c 65 64 20 73 75 63 63 65 73 73 66 75 6c 6c 79 21 } //02 00  Sqwire, Inc toolbar was installed successfully!
		$a_00_19 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 55 6e 69 6e 73 74 61 6c 6c 5c 53 71 77 69 72 65 } //02 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Sqwire
		$a_00_20 = {53 51 44 65 73 6b 74 6f 70 2e 64 61 74 } //02 00  SQDesktop.dat
		$a_00_21 = {53 51 55 70 64 61 74 65 2e 64 61 74 } //02 00  SQUpdate.dat
		$a_00_22 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 73 71 77 69 72 65 2e 6c 6f 67 } //02 00  C:\WINDOWS\SYSTEM32\sqwire.log
		$a_00_23 = {36 45 36 44 44 39 33 45 2d 31 46 43 33 2d 34 46 34 33 2d 38 41 46 42 2d 31 42 37 42 39 30 43 39 44 33 45 42 } //68 00  6E6DD93E-1FC3-4F43-8AFB-1B7B90C9D3EB
		$a_02_24 = {70 6f 70 75 6e 64 65 72 2e 68 74 6d 6c 90 02 20 70 6f 70 75 6e 64 65 72 2e 63 66 67 90 02 20 53 4f 46 54 57 41 52 45 5c 58 75 70 69 74 65 72 90 02 20 49 6e 73 74 61 6c 6c 61 74 69 6f 6e 20 46 6f 6c 64 65 72 90 02 20 50 6f 70 75 6e 64 65 72 90 02 20 43 50 6f 70 75 6e 64 65 72 44 6f 63 90 02 20 43 50 6f 70 75 6e 64 65 72 56 69 65 77 90 00 } //68 00 
		$a_02_25 = {4f 4c 44 5f 53 45 41 52 43 48 5f 48 4f 4f 4b 53 5f 4c 4f 43 41 4c 90 02 10 53 6f 66 74 77 61 72 65 5c 58 75 70 69 74 65 72 90 02 10 4f 4c 44 5f 53 45 41 52 43 48 5f 48 4f 4f 4b 53 5f 43 55 52 52 45 4e 54 90 00 } //68 00 
		$a_02_26 = {68 74 74 70 3a 2f 2f 77 77 77 2e 73 71 77 69 72 65 2e 63 6f 6d 90 02 20 49 6e 74 65 72 6e 65 74 20 43 6f 6e 6e 65 63 74 69 6f 6e 20 54 65 73 74 90 02 20 53 71 77 69 72 65 90 02 20 44 6f 77 6e 6c 6f 61 64 3a 90 02 20 66 69 6c 65 2e 70 68 70 3f 66 69 6c 65 3d 90 02 20 26 61 69 64 3d 90 02 20 66 69 6c 65 69 6e 66 6f 2e 70 68 70 3f 66 69 6c 65 3d 90 02 20 26 73 69 64 3d 90 02 20 53 6f 66 74 77 61 72 65 5c 53 51 90 00 } //d4 fe 
		$a_00_27 = {41 64 76 61 6e 63 65 64 20 55 6e 69 6e 73 74 61 6c 6c 65 72 20 50 52 4f } //d4 fe  Advanced Uninstaller PRO
		$a_00_28 = {45 61 73 79 53 79 6e 63 20 50 72 6f } //00 00  EasySync Pro
	condition:
		any of ($a_*)
 
}