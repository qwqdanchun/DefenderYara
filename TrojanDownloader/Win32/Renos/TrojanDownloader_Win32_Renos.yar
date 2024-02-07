
rule TrojanDownloader_Win32_Renos{
	meta:
		description = "TrojanDownloader:Win32/Renos,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {32 07 c1 c0 07 0f af c0 69 c0 44 33 22 11 c1 c8 0f 69 c0 11 33 22 44 c1 c8 05 0f af c0 69 c0 13 13 00 00 ae e2 da } //01 00 
		$a_03_1 = {ff e0 8b d8 81 eb 90 01 04 8d bb 90 01 04 b9 40 00 00 00 81 37 90 01 04 af e2 f7 e8 24 00 00 00 90 00 } //01 00 
		$a_03_2 = {75 06 ff 80 b8 00 00 00 33 c0 c2 10 00 64 ff 35 00 00 00 00 64 89 25 00 00 00 00 cc 64 8f 05 00 00 00 00 5f 8b 3c 24 b9 90 01 04 81 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Renos_2{
	meta:
		description = "TrojanDownloader:Win32/Renos,SIGNATURE_TYPE_PEHSTR_EXT,4b 00 4b 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {56 69 72 75 73 20 41 63 74 69 76 69 74 79 21 21 21 20 53 79 73 74 65 6d 20 6f 6e 20 79 6f 75 72 20 50 43 20 69 73 20 69 6e 66 65 63 74 65 64 2e } //0a 00  Virus Activity!!! System on your PC is infected.
		$a_01_1 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //0a 00  InternetOpenUrlA
		$a_00_2 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //0a 00  ShellExecuteA
		$a_01_3 = {53 68 65 6c 6c 5f 4e 6f 74 69 66 79 49 63 6f 6e 41 } //0a 00  Shell_NotifyIconA
		$a_00_4 = {44 69 73 70 6c 61 79 49 63 6f 6e } //0a 00  DisplayIcon
		$a_01_5 = {6c 6f 61 64 00 } //0a 00 
		$a_01_6 = {61 6c 6c 65 72 74 00 } //05 00 
		$a_01_7 = {74 6d 78 78 78 68 2e 64 6c 6c } //05 00  tmxxxh.dll
		$a_01_8 = {68 74 74 70 3a 2f 2f 77 77 77 2e } //00 00  http://www.
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Renos_3{
	meta:
		description = "TrojanDownloader:Win32/Renos,SIGNATURE_TYPE_PEHSTR_EXT,6b 00 6a 00 07 00 00 64 00 "
		
	strings :
		$a_01_0 = {8b 44 24 14 0f be 14 3e 0f be 4c 37 01 31 ca 88 14 18 43 83 c7 02 89 f1 83 c8 ff 40 80 3c 01 00 75 f9 39 c7 72 da } //03 00 
		$a_00_1 = {77 69 6e 64 6f 77 73 20 78 70 20 61 6d 69 67 6f 20 79 6f 20 6d 61 6e 20 66 72 69 65 6e 64 73 20 68 65 6c 6c 6f 20 67 6f 2d 67 6f } //03 00  windows xp amigo yo man friends hello go-go
		$a_00_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 55 6e 69 6e 73 74 61 6c 6c 5c 53 79 73 74 65 6d 20 41 6c 65 72 74 20 50 6f 70 75 70 } //02 00  Software\Microsoft\Windows\CurrentVersion\Uninstall\System Alert Popup
		$a_00_3 = {5c 5c 2e 5c 70 69 70 65 5c 69 70 63 74 65 73 74 } //02 00  \\.\pipe\ipctest
		$a_00_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 57 69 6e 64 6f 77 73 58 70 32 30 30 33 } //01 00  Software\MicrosoftWindowsXp2003
		$a_00_5 = {68 69 72 74 65 6c 6c 6f 75 73 } //01 00  hirtellous
		$a_00_6 = {45 72 72 6f 72 20 4c 6f 61 64 20 68 44 65 6c 65 74 65 } //00 00  Error Load hDelete
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Renos_4{
	meta:
		description = "TrojanDownloader:Win32/Renos,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 09 00 00 01 00 "
		
	strings :
		$a_00_0 = {77 65 62 69 6e 73 74 2e 64 6c 6c } //01 00  webinst.dll
		$a_00_1 = {34 00 41 00 33 00 44 00 36 00 30 00 39 00 41 00 2d 00 34 00 33 00 42 00 38 00 2d 00 34 00 34 00 30 00 36 00 2d 00 42 00 37 00 39 00 33 00 2d 00 38 00 34 00 46 00 32 00 34 00 34 00 32 00 34 00 36 00 33 00 32 00 35 00 } //01 00  4A3D609A-43B8-4406-B793-84F244246325
		$a_01_2 = {41 78 4e 61 6d 65 54 72 61 63 6b 4c 69 62 } //01 00  AxNameTrackLib
		$a_01_3 = {49 57 65 62 49 6e 73 74 61 6c 6c 57 } //02 00  IWebInstallW
		$a_00_4 = {31 41 32 36 46 30 37 46 2d 30 44 36 30 2d 34 38 33 35 2d 39 31 43 46 2d 31 45 31 37 36 36 41 30 45 43 35 36 } //02 00  1A26F07F-0D60-4835-91CF-1E1766A0EC56
		$a_00_5 = {37 35 34 33 46 42 44 35 2d 32 32 37 39 2d 34 44 30 33 2d 38 46 32 39 2d 45 42 32 31 35 33 31 46 41 32 46 45 } //02 00  7543FBD5-2279-4D03-8F29-EB21531FA2FE
		$a_00_6 = {41 78 4e 61 6d 65 54 72 61 63 6b 2e 64 6c 6c } //03 00  AxNameTrack.dll
		$a_00_7 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //03 00  VirtualProtect
		$a_00_8 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //00 00  DllRegisterServer
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Renos_5{
	meta:
		description = "TrojanDownloader:Win32/Renos,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0f 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 70 79 77 61 72 65 4c 6f 63 6b 65 64 } //02 00  SpywareLocked
		$a_00_1 = {73 70 79 6c 6f 63 6b 65 64 2e 63 6f 6d 2f 3f 61 66 66 3d } //03 00  spylocked.com/?aff=
		$a_00_2 = {6b 65 72 61 74 6f 6d 69 72 32 2e 62 69 7a 2f 67 65 74 2e 70 68 70 3f 70 61 72 74 6e 65 72 3d } //03 00  keratomir2.biz/get.php?partner=
		$a_00_3 = {6b 65 72 61 74 6f 6d 69 72 2e 62 69 7a 2f 67 65 74 2e 70 68 70 3f 70 61 72 74 6e 65 72 3d } //01 00  keratomir.biz/get.php?partner=
		$a_00_4 = {70 6f 72 6e 6d 61 67 2e 63 6f 6d 2f 69 6e 73 74 61 6c 6c 2f } //02 00  pornmag.com/install/
		$a_00_5 = {59 6f 75 72 20 73 79 73 74 65 6d 20 69 73 20 69 6e 66 65 63 74 65 64 } //01 00  Your system is infected
		$a_00_6 = {41 72 65 20 79 6f 75 20 66 75 63 6b 69 6e 67 20 63 72 61 7a 79 20 6d 61 6e 3f } //01 00  Are you fucking crazy man?
		$a_00_7 = {41 6c 6c 20 70 6f 72 6e 20 6c 69 6e 6b 73 20 77 68 61 74 20 61 72 65 20 77 6f 72 74 68 20 79 6f 75 72 20 76 69 73 69 74 2e } //05 00  All porn links what are worth your visit.
		$a_02_8 = {68 74 74 70 3a 2f 2f 6b 65 72 61 74 6f 6d 69 72 90 02 02 2e 62 69 7a 2f 67 65 74 2e 70 68 70 3f 70 61 72 74 6e 65 72 3d 90 02 04 53 70 79 77 61 72 65 4c 6f 63 6b 65 64 90 00 } //05 00 
		$a_02_9 = {68 74 74 70 3a 2f 2f 6b 65 72 61 74 6f 6d 69 72 90 02 02 2e 62 69 7a 2f 67 65 74 2e 70 68 70 3f 70 61 72 74 6e 65 72 3d 90 02 04 53 70 79 6c 6f 63 6b 65 64 90 00 } //05 00 
		$a_02_10 = {68 74 74 70 3a 2f 2f 6b 65 72 61 74 6f 6d 69 72 90 02 02 2e 62 69 7a 2f 67 65 74 2e 70 68 70 3f 70 61 72 74 6e 65 72 3d 90 02 04 6b 48 41 74 77 5b 53 5d 90 00 } //05 00 
		$a_01_11 = {50 4c 4c 48 02 17 17 53 5d 4a 59 4c 57 55 51 4a } //05 00  䱐䡌ᜂ北䩝䱙啗䩑
		$a_02_12 = {81 7d 14 03 02 00 00 74 20 81 7d 14 04 02 00 00 74 17 81 7d 14 01 02 00 00 74 0e 81 7d 14 05 04 00 00 74 05 e9 8e 00 00 00 e8 90 02 05 83 f8 01 75 07 e8 90 02 05 eb 2d 80 3d 90 00 } //05 00 
		$a_02_13 = {81 7d 14 03 02 00 00 74 1d 81 7d 14 04 02 00 00 74 14 81 7d 14 01 02 00 00 74 0b 81 7d 14 05 04 00 00 74 02 eb 6b e8 90 02 05 83 f8 01 75 07 e8 90 00 } //04 00 
		$a_02_14 = {8b ec 83 c4 f8 6a 01 6a 00 ff 75 08 8d 05 90 02 04 50 8d 05 90 02 04 50 6a 00 ff 15 90 02 04 b8 01 00 00 00 c9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Renos_6{
	meta:
		description = "TrojanDownloader:Win32/Renos,SIGNATURE_TYPE_PEHSTR,08 00 08 00 05 00 00 03 00 "
		
	strings :
		$a_01_0 = {32 32 43 2d 34 32 42 44 2d 41 38 43 42 2d 37 } //03 00  22C-42BD-A8CB-7
		$a_01_1 = {77 73 70 64 6c 2e 63 6f 6d } //01 00  wspdl.com
		$a_01_2 = {78 74 77 61 50 5c 4d 69 63 } //01 00  xtwaP\Mic
		$a_01_3 = {5e 5e 65 73 2e 2b 2f 70 61 79 2f 25 73 } //01 00  ^^es.+/pay/%s
		$a_01_4 = {3f 74 79 70 65 3d 6d 61 69 6e 26 70 } //00 00  ?type=main&p
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Renos_7{
	meta:
		description = "TrojanDownloader:Win32/Renos,SIGNATURE_TYPE_PEHSTR,08 00 08 00 05 00 00 03 00 "
		
	strings :
		$a_01_0 = {37 36 30 38 36 43 30 35 2d 34 44 30 41 2d 34 42 39 32 2d 39 32 31 39 2d 32 45 33 46 45 38 43 35 35 33 46 39 } //03 00  76086C05-4D0A-4B92-9219-2E3FE8C553F9
		$a_01_1 = {42 68 6f 4e 65 77 2e 42 68 6f 2e 31 20 3d 20 73 20 27 42 48 4f 2e 74 62 6c } //01 00  BhoNew.Bho.1 = s 'BHO.tbl
		$a_01_2 = {27 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 27 } //01 00  'Browser Helper Objects'
		$a_01_3 = {31 35 43 37 44 37 41 44 2d 41 38 37 41 2d 34 43 30 44 2d 39 44 38 42 2d 36 33 37 46 43 44 33 34 38 38 45 46 } //01 00  15C7D7AD-A87A-4C0D-9D8B-637FCD3488EF
		$a_01_4 = {50 72 6f 67 49 44 20 3d 20 73 20 27 42 68 6f 4e 65 77 2e 42 68 6f 2e 31 27 } //00 00  ProgID = s 'BhoNew.Bho.1'
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Renos_8{
	meta:
		description = "TrojanDownloader:Win32/Renos,SIGNATURE_TYPE_PEHSTR,19 00 19 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 00 00 75 72 6c 6d 6f 6e 2e 64 6c 6c } //0a 00 
		$a_01_1 = {66 69 72 73 74 2d 72 65 61 73 6f 6e 2e 25 73 00 63 6f 6d 2f 75 70 2e 70 68 70 3f 61 64 76 69 64 3d } //02 00 
		$a_01_2 = {69 53 53 44 5f 43 4d 00 43 3a 5c 53 65 74 75 70 2e 65 78 65 } //02 00  卩䑓䍟M㩃卜瑥灵攮數
		$a_01_3 = {68 74 74 70 3a 2f 2f 00 56 52 53 49 4e } //01 00 
		$a_01_4 = {47 65 74 54 65 6d 70 46 69 6c 65 4e 61 6d 65 41 } //01 00  GetTempFileNameA
		$a_01_5 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //01 00  SetWindowsHookExA
		$a_01_6 = {47 65 74 53 74 61 72 74 75 70 49 6e 66 6f 41 } //00 00  GetStartupInfoA
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Renos_9{
	meta:
		description = "TrojanDownloader:Win32/Renos,SIGNATURE_TYPE_PEHSTR,2b 00 2b 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {76 69 73 61 } //0a 00  visa
		$a_01_1 = {6d 61 73 74 65 72 63 61 72 64 } //0a 00  mastercard
		$a_01_2 = {53 79 73 74 65 6d 20 45 72 72 6f 72 21 } //0a 00  System Error!
		$a_01_3 = {61 6e 74 69 76 69 72 75 73 } //01 00  antivirus
		$a_01_4 = {56 65 72 73 69 6f 6e 49 6e 64 65 70 65 6e 64 65 6e 74 50 72 6f 67 49 44 20 3d 20 73 20 27 42 68 6f 4e 65 77 2e 42 68 6f 41 70 70 27 } //01 00  VersionIndependentProgID = s 'BhoNew.BhoApp'
		$a_01_5 = {43 75 72 56 65 72 20 3d 20 73 20 27 42 68 6f 4e 65 77 2e 42 68 6f 41 70 70 } //01 00  CurVer = s 'BhoNew.BhoApp
		$a_01_6 = {6e 69 63 68 65 70 61 73 73 00 00 00 77 6e 75 2e 63 6f 6d 00 73 65 67 70 61 79 00 00 76 65 72 69 66 69 65 64 70 61 79 6d 65 6e 74 73 6f 6c 75 74 69 6f 6e 73 6f 6e 6c 69 6e 65 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Renos_10{
	meta:
		description = "TrojanDownloader:Win32/Renos,SIGNATURE_TYPE_PEHSTR,ffffffd0 00 ffffffd0 00 0f 00 00 64 00 "
		
	strings :
		$a_01_0 = {50 00 2a 00 5c 00 41 00 44 00 3a 00 5c 00 4d 00 61 00 73 00 74 00 65 00 72 00 5c 00 41 00 44 00 57 00 41 00 52 00 41 00 5f 00 4e 00 45 00 57 00 5c 00 69 00 64 00 6c 00 65 00 5f 00 63 00 6f 00 6d 00 70 00 6f 00 6e 00 65 00 74 00 2e 00 76 00 62 00 70 00 } //64 00  P*\AD:\Master\ADWARA_NEW\idle_componet.vbp
		$a_01_1 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //03 00  CreateToolhelp32Snapshot
		$a_01_2 = {4d 61 6b 65 46 61 6b 65 56 69 72 75 73 } //02 00  MakeFakeVirus
		$a_01_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 61 00 6e 00 74 00 69 00 73 00 70 00 79 00 73 00 6f 00 6c 00 75 00 74 00 69 00 6f 00 6e 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 3f 00 61 00 69 00 64 00 3d 00 } //02 00  http://antispysolutions.com/?aid=
		$a_01_4 = {68 74 74 70 3a 2f 2f 76 6e 6d 78 6a 63 78 2e 63 6f 6d 2f 63 6f 6e 66 69 67 2e 69 6e 69 } //01 00  http://vnmxjcx.com/config.ini
		$a_01_5 = {63 6f 70 79 20 63 3a 5c 77 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 33 32 5c 73 68 65 6c 6c 33 32 2e 64 6c 6c 20 63 3a 5c 73 68 65 6c 6c 33 32 2e 64 6c 6c 31 } //01 00  copy c:\windows\system32\shell32.dll c:\shell32.dll1
		$a_01_6 = {63 6f 70 79 20 63 3a 5c 77 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 33 32 5c 73 68 65 6c 6c 33 32 2e 64 6c 6c 20 63 3a 5c 73 68 65 6c 6c 33 32 2e 64 6c 6c 32 } //01 00  copy c:\windows\system32\shell32.dll c:\shell32.dll2
		$a_01_7 = {63 6f 70 79 20 63 3a 5c 77 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 33 32 5c 73 68 65 6c 6c 33 32 2e 64 6c 6c 20 63 3a 5c 73 68 65 6c 6c 33 32 2e 64 6c 6c 33 } //01 00  copy c:\windows\system32\shell32.dll c:\shell32.dll3
		$a_01_8 = {64 65 6c 20 63 3a 5c 73 68 65 6c 6c 33 32 2e 64 6c 6c 31 } //01 00  del c:\shell32.dll1
		$a_01_9 = {64 65 6c 20 63 3a 5c 73 68 65 6c 6c 33 32 2e 64 6c 6c 32 } //01 00  del c:\shell32.dll2
		$a_01_10 = {64 65 6c 20 63 3a 5c 73 68 65 6c 6c 33 32 2e 64 6c 6c 33 } //01 00  del c:\shell32.dll3
		$a_01_11 = {5c 69 64 6c 65 73 65 72 76 2e 65 78 65 } //01 00  \idleserv.exe
		$a_01_12 = {00 49 73 50 72 6f 63 52 75 6e 00 } //01 00 
		$a_01_13 = {4d 61 6b 65 49 74 41 6c 6c } //01 00  MakeItAll
		$a_01_14 = {00 64 6f 77 73 5c 73 79 73 74 65 6d 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Renos_11{
	meta:
		description = "TrojanDownloader:Win32/Renos,SIGNATURE_TYPE_PEHSTR,19 00 14 00 2c 00 00 05 00 "
		
	strings :
		$a_01_0 = {47 45 54 20 2f 74 72 69 61 6c 2e 70 68 70 3f 72 65 73 74 3d 25 75 26 76 65 72 3d 25 75 26 61 3d 30 30 30 30 30 31 32 39 20 48 54 54 50 2f 31 2e 30 } //05 00  GET /trial.php?rest=%u&ver=%u&a=00000129 HTTP/1.0
		$a_01_1 = {47 45 54 20 2f 64 6f 77 6e 6c 6f 61 64 2e 70 68 70 3f 26 61 64 76 69 64 3d 30 30 30 30 30 33 35 37 26 75 3d 25 75 26 70 3d 25 75 20 48 54 54 50 2f 31 2e 30 } //05 00  GET /download.php?&advid=00000357&u=%u&p=%u HTTP/1.0
		$a_01_2 = {43 3a 5c 77 69 6e 73 74 61 6c 6c 2e 65 78 65 } //05 00  C:\winstall.exe
		$a_01_3 = {43 3a 5c 57 69 6e 64 6f 77 73 5c 78 70 75 70 64 61 74 65 2e 65 78 65 } //03 00  C:\Windows\xpupdate.exe
		$a_01_4 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 42 72 61 76 65 53 65 6e 74 72 79 5c 42 72 61 76 65 53 65 6e 74 72 79 2e 65 78 65 } //05 00  C:\Program Files\BraveSentry\BraveSentry.exe
		$a_01_5 = {57 69 6e 64 6f 77 73 20 68 61 73 20 64 65 74 65 63 74 65 64 20 73 70 79 77 61 72 65 20 69 6e 66 65 63 74 69 6f 6e 21 } //05 00  Windows has detected spyware infection!
		$a_01_6 = {57 69 6e 64 6f 77 73 20 53 65 63 75 72 69 74 79 20 43 65 6e 74 65 72 20 68 61 73 20 64 65 74 65 63 74 65 64 20 73 70 79 77 61 72 65 2f 61 64 77 61 72 65 20 69 6e 66 65 63 74 69 6f 6e 21 } //05 00  Windows Security Center has detected spyware/adware infection!
		$a_01_7 = {36 39 2e 35 30 2e 31 37 35 2e 31 37 38 } //05 00  69.50.175.178
		$a_01_8 = {36 39 2e 35 30 2e 31 37 35 2e 31 38 31 } //03 00  69.50.175.181
		$a_01_9 = {48 6f 73 74 3a 20 68 79 79 64 } //03 00  Host: hyyd
		$a_01_10 = {48 6f 73 74 3a 20 64 6f 77 6e 6c 6f 61 64 2e 62 72 61 76 65 73 65 6e 74 72 79 2e 63 6f 6d } //02 00  Host: download.bravesentry.com
		$a_01_11 = {59 6f 75 72 20 63 6f 6d 70 75 74 65 72 20 69 73 20 69 6e 66 65 63 74 65 64 21 } //02 00  Your computer is infected!
		$a_01_12 = {59 6f 75 72 20 63 6f 6d 70 75 74 65 72 20 69 73 20 69 6e 20 44 61 6e 67 65 72 21 } //01 00  Your computer is in Danger!
		$a_01_13 = {43 6c 69 63 6b 20 68 65 72 65 20 74 6f 20 70 72 6f 74 65 63 74 20 79 6f 75 72 20 63 6f 6d 70 75 74 65 72 20 66 72 6f 6d 20 73 70 79 77 61 72 65 21 } //01 00  Click here to protect your computer from spyware!
		$a_01_14 = {43 6c 69 63 6b 20 68 65 72 65 20 74 6f 20 69 6e 73 74 61 6c 6c 20 74 68 65 20 6c 61 74 65 73 74 20 70 72 6f 74 65 63 74 69 6f 6e 20 74 6f 6f 6c 73 21 } //01 00  Click here to install the latest protection tools!
		$a_01_15 = {49 74 20 69 73 20 73 74 72 6f 6e 67 6c 79 20 72 65 63 6f 6d 6d 65 6e 64 65 64 20 74 6f 20 75 73 65 20 73 70 65 63 69 61 6c 20 61 6e 74 69 73 70 79 77 61 72 65 20 74 6f 6f 6c 73 20 74 6f 20 70 72 65 76 65 6e 74 20 64 61 74 61 20 6c 6f 73 73 2e } //01 00  It is strongly recommended to use special antispyware tools to prevent data loss.
		$a_01_16 = {59 6f 75 72 20 63 } //01 00  Your c
		$a_01_17 = {6f 6d 70 75 74 65 } //01 00  ompute
		$a_01_18 = {72 20 69 73 20 69 6e 66 65 } //01 00  r is infe
		$a_01_19 = {63 74 65 64 21 } //01 00  cted!
		$a_01_20 = {57 69 6e 64 6f 77 73 20 68 61 73 20 64 65 74 65 63 } //01 00  Windows has detec
		$a_01_21 = {74 65 64 20 73 70 79 77 } //01 00  ted spyw
		$a_01_22 = {61 72 65 20 69 6e 66 } //01 00  are inf
		$a_01_23 = {65 63 74 69 6f 6e 21 } //01 00  ection!
		$a_01_24 = {49 74 20 69 73 20 72 65 63 6f 6d } //01 00  It is recom
		$a_01_25 = {6d 65 6e 64 65 } //01 00  mende
		$a_01_26 = {64 20 74 6f 20 75 73 65 20 73 70 } //01 00  d to use sp
		$a_01_27 = {65 63 69 61 6c 20 61 6e 74 69 } //01 00  ecial anti
		$a_01_28 = {73 70 79 77 61 72 65 20 74 6f 6f } //01 00  spyware too
		$a_01_29 = {6c 73 20 74 6f 20 70 72 65 76 } //01 00  ls to prev
		$a_01_30 = {65 6e 74 20 64 61 74 61 20 6c } //01 00  ent data l
		$a_01_31 = {6f 73 73 2e 20 57 69 6e 64 } //01 00  oss. Wind
		$a_01_32 = {6f 77 73 20 77 69 6c 6c 20 6e 6f 77 } //01 00  ows will now
		$a_01_33 = {20 64 6f 77 6e 6c 6f 61 64 20 61 6e } //01 00   download an
		$a_01_34 = {64 20 69 6e 73 74 61 6c 6c 20 74 } //01 00  d install t
		$a_01_35 = {68 65 20 6d 6f 73 74 20 75 70 2d 74 } //01 00  he most up-t
		$a_01_36 = {6f 2d 64 61 74 65 20 61 6e 74 69 } //01 00  o-date anti
		$a_01_37 = {61 72 65 20 66 6f 72 } //01 00  are for
		$a_01_38 = {43 6c 69 63 6b 20 68 } //01 00  Click h
		$a_01_39 = {65 72 65 20 74 6f 20 70 72 6f 74 65 63 74 20 79 6f } //01 00  ere to protect yo
		$a_01_40 = {75 72 20 63 6f 6d 70 75 74 } //01 00  ur comput
		$a_01_41 = {65 72 20 66 72 6f 6d 20 73 70 79 77 } //01 00  er from spyw
		$a_01_42 = {53 68 65 72 69 } //01 00  Sheri
		$a_01_43 = {65 72 69 66 66 } //00 00  eriff
	condition:
		any of ($a_*)
 
}