
rule BrowserModifier_Win32_WebEnhancementsMedia{
	meta:
		description = "BrowserModifier:Win32/WebEnhancementsMedia,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 43 30 46 32 39 30 30 2d 38 41 35 42 2d 34 44 30 44 2d 39 45 34 34 2d 31 30 34 33 35 42 43 34 30 37 37 34 7d } //01 00  CC0F2900-8A5B-4D0D-9E44-10435BC40774}
		$a_01_1 = {66 61 63 65 72 61 6e 67 65 41 70 70 40 40 00 } //01 00 
		$a_01_2 = {66 61 63 65 72 61 67 65 2e 70 64 62 00 } //01 00 
		$a_01_3 = {64 3a 5c 50 6c 75 67 69 6e 73 20 66 6f 72 20 42 72 6f 77 73 65 72 73 5c } //01 00  d:\Plugins for Browsers\
		$a_01_4 = {77 00 65 00 62 00 65 00 6e 00 68 00 61 00 6e 00 63 00 65 00 6d 00 65 00 6e 00 74 00 73 00 2e 00 6d 00 65 00 } //01 00  webenhancements.me
		$a_01_5 = {3d 20 73 20 27 57 65 62 20 45 6e 68 61 6e 63 65 6d 65 6e 74 73 27 } //01 00  = s 'Web Enhancements'
		$a_03_6 = {75 07 c6 05 90 01 02 03 10 01 83 7c 24 04 00 74 29 56 6a 00 6a 01 90 00 } //01 00 
		$a_03_7 = {75 08 6a 01 ff 15 90 01 04 83 7c 24 04 00 74 29 56 6a 00 6a 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_WebEnhancementsMedia_2{
	meta:
		description = "BrowserModifier:Win32/WebEnhancementsMedia,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {58 76 69 64 20 49 6e 73 74 61 6c 6c 61 74 69 6f 6e 00 } //01 00  癘摩䤠獮慴汬瑡潩n
		$a_01_1 = {57 65 62 45 6e 68 61 6e 63 65 6d 65 6e 74 73 2e 64 6c 6c 00 } //01 00 
		$a_01_2 = {73 72 63 2e 68 6f 74 62 61 72 2e 63 6f 6d 2f 67 70 6c 2f 78 76 69 64 2f 00 } //01 00 
		$a_01_3 = {66 61 63 65 2d 72 61 67 65 2e 63 6f 6d 2f 65 75 6c 61 2e 68 74 6d 6c 00 } //01 00 
		$a_01_4 = {77 65 62 65 6e 68 61 6e 63 65 6d 65 6e 74 73 2e 6d 65 00 } //01 00 
		$a_01_5 = {63 6c 69 63 6b 63 6f 75 70 6f 6e 2e 6d 65 00 } //01 00 
		$a_01_6 = {62 61 62 79 6c 6f 6e 2e 63 6f 6d 2f 65 6e 67 2f 64 69 73 70 6c 61 79 2e 70 68 70 } //01 00  babylon.com/eng/display.php
		$a_01_7 = {41 72 65 20 79 6f 75 20 73 75 72 65 20 79 6f 75 20 77 61 6e 74 20 74 6f 20 65 78 69 74 20 74 68 65 20 58 76 69 64 20 69 6e 73 74 61 6c 6c 61 74 69 6f 6e 3f 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_WebEnhancementsMedia_3{
	meta:
		description = "BrowserModifier:Win32/WebEnhancementsMedia,SIGNATURE_TYPE_PEHSTR_EXT,74 00 73 00 0b 00 00 04 00 "
		
	strings :
		$a_01_0 = {8d 41 f0 c7 84 24 24 02 00 00 ff ff ff ff 8d 48 0c 83 ca ff f0 0f c1 11 4a 85 d2 7f 0a } //04 00 
		$a_01_1 = {8b f0 8b 44 24 08 83 c0 f0 c7 84 24 24 02 00 00 ff ff ff ff 8d 48 0c 83 ca ff f0 0f c1 11 } //64 00 
		$a_01_2 = {42 72 6f 77 73 65 72 45 6e 68 61 6e 63 65 6d 65 6e 74 73 2e 44 4c 4c } //04 00  BrowserEnhancements.DLL
		$a_01_3 = {2e 53 74 6f 63 6b 42 61 72 } //02 00  .StockBar
		$a_01_4 = {7b 30 34 46 33 43 34 43 46 2d 38 44 43 44 2d 34 44 38 30 2d 39 32 42 35 2d 36 41 30 31 36 45 33 31 36 38 36 39 7d } //02 00  {04F3C4CF-8DCD-4D80-92B5-6A016E316869}
		$a_01_5 = {7b 42 37 41 30 46 36 34 41 2d 39 45 41 36 2d 34 46 45 34 2d 39 42 44 33 2d 42 39 46 30 30 32 35 42 34 39 33 30 7d } //02 00  {B7A0F64A-9EA6-4FE4-9BD3-B9F0025B4930}
		$a_01_6 = {4e 6f 52 65 6d 6f 76 65 20 27 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 27 } //01 00  NoRemove 'Browser Helper Objects'
		$a_01_7 = {43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 } //01 00  CurrentVersion\Policies\Explorer
		$a_01_8 = {4e 00 6f 00 42 00 61 00 63 00 6b 00 42 00 75 00 74 00 74 00 6f 00 6e 00 } //01 00  NoBackButton
		$a_01_9 = {4e 00 6f 00 4e 00 65 00 74 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 44 00 69 00 73 00 63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 } //01 00  NoNetConnectDisconnect
		$a_01_10 = {52 00 65 00 73 00 74 00 72 00 69 00 63 00 74 00 52 00 75 00 6e 00 } //00 00  RestrictRun
	condition:
		any of ($a_*)
 
}