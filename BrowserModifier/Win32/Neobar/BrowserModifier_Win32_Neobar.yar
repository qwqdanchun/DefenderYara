
rule BrowserModifier_Win32_Neobar{
	meta:
		description = "BrowserModifier:Win32/Neobar,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 00 54 00 6f 00 72 00 72 00 65 00 6e 00 74 00 20 00 53 00 65 00 61 00 72 00 63 00 68 00 00 00 } //1
		$a_01_1 = {2f 00 6e 00 72 00 70 00 00 00 } //1
		$a_01_2 = {2f 00 65 00 78 00 62 00 00 00 } //1
		$a_01_3 = {43 00 68 00 72 00 6f 00 6d 00 69 00 75 00 6d 00 2e 00 64 00 6c 00 6c 00 } //1 Chromium.dll
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule BrowserModifier_Win32_Neobar_2{
	meta:
		description = "BrowserModifier:Win32/Neobar,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {54 00 6f 00 72 00 72 00 65 00 6e 00 74 00 20 00 53 00 65 00 61 00 72 00 63 00 68 00 20 00 53 00 65 00 74 00 75 00 70 00 } //1 Torrent Search Setup
		$a_01_1 = {2f 00 6e 00 6f 00 74 00 5f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 5f 00 74 00 6f 00 6f 00 6c 00 62 00 61 00 72 00 } //1 /not_install_toolbar
		$a_01_2 = {5c 00 75 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 22 00 20 00 2f 00 65 00 78 00 62 00 20 00 22 00 } //1 \uninstall.exe" /exb "
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule BrowserModifier_Win32_Neobar_3{
	meta:
		description = "BrowserModifier:Win32/Neobar,SIGNATURE_TYPE_PEHSTR_EXT,3d 00 3d 00 04 00 00 "
		
	strings :
		$a_01_0 = {42 00 72 00 6f 00 77 00 73 00 65 00 72 00 73 00 46 00 69 00 78 00 2e 00 6a 00 73 00 } //20 BrowsersFix.js
		$a_01_1 = {2f 00 6e 00 6f 00 74 00 5f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 5f 00 74 00 6f 00 6f 00 6c 00 62 00 61 00 72 00 } //20 /not_install_toolbar
		$a_01_2 = {61 00 70 00 69 00 2e 00 61 00 70 00 70 00 73 00 61 00 70 00 69 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 61 00 70 00 69 00 } //20 api.appsapi.info/api
		$a_01_3 = {5c 00 54 00 6f 00 72 00 72 00 65 00 6e 00 74 00 20 00 53 00 65 00 61 00 72 00 63 00 68 00 } //1 \Torrent Search
	condition:
		((#a_01_0  & 1)*20+(#a_01_1  & 1)*20+(#a_01_2  & 1)*20+(#a_01_3  & 1)*1) >=61
 
}
rule BrowserModifier_Win32_Neobar_4{
	meta:
		description = "BrowserModifier:Win32/Neobar,SIGNATURE_TYPE_PEHSTR_EXT,29 00 29 00 05 00 00 "
		
	strings :
		$a_01_0 = {49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 72 00 48 00 65 00 6c 00 70 00 65 00 72 00 50 00 61 00 63 00 6b 00 65 00 72 00 00 00 } //20
		$a_01_1 = {41 00 56 00 45 00 78 00 63 00 6c 00 50 00 61 00 63 00 6b 00 65 00 72 00 00 00 } //20
		$a_01_2 = {56 00 4b 00 20 00 4f 00 4b 00 20 00 41 00 64 00 42 00 6c 00 6f 00 63 00 6b 00 00 00 } //1
		$a_01_3 = {59 00 6f 00 75 00 74 00 75 00 62 00 65 00 20 00 41 00 64 00 42 00 6c 00 6f 00 63 00 6b 00 00 00 } //1
		$a_01_4 = {54 00 6f 00 72 00 72 00 65 00 6e 00 74 00 20 00 53 00 65 00 61 00 72 00 63 00 68 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*20+(#a_01_1  & 1)*20+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=41
 
}
rule BrowserModifier_Win32_Neobar_5{
	meta:
		description = "BrowserModifier:Win32/Neobar,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {2f 00 74 00 73 00 5f 00 62 00 69 00 67 00 2e 00 65 00 78 00 65 00 } //1 /ts_big.exe
		$a_03_1 = {72 00 61 00 70 00 69 00 64 00 66 00 69 00 6c 00 65 00 73 00 74 00 6f 00 72 00 61 00 67 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 73 00 2f 00 90 2b 03 00 2f 00 90 02 20 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 90 02 04 2e 00 65 00 78 00 65 00 90 00 } //1
		$a_03_2 = {66 00 69 00 6c 00 65 00 73 00 2e 00 61 00 70 00 70 00 73 00 61 00 70 00 69 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 73 00 2f 00 90 2b 03 00 2f 00 90 02 20 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 90 02 04 2e 00 65 00 78 00 65 00 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}
rule BrowserModifier_Win32_Neobar_6{
	meta:
		description = "BrowserModifier:Win32/Neobar,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 05 00 00 "
		
	strings :
		$a_01_0 = {2f 00 65 00 78 00 74 00 72 00 61 00 63 00 74 00 5f 00 62 00 69 00 6e 00 61 00 72 00 69 00 65 00 73 00 } //20 /extract_binaries
		$a_01_1 = {54 00 6f 00 72 00 72 00 65 00 6e 00 74 00 20 00 53 00 65 00 61 00 72 00 63 00 68 00 } //1 Torrent Search
		$a_01_2 = {56 00 4b 00 20 00 4f 00 4b 00 20 00 41 00 64 00 42 00 6c 00 6f 00 63 00 6b 00 } //1 VK OK AdBlock
		$a_01_3 = {7b 00 36 00 45 00 37 00 32 00 37 00 39 00 38 00 37 00 2d 00 43 00 38 00 45 00 41 00 2d 00 34 00 34 00 44 00 41 00 2d 00 38 00 37 00 34 00 39 00 2d 00 33 00 31 00 30 00 43 00 30 00 46 00 42 00 45 00 33 00 43 00 33 00 45 00 7d 00 } //1 {6E727987-C8EA-44DA-8749-310C0FBE3C3E}
		$a_01_4 = {7b 00 46 00 46 00 32 00 30 00 34 00 35 00 39 00 43 00 2d 00 44 00 41 00 36 00 45 00 2d 00 34 00 31 00 41 00 37 00 2d 00 38 00 30 00 42 00 43 00 2d 00 38 00 46 00 34 00 46 00 45 00 46 00 44 00 39 00 43 00 35 00 37 00 35 00 7d 00 } //1 {FF20459C-DA6E-41A7-80BC-8F4FEFD9C575}
	condition:
		((#a_01_0  & 1)*20+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=22
 
}
rule BrowserModifier_Win32_Neobar_7{
	meta:
		description = "BrowserModifier:Win32/Neobar,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {55 00 70 00 64 00 61 00 74 00 65 00 4c 00 61 00 74 00 65 00 73 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 55 00 52 00 4c 00 } //1 UpdateLatestVersionURL
		$a_01_1 = {6c 00 61 00 73 00 74 00 55 00 70 00 64 00 61 00 74 00 65 00 43 00 68 00 65 00 63 00 6b 00 54 00 69 00 6d 00 65 00 } //1 lastUpdateCheckTime
		$a_01_2 = {2f 00 43 00 6f 00 6e 00 66 00 69 00 67 00 75 00 72 00 61 00 74 00 69 00 6f 00 6e 00 2f 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 2f 00 55 00 70 00 64 00 61 00 74 00 65 00 45 00 72 00 72 00 6f 00 72 00 44 00 65 00 6c 00 61 00 79 00 } //1 /Configuration/Settings/UpdateErrorDelay
		$a_01_3 = {2f 00 53 00 55 00 50 00 50 00 52 00 45 00 53 00 53 00 4d 00 53 00 47 00 42 00 4f 00 58 00 45 00 53 00 20 00 2f 00 4e 00 4f 00 52 00 45 00 53 00 54 00 41 00 52 00 54 00 20 00 2f 00 53 00 20 00 2f 00 55 00 50 00 44 00 41 00 54 00 45 00 20 00 2f 00 56 00 45 00 52 00 59 00 53 00 49 00 4c 00 45 00 4e 00 54 00 } //1 /SUPPRESSMSGBOXES /NORESTART /S /UPDATE /VERYSILENT
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule BrowserModifier_Win32_Neobar_8{
	meta:
		description = "BrowserModifier:Win32/Neobar,SIGNATURE_TYPE_PEHSTR_EXT,2a 00 2a 00 06 00 00 "
		
	strings :
		$a_01_0 = {2f 00 6e 00 6f 00 74 00 5f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 5f 00 74 00 6f 00 6f 00 6c 00 62 00 61 00 72 00 } //20 /not_install_toolbar
		$a_01_1 = {5c 00 75 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 22 00 20 00 2f 00 65 00 78 00 74 00 72 00 61 00 63 00 74 00 5f 00 62 00 69 00 6e 00 61 00 72 00 69 00 65 00 73 00 20 00 22 00 } //20 \uninstall.exe" /extract_binaries "
		$a_01_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 54 00 6f 00 72 00 72 00 65 00 6e 00 74 00 20 00 53 00 65 00 61 00 72 00 63 00 68 00 } //1 SOFTWARE\Torrent Search
		$a_01_3 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 56 00 4b 00 20 00 4f 00 4b 00 20 00 41 00 64 00 42 00 6c 00 6f 00 63 00 6b 00 } //1 SOFTWARE\VK OK AdBlock
		$a_01_4 = {54 00 6f 00 72 00 72 00 65 00 6e 00 74 00 20 00 53 00 65 00 61 00 72 00 63 00 68 00 20 00 53 00 65 00 74 00 75 00 70 00 } //1 Torrent Search Setup
		$a_01_5 = {56 00 4b 00 20 00 4f 00 4b 00 20 00 41 00 64 00 42 00 6c 00 6f 00 63 00 6b 00 20 00 53 00 65 00 74 00 75 00 70 00 } //1 VK OK AdBlock Setup
	condition:
		((#a_01_0  & 1)*20+(#a_01_1  & 1)*20+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=42
 
}
rule BrowserModifier_Win32_Neobar_9{
	meta:
		description = "BrowserModifier:Win32/Neobar,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {70 00 69 00 6e 00 67 00 2e 00 65 00 78 00 65 00 22 00 20 00 22 00 72 00 61 00 70 00 69 00 64 00 66 00 69 00 6c 00 65 00 73 00 74 00 6f 00 72 00 61 00 67 00 65 00 2e 00 63 00 6f 00 6d 00 22 00 20 00 2d 00 6e 00 20 00 31 00 } //1 ping.exe" "rapidfilestorage.com" -n 1
		$a_01_1 = {2f 00 53 00 55 00 50 00 50 00 52 00 45 00 53 00 53 00 4d 00 53 00 47 00 42 00 4f 00 58 00 45 00 53 00 20 00 2f 00 4e 00 4f 00 52 00 45 00 53 00 54 00 41 00 52 00 54 00 20 00 2f 00 53 00 20 00 2f 00 55 00 50 00 44 00 41 00 54 00 45 00 20 00 2f 00 56 00 45 00 52 00 59 00 53 00 49 00 4c 00 45 00 4e 00 54 00 } //1 /SUPPRESSMSGBOXES /NORESTART /S /UPDATE /VERYSILENT
		$a_03_2 = {72 00 61 00 70 00 69 00 64 00 66 00 69 00 6c 00 65 00 73 00 74 00 6f 00 72 00 61 00 67 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 73 00 2f 00 90 2b 03 00 2f 00 90 02 20 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 90 02 04 2e 00 65 00 78 00 65 00 90 00 } //1
		$a_03_3 = {66 00 69 00 6c 00 65 00 73 00 2e 00 61 00 70 00 70 00 73 00 61 00 70 00 69 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 73 00 2f 00 90 2b 03 00 2f 00 90 02 20 2f 00 90 2b 08 00 2e 00 74 00 78 00 74 00 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}
rule BrowserModifier_Win32_Neobar_10{
	meta:
		description = "BrowserModifier:Win32/Neobar,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 "
		
	strings :
		$a_01_0 = {54 00 6f 00 6f 00 6c 00 62 00 61 00 72 00 2e 00 45 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 48 00 65 00 6c 00 70 00 65 00 72 00 4f 00 62 00 6a 00 65 00 63 00 74 00 } //1 Toolbar.ExtensionHelperObject
		$a_01_1 = {61 00 64 00 64 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 73 00 46 00 69 00 78 00 } //1 addBrowsersFix
		$a_01_2 = {55 00 70 00 64 00 61 00 74 00 65 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 69 00 6e 00 20 00 4f 00 6e 00 53 00 74 00 6f 00 70 00 } //1 UpdateService in OnStop
		$a_01_3 = {75 00 70 00 64 00 61 00 74 00 65 00 4a 00 73 00 6f 00 6e 00 55 00 72 00 6c 00 } //1 updateJsonUrl
		$a_01_4 = {2d 00 2d 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 72 00 43 00 6f 00 6e 00 74 00 61 00 69 00 6e 00 65 00 72 00 } //1 --installrContainer
		$a_01_5 = {5f 00 42 00 61 00 63 00 6b 00 67 00 72 00 6f 00 75 00 6e 00 64 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 43 00 6f 00 6e 00 74 00 61 00 69 00 6e 00 65 00 72 00 } //1 _BackgroundBrowserContainer
		$a_01_6 = {65 00 78 00 70 00 61 00 6e 00 64 00 2e 00 65 00 78 00 65 00 20 00 22 00 25 00 73 00 22 00 20 00 2d 00 46 00 3a 00 2a 00 2e 00 2a 00 20 00 22 00 25 00 73 00 22 00 } //1 expand.exe "%s" -F:*.* "%s"
		$a_01_7 = {49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 72 00 43 00 61 00 62 00 2e 00 65 00 78 00 65 00 22 00 20 00 22 00 25 00 73 00 5c 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 2e 00 62 00 61 00 74 00 22 00 } //1 InstallerCab.exe" "%s\install.bat"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=7
 
}
rule BrowserModifier_Win32_Neobar_11{
	meta:
		description = "BrowserModifier:Win32/Neobar,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 0b 00 00 "
		
	strings :
		$a_01_0 = {63 00 68 00 72 00 6f 00 6d 00 65 00 5c 00 4b 00 65 00 72 00 6e 00 65 00 6c 00 2e 00 6a 00 73 00 00 00 } //20
		$a_01_1 = {59 00 6f 00 75 00 74 00 75 00 62 00 65 00 20 00 41 00 64 00 42 00 6c 00 6f 00 63 00 6b 00 00 00 } //1
		$a_01_2 = {39 00 35 00 45 00 38 00 34 00 42 00 44 00 33 00 2d 00 33 00 36 00 30 00 34 00 2d 00 34 00 41 00 41 00 43 00 2d 00 42 00 32 00 43 00 41 00 2d 00 44 00 39 00 41 00 43 00 33 00 45 00 35 00 35 00 42 00 36 00 34 00 42 00 } //1 95E84BD3-3604-4AAC-B2CA-D9AC3E55B64B
		$a_01_3 = {59 00 6f 00 75 00 54 00 75 00 62 00 65 00 20 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 72 00 00 00 } //1
		$a_01_4 = {39 00 36 00 43 00 45 00 41 00 37 00 41 00 46 00 2d 00 33 00 36 00 30 00 43 00 2d 00 34 00 46 00 35 00 45 00 2d 00 39 00 34 00 45 00 36 00 2d 00 35 00 46 00 35 00 34 00 38 00 34 00 30 00 33 00 34 00 30 00 46 00 32 00 } //1 96CEA7AF-360C-4F5E-94E6-5F54840340F2
		$a_01_5 = {4d 00 65 00 64 00 69 00 61 00 20 00 53 00 61 00 76 00 65 00 72 00 00 00 } //1
		$a_01_6 = {31 00 32 00 45 00 38 00 41 00 36 00 43 00 32 00 2d 00 42 00 31 00 32 00 35 00 2d 00 34 00 37 00 39 00 46 00 2d 00 41 00 42 00 33 00 43 00 2d 00 31 00 33 00 42 00 38 00 37 00 35 00 37 00 43 00 37 00 46 00 30 00 34 00 } //1 12E8A6C2-B125-479F-AB3C-13B8757C7F04
		$a_01_7 = {54 00 6f 00 72 00 72 00 65 00 6e 00 74 00 20 00 53 00 65 00 61 00 72 00 63 00 68 00 00 00 } //1
		$a_01_8 = {36 00 45 00 37 00 32 00 37 00 39 00 38 00 37 00 2d 00 43 00 38 00 45 00 41 00 2d 00 34 00 34 00 44 00 41 00 2d 00 38 00 37 00 34 00 39 00 2d 00 33 00 31 00 30 00 43 00 30 00 46 00 42 00 45 00 33 00 43 00 33 00 45 00 } //1 6E727987-C8EA-44DA-8749-310C0FBE3C3E
		$a_01_9 = {56 00 4b 00 20 00 4f 00 4b 00 20 00 41 00 64 00 42 00 6c 00 6f 00 63 00 6b 00 00 00 } //1
		$a_01_10 = {46 00 46 00 32 00 30 00 34 00 35 00 39 00 43 00 2d 00 44 00 41 00 36 00 45 00 2d 00 34 00 31 00 41 00 37 00 2d 00 38 00 30 00 42 00 43 00 2d 00 38 00 46 00 34 00 46 00 45 00 46 00 44 00 39 00 43 00 35 00 37 00 35 00 } //1 FF20459C-DA6E-41A7-80BC-8F4FEFD9C575
	condition:
		((#a_01_0  & 1)*20+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=22
 
}
rule BrowserModifier_Win32_Neobar_12{
	meta:
		description = "BrowserModifier:Win32/Neobar,SIGNATURE_TYPE_PEHSTR_EXT,20 00 20 00 19 00 00 "
		
	strings :
		$a_01_0 = {59 00 6f 00 75 00 74 00 75 00 62 00 65 00 20 00 41 00 64 00 42 00 6c 00 6f 00 63 00 6b 00 00 00 } //16
		$a_01_1 = {7b 00 39 00 35 00 45 00 38 00 34 00 42 00 44 00 33 00 2d 00 33 00 36 00 30 00 34 00 2d 00 34 00 41 00 41 00 43 00 2d 00 42 00 32 00 43 00 41 00 2d 00 44 00 39 00 41 00 43 00 33 00 45 00 35 00 35 00 42 00 36 00 34 00 42 00 7d 00 } //16 {95E84BD3-3604-4AAC-B2CA-D9AC3E55B64B}
		$a_01_2 = {59 00 6f 00 75 00 54 00 75 00 62 00 65 00 20 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 72 00 00 00 } //16
		$a_01_3 = {7b 00 39 00 36 00 43 00 45 00 41 00 37 00 41 00 46 00 2d 00 33 00 36 00 30 00 43 00 2d 00 34 00 46 00 35 00 45 00 2d 00 39 00 34 00 45 00 36 00 2d 00 35 00 46 00 35 00 34 00 38 00 34 00 30 00 33 00 34 00 30 00 46 00 32 00 7d 00 } //16 {96CEA7AF-360C-4F5E-94E6-5F54840340F2}
		$a_01_4 = {4d 00 65 00 64 00 69 00 61 00 20 00 53 00 61 00 76 00 65 00 72 00 } //16 Media Saver
		$a_01_5 = {7b 00 31 00 32 00 45 00 38 00 41 00 36 00 43 00 32 00 2d 00 42 00 31 00 32 00 35 00 2d 00 34 00 37 00 39 00 46 00 2d 00 41 00 42 00 33 00 43 00 2d 00 31 00 33 00 42 00 38 00 37 00 35 00 37 00 43 00 37 00 46 00 30 00 34 00 7d 00 } //16 {12E8A6C2-B125-479F-AB3C-13B8757C7F04}
		$a_01_6 = {54 00 6f 00 72 00 72 00 65 00 6e 00 74 00 20 00 53 00 65 00 61 00 72 00 63 00 68 00 00 00 } //16
		$a_01_7 = {7b 00 36 00 45 00 37 00 32 00 37 00 39 00 38 00 37 00 2d 00 43 00 38 00 45 00 41 00 2d 00 34 00 34 00 44 00 41 00 2d 00 38 00 37 00 34 00 39 00 2d 00 33 00 31 00 30 00 43 00 30 00 46 00 42 00 45 00 33 00 43 00 33 00 45 00 7d 00 } //16 {6E727987-C8EA-44DA-8749-310C0FBE3C3E}
		$a_01_8 = {56 00 4b 00 20 00 4f 00 4b 00 20 00 41 00 64 00 42 00 6c 00 6f 00 63 00 6b 00 00 00 } //16
		$a_01_9 = {7b 00 46 00 46 00 32 00 30 00 34 00 35 00 39 00 43 00 2d 00 44 00 41 00 36 00 45 00 2d 00 34 00 31 00 41 00 37 00 2d 00 38 00 30 00 42 00 43 00 2d 00 38 00 46 00 34 00 46 00 45 00 46 00 44 00 39 00 43 00 35 00 37 00 35 00 7d 00 } //16 {FF20459C-DA6E-41A7-80BC-8F4FEFD9C575}
		$a_01_10 = {41 00 42 00 48 00 54 00 4d 00 4c 00 5f 00 45 00 58 00 54 00 45 00 4e 00 53 00 49 00 4f 00 4e 00 5f 00 41 00 4d 00 49 00 47 00 4f 00 5f 00 46 00 41 00 4b 00 45 00 5f 00 49 00 44 00 } //1 ABHTML_EXTENSION_AMIGO_FAKE_ID
		$a_01_11 = {41 00 42 00 48 00 54 00 4d 00 4c 00 5f 00 45 00 58 00 54 00 45 00 4e 00 53 00 49 00 4f 00 4e 00 5f 00 41 00 4d 00 49 00 47 00 4f 00 5f 00 46 00 41 00 4b 00 45 00 5f 00 4b 00 45 00 59 00 } //1 ABHTML_EXTENSION_AMIGO_FAKE_KEY
		$a_01_12 = {2f 00 6e 00 6f 00 74 00 5f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 5f 00 74 00 6f 00 6f 00 6c 00 62 00 61 00 72 00 } //1 /not_install_toolbar
		$a_01_13 = {2f 00 73 00 65 00 74 00 5f 00 68 00 6f 00 6d 00 65 00 70 00 61 00 67 00 65 00 } //1 /set_homepage
		$a_01_14 = {2f 00 66 00 73 00 75 00 68 00 73 00 68 00 } //1 /fsuhsh
		$a_01_15 = {2f 00 6a 00 66 00 75 00 6b 00 6c 00 68 00 } //1 /jfuklh
		$a_01_16 = {2f 00 67 00 69 00 75 00 64 00 72 00 73 00 67 00 68 00 64 00 72 00 73 00 69 00 67 00 68 00 } //1 /giudrsghdrsigh
		$a_01_17 = {2f 00 67 00 6b 00 67 00 39 00 33 00 6a 00 67 00 68 00 33 00 37 00 66 00 6a 00 67 00 75 00 } //1 /gkg93jgh37fjgu
		$a_01_18 = {2f 00 66 00 52 00 32 00 6a 00 61 00 57 00 5f 00 } //1 /fR2jaW_
		$a_01_19 = {2f 00 6c 00 72 00 36 00 71 00 51 00 34 00 57 00 } //1 /lr6qQ4W
		$a_01_20 = {2f 00 55 00 6d 00 67 00 63 00 54 00 43 00 39 00 } //1 /UmgcTC9
		$a_01_21 = {2f 00 57 00 62 00 45 00 6f 00 67 00 52 00 56 00 } //1 /WbEogRV
		$a_01_22 = {2f 00 37 00 45 00 42 00 34 00 6b 00 4e 00 6b 00 } //1 /7EB4kNk
		$a_01_23 = {3a 00 3a 00 23 00 35 00 31 00 28 00 2a 00 69 00 20 00 72 00 30 00 72 00 31 00 29 00 } //1 ::#51(*i r0r1)
		$a_01_24 = {3a 00 3a 00 23 00 34 00 35 00 28 00 74 00 20 00 2e 00 72 00 37 00 2c 00 20 00 69 00 20 00 30 00 2c 00 20 00 69 00 } //1 ::#45(t .r7, i 0, i
	condition:
		((#a_01_0  & 1)*16+(#a_01_1  & 1)*16+(#a_01_2  & 1)*16+(#a_01_3  & 1)*16+(#a_01_4  & 1)*16+(#a_01_5  & 1)*16+(#a_01_6  & 1)*16+(#a_01_7  & 1)*16+(#a_01_8  & 1)*16+(#a_01_9  & 1)*16+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_01_21  & 1)*1+(#a_01_22  & 1)*1+(#a_01_23  & 1)*1+(#a_01_24  & 1)*1) >=32
 
}