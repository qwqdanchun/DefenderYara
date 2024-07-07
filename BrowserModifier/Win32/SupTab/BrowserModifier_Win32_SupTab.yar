
rule BrowserModifier_Win32_SupTab{
	meta:
		description = "BrowserModifier:Win32/SupTab,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_00_0 = {5c 4f 75 72 73 75 72 66 69 6e 67 2e 65 78 65 20 2d 73 69 6c 65 6e 63 65 20 2d 70 74 69 64 3d } //1 \Oursurfing.exe -silence -ptid=
		$a_01_1 = {26 62 75 6e 64 6c 65 3d 43 6f 6d 70 6f 6e 65 6e 74 26 70 72 6f 64 75 63 74 3d 4f 75 72 73 75 72 66 69 6e 67 26 73 74 61 74 75 73 3d } //1 &bundle=Component&product=Oursurfing&status=
		$a_01_2 = {5c 6c 75 63 6b 79 73 65 61 72 63 68 65 73 53 6f 66 74 77 61 72 65 5c 6c 75 63 6b 79 73 65 61 72 63 68 65 73 68 70 } //1 \luckysearchesSoftware\luckysearcheshp
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}
rule BrowserModifier_Win32_SupTab_2{
	meta:
		description = "BrowserModifier:Win32/SupTab,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_81_0 = {5c 62 69 6e 5c 70 78 64 6c 2e 70 64 62 00 } //2
		$a_81_1 = {7b 39 43 45 45 32 33 39 44 2d 32 39 30 31 2d 34 44 36 30 2d 41 45 39 45 2d 32 35 43 44 41 38 38 44 34 37 45 32 7d } //2 {9CEE239D-2901-4D60-AE9E-25CDA88D47E2}
		$a_81_2 = {25 73 2f 25 73 2f 25 73 3f 61 63 74 69 6f 6e 3d 25 73 00 } //1
		$a_81_3 = {25 73 20 2d 70 74 69 64 3d 25 73 00 } //1 猥ⴠ瑰摩┽s
		$a_81_4 = {65 55 70 67 72 61 64 65 5c 65 75 70 67 72 61 64 65 2e 65 78 65 00 } //1
	condition:
		((#a_81_0  & 1)*2+(#a_81_1  & 1)*2+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=4
 
}
rule BrowserModifier_Win32_SupTab_3{
	meta:
		description = "BrowserModifier:Win32/SupTab,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 "
		
	strings :
		$a_81_0 = {2d 65 6e 61 62 6c 65 62 68 6f 20 2d 62 68 6f 69 64 3d 7b } //1 -enablebho -bhoid={
		$a_81_1 = {5c 4d 69 75 69 54 61 62 } //1 \MiuiTab
		$a_81_2 = {5c 50 72 6f 74 65 63 74 53 65 72 76 69 63 65 2e 65 78 65 } //1 \ProtectService.exe
		$a_81_3 = {73 63 20 64 65 6c 65 74 65 20 49 65 50 6c 75 67 69 6e 53 65 72 76 69 63 65 73 } //1 sc delete IePluginServices
		$a_81_4 = {5c 53 75 70 54 61 62 5c 53 75 70 54 61 62 2e 64 6c 6c } //1 \SupTab\SupTab.dll
		$a_81_5 = {5c 4d 69 6e 69 4c 69 74 65 } //1 \MiniLite
		$a_81_6 = {5c 73 65 61 72 63 68 50 72 6f 76 69 64 65 72 2e 78 6d 6c } //1 \searchProvider.xml
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=3
 
}
rule BrowserModifier_Win32_SupTab_4{
	meta:
		description = "BrowserModifier:Win32/SupTab,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 "
		
	strings :
		$a_81_0 = {53 4f 46 54 57 41 52 45 5c 57 64 73 4d 61 6e 50 72 6f 00 } //2
		$a_81_1 = {7b 32 36 32 45 32 30 42 38 2d 36 45 32 30 2d 34 43 45 46 2d 42 31 46 44 2d 44 30 32 32 41 42 31 30 38 35 46 35 7d } //2 {262E20B8-6E20-4CEF-B1FD-D022AB1085F5}
		$a_81_2 = {4d 61 6e 67 65 72 50 72 6f 74 65 63 74 00 } //1 慍杮牥牐瑯捥t
		$a_81_3 = {57 64 73 4d 61 6e 50 72 6f 00 } //1 摗䵳湡牐o
		$a_81_4 = {6d 69 6e 69 5f 7a 69 70 00 } //1
		$a_81_5 = {75 70 64 61 74 65 30 3d 72 65 66 2c 25 73 26 75 70 64 61 74 65 31 3d 6e 61 74 69 6f 6e 2c 25 73 26 75 70 64 61 74 65 32 3d 6c 61 6e 67 75 61 67 65 2c 25 73 } //2 update0=ref,%s&update1=nation,%s&update2=language,%s
		$a_81_6 = {5c 54 4d 61 69 6e 5c 52 65 6c 65 61 73 65 5c 53 76 72 55 70 64 61 74 65 72 2e 70 64 62 } //2 \TMain\Release\SvrUpdater.pdb
	condition:
		((#a_81_0  & 1)*2+(#a_81_1  & 1)*2+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*2+(#a_81_6  & 1)*2) >=4
 
}
rule BrowserModifier_Win32_SupTab_5{
	meta:
		description = "BrowserModifier:Win32/SupTab,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_81_0 = {5c 54 4d 61 69 6e 5c 52 65 6c 65 61 73 65 5c 54 53 76 72 2e 70 64 62 00 } //2
		$a_01_1 = {54 00 53 00 76 00 72 00 2e 00 63 00 66 00 69 00 67 00 00 00 } //1
		$a_01_2 = {53 00 56 00 52 00 3a 00 20 00 49 00 20 00 77 00 69 00 6c 00 6c 00 20 00 65 00 78 00 69 00 74 00 2e 00 2e 00 2e 00 2e 00 2e 00 0a 00 00 00 } //1
		$a_01_3 = {4d 00 61 00 6e 00 61 00 67 00 65 00 73 00 20 00 6e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 20 00 70 00 6f 00 6c 00 69 00 63 00 79 00 20 00 61 00 6e 00 64 00 20 00 6e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 20 00 70 00 6f 00 6c 00 69 00 63 00 79 00 20 00 6e 00 6f 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 20 00 64 00 65 00 6c 00 69 00 76 00 65 00 72 00 79 00 20 00 66 00 6f 00 72 00 20 00 54 00 53 00 76 00 2e 00 63 00 6f 00 6d 00 2e 00 } //1 Manages network policy and network policy notification delivery for TSv.com.
	condition:
		((#a_81_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}
rule BrowserModifier_Win32_SupTab_6{
	meta:
		description = "BrowserModifier:Win32/SupTab,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 09 00 00 "
		
	strings :
		$a_81_0 = {2f 73 6f 66 2d 69 6e 73 74 61 6c 6c 65 72 2f 25 73 3f 61 63 74 69 6f 6e 31 3d 78 61 2e 67 65 6f 69 70 26 61 63 74 69 6f 6e 32 3d 76 69 73 69 74 } //2 /sof-installer/%s?action1=xa.geoip&action2=visit
		$a_81_1 = {5c 49 6e 73 74 61 6c 6c 65 72 4d 61 69 6e 56 36 5f 59 72 72 65 68 73 5c 52 65 6c 65 61 73 65 5c 4d 61 69 6e 2e 70 64 62 } //2 \InstallerMainV6_Yrrehs\Release\Main.pdb
		$a_81_2 = {4d 61 69 6e 5f 74 30 30 6c 73 5f 59 72 72 65 68 73 } //2 Main_t00ls_Yrrehs
		$a_81_3 = {2f 25 73 3f 61 63 74 69 6f 6e 3d 25 73 2e 64 6c 7a 69 70 } //2 /%s?action=%s.dlzip
		$a_81_4 = {5c 49 5c 63 6f 6e 66 00 } //1 䥜捜湯f
		$a_81_5 = {2e 25 73 2e 66 69 6e 69 73 68 } //1 .%s.finish
		$a_81_6 = {5c 49 5c 74 6d 70 00 00 49 49 2e 7a 69 70 00 } //2
		$a_01_7 = {25 00 64 00 25 00 30 00 32 00 64 00 25 00 30 00 32 00 64 00 25 00 30 00 32 00 64 00 25 00 30 00 32 00 64 00 25 00 30 00 32 00 64 00 00 00 } //1
		$a_01_8 = {49 00 49 00 2e 00 7a 00 69 00 70 00 00 00 00 00 5c 00 49 00 00 00 00 00 } //2
	condition:
		((#a_81_0  & 1)*2+(#a_81_1  & 1)*2+(#a_81_2  & 1)*2+(#a_81_3  & 1)*2+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*2+(#a_01_7  & 1)*1+(#a_01_8  & 1)*2) >=5
 
}
rule BrowserModifier_Win32_SupTab_7{
	meta:
		description = "BrowserModifier:Win32/SupTab,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 09 00 00 "
		
	strings :
		$a_81_0 = {5c 53 65 61 72 63 68 50 72 6f 74 65 63 74 5c 42 69 6e 5c 52 65 6c 65 61 73 65 5c 43 6d 64 53 68 65 6c 6c 2e 70 64 62 } //2 \SearchProtect\Bin\Release\CmdShell.pdb
		$a_81_1 = {31 46 34 43 36 33 30 34 2d 38 36 35 46 2d 34 31 45 41 2d 42 31 38 43 2d 44 42 31 30 42 35 46 37 37 44 46 35 } //2 1F4C6304-865F-41EA-B18C-DB10B5F77DF5
		$a_81_2 = {35 46 32 36 35 30 39 46 2d 32 39 46 45 2d 34 35 39 38 2d 38 38 30 30 2d 46 41 32 32 43 45 39 43 43 31 37 46 } //2 5F26509F-29FE-4598-8800-FA22CE9CC17F
		$a_81_3 = {48 50 4e 6f 74 69 66 79 2e 65 78 65 20 2d 72 75 6e 20 2d 70 74 69 64 3d 25 73 } //2 HPNotify.exe -run -ptid=%s
		$a_81_4 = {25 73 63 6f 6e 66 00 } //1
		$a_81_5 = {5c 53 65 61 72 63 68 50 72 6f 74 65 63 74 5c 62 69 6e 5c 52 65 6c 65 61 73 65 5c 48 50 4e 6f 74 69 66 79 2e 70 64 62 } //2 \SearchProtect\bin\Release\HPNotify.pdb
		$a_81_6 = {26 74 73 3d 25 64 26 66 72 6f 6d 3d 78 74 61 62 26 75 69 64 3d 25 73 } //2 &ts=%d&from=xtab&uid=%s
		$a_81_7 = {2f 73 65 61 72 63 68 70 72 6f 74 65 63 74 2f 25 73 3f 61 63 74 69 6f 6e } //1 /searchprotect/%s?action
		$a_81_8 = {53 55 50 44 75 69 57 69 6e 64 6f 77 00 } //1
	condition:
		((#a_81_0  & 1)*2+(#a_81_1  & 1)*2+(#a_81_2  & 1)*2+(#a_81_3  & 1)*2+(#a_81_4  & 1)*1+(#a_81_5  & 1)*2+(#a_81_6  & 1)*2+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1) >=5
 
}
rule BrowserModifier_Win32_SupTab_8{
	meta:
		description = "BrowserModifier:Win32/SupTab,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 0b 00 00 "
		
	strings :
		$a_01_0 = {25 73 25 73 3f 61 63 74 69 6f 6e 3d 62 72 6f 77 73 65 72 2e 25 73 2e 70 72 65 76 65 6e 74 2e 68 6f 6d 65 70 61 67 65 2e 25 73 } //2 %s%s?action=browser.%s.prevent.homepage.%s
		$a_01_1 = {5c 52 65 6c 65 61 73 65 5c 53 46 4b 45 58 2e 70 64 62 } //2 \Release\SFKEX.pdb
		$a_01_2 = {5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 53 46 4b 45 58 36 34 2e 70 64 62 } //2 \x64\Release\SFKEX64.pdb
		$a_00_3 = {59 00 72 00 72 00 65 00 68 00 73 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_4 = {59 00 72 00 72 00 00 00 65 00 68 00 73 00 00 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_81_5 = {74 30 30 6c 73 5f 59 5b 53 } //1 t00ls_Y[S
		$a_01_6 = {74 00 30 00 30 00 6c 00 5f 00 59 00 72 00 72 00 65 00 68 00 73 00 5f 00 45 00 58 00 5f 00 } //2 t00l_Yrrehs_EX_
		$a_01_7 = {2f 6c 6f 67 69 63 2f 7a 2e 70 68 70 } //1 /logic/z.php
		$a_01_8 = {78 61 2e 78 69 6e 67 63 6c 6f 75 64 2e 63 6f 6d 2f 76 34 2f 73 6f 66 2d 65 76 65 72 79 74 68 69 6e 67 2f } //1 xa.xingcloud.com/v4/sof-everything/
		$a_01_9 = {78 69 6e 67 63 6c 00 00 6f 75 64 2e 63 6f 6d 2f 76 34 2f 00 73 6f 66 2d 65 76 65 72 79 00 00 00 74 68 69 6e 67 2f } //1
		$a_01_10 = {5c 53 46 4b 45 58 2e 64 6c 6c 00 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_81_5  & 1)*1+(#a_01_6  & 1)*2+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=3
 
}
rule BrowserModifier_Win32_SupTab_9{
	meta:
		description = "BrowserModifier:Win32/SupTab,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 "
		
	strings :
		$a_01_0 = {65 5f 53 65 74 44 65 66 61 75 6c 74 53 65 61 72 63 68 00 } //1
		$a_01_1 = {65 5f 53 65 74 48 6f 6d 65 50 61 67 65 00 } //1 彥敓䡴浯健条e
		$a_01_2 = {5c 53 65 61 72 63 68 50 72 6f 74 65 63 74 5c 42 69 6e 5c 52 65 6c 65 61 73 65 5c 42 72 6f 77 65 72 57 61 74 63 68 } //1 \SearchProtect\Bin\Release\BrowerWatch
		$a_01_3 = {49 00 20 00 77 00 69 00 6c 00 6c 00 20 00 65 00 78 00 69 00 74 00 20 00 77 00 61 00 74 00 63 00 68 00 69 00 6e 00 67 00 20 00 74 00 68 00 72 00 65 00 61 00 64 00 2e 00 } //1 I will exit watching thread.
		$a_01_4 = {5c 53 65 61 72 63 68 50 72 6f 74 65 63 74 5c 42 69 6e 5c 52 65 6c 65 61 73 65 5c 49 65 57 61 74 63 68 44 6f 67 2e 70 64 62 } //2 \SearchProtect\Bin\Release\IeWatchDog.pdb
		$a_01_5 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 53 00 65 00 61 00 72 00 63 00 68 00 53 00 63 00 6f 00 70 00 65 00 73 00 00 00 } //1
		$a_01_6 = {5c 62 69 6e 5c 42 72 6f 77 73 65 72 41 63 74 69 6f 6e 5f 4d 44 2e 70 64 62 } //1 \bin\BrowserAction_MD.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*2+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=3
 
}
rule BrowserModifier_Win32_SupTab_10{
	meta:
		description = "BrowserModifier:Win32/SupTab,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 09 00 00 "
		
	strings :
		$a_81_0 = {2f 73 65 61 72 63 68 70 72 6f 74 65 63 74 2f 75 70 3f 70 74 69 64 3d 25 73 26 73 69 64 3d 25 73 26 6c 6e 3d 25 73 5f 25 73 26 76 65 72 3d 25 73 26 75 69 64 3d 25 73 26 64 70 3d 25 73 } //2 /searchprotect/up?ptid=%s&sid=%s&ln=%s_%s&ver=%s&uid=%s&dp=%s
		$a_81_1 = {32 45 46 46 45 39 39 44 2d 37 34 33 44 2d 34 34 44 30 2d 42 42 46 32 2d 46 39 44 44 44 45 41 32 46 39 32 44 } //2 2EFFE99D-743D-44D0-BBF2-F9DDDEA2F92D
		$a_81_2 = {5c 53 65 61 72 63 68 50 72 6f 74 65 63 74 5c 42 69 6e 5c 52 65 6c 65 61 73 65 5c 50 72 6f 74 65 63 74 53 65 72 76 69 63 65 2e 70 64 62 } //2 \SearchProtect\Bin\Release\ProtectService.pdb
		$a_81_3 = {2f 73 65 61 72 63 68 70 72 6f 74 65 63 74 2f 25 73 3f 61 63 74 69 6f 6e } //1 /searchprotect/%s?action
		$a_81_4 = {63 6d 64 73 68 65 6c 6c 2e 65 78 65 00 } //1
		$a_81_5 = {49 48 50 72 6f 74 65 63 74 55 70 44 61 74 65 00 } //1 䡉牐瑯捥啴䑰瑡e
		$a_01_6 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 49 00 48 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 00 00 } //2
		$a_01_7 = {49 00 48 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 50 00 6c 00 75 00 67 00 69 00 6e 00 00 00 } //2
		$a_01_8 = {53 55 68 51 63 6d 39 30 5a 57 4e 30 55 47 78 31 5a 32 6c 75 00 } //2
	condition:
		((#a_81_0  & 1)*2+(#a_81_1  & 1)*2+(#a_81_2  & 1)*2+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*2) >=5
 
}
rule BrowserModifier_Win32_SupTab_11{
	meta:
		description = "BrowserModifier:Win32/SupTab,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 0b 00 00 "
		
	strings :
		$a_81_0 = {2f 73 6f 66 2d 69 6e 73 74 61 6c 6c 65 72 2f 25 73 3f 61 63 74 69 6f 6e 3d 25 73 2e 75 6e 69 6e 73 74 61 6c 6c 2e 25 73 } //2 /sof-installer/%s?action=%s.uninstall.%s
		$a_81_1 = {55 6e 69 6e 73 74 61 6c 6c 4d 61 6e 61 67 65 72 00 } //1
		$a_81_2 = {53 55 50 44 75 69 57 69 6e 64 6f 77 00 } //1
		$a_81_3 = {20 77 69 6c 6c 20 62 65 20 72 65 6d 6f 76 65 64 2c 20 61 72 65 20 79 6f 75 20 73 75 72 65 20 74 6f 20 63 6f 6e 74 69 6e 75 65 3f } //1  will be removed, are you sure to continue?
		$a_81_4 = {5c 53 75 70 54 61 62 5c 00 } //1
		$a_03_5 = {75 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 90 02 02 44 00 6c 00 67 00 32 00 2e 00 78 00 6d 00 6c 00 00 90 00 } //2
		$a_03_6 = {75 6e 69 6e 73 74 61 6c 6c 90 02 02 44 6c 67 32 2e 78 6d 6c 00 90 00 } //2
		$a_81_7 = {3c 4f 70 74 69 6f 6e 20 6e 61 6d 65 3d 22 48 70 50 72 6f 74 65 63 74 22 } //2 <Option name="HpProtect"
		$a_81_8 = {5c 4d 69 6e 69 4c 69 74 65 } //1 \MiniLite
		$a_81_9 = {57 69 6e 64 6f 77 73 20 50 72 6f 74 65 63 74 20 4d 61 6e 61 67 65 72 } //1 Windows Protect Manager
		$a_81_10 = {5c 65 78 74 65 6e 73 69 6f 6e 73 5c 64 65 66 73 65 61 72 63 68 70 40 67 6d 61 69 6c 2e 63 6f 6d 5c 69 6e 73 74 61 6c 6c 2e 72 64 66 } //2 \extensions\defsearchp@gmail.com\install.rdf
	condition:
		((#a_81_0  & 1)*2+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_03_5  & 1)*2+(#a_03_6  & 1)*2+(#a_81_7  & 1)*2+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*2) >=4
 
}
rule BrowserModifier_Win32_SupTab_12{
	meta:
		description = "BrowserModifier:Win32/SupTab,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0d 00 00 "
		
	strings :
		$a_81_0 = {5c 53 75 70 4e 65 77 54 61 62 5c 62 69 6e 5c 53 75 70 54 61 62 2e 70 64 62 } //2 \SupNewTab\bin\SupTab.pdb
		$a_81_1 = {32 30 32 33 45 43 45 43 2d 45 30 36 41 2d 34 33 37 32 2d 41 31 43 37 2d 30 42 34 39 46 39 45 30 46 46 46 30 } //2 2023ECEC-E06A-4372-A1C7-0B49F9E0FFF0
		$a_81_2 = {42 46 41 43 32 35 31 46 2d 46 45 35 36 2d 34 35 46 39 2d 42 31 33 34 2d 32 43 44 37 44 43 42 46 38 45 45 30 } //2 BFAC251F-FE56-45F9-B134-2CD7DCBF8EE0
		$a_81_3 = {75 70 64 61 74 65 30 3d 72 65 66 2c 25 73 26 75 70 64 61 74 65 31 3d 6e 61 74 69 6f 6e 2c 25 73 26 75 70 64 61 74 65 32 3d 6c 61 6e 67 75 61 67 65 2c 25 73 } //2 update0=ref,%s&update1=nation,%s&update2=language,%s
		$a_81_4 = {2f 73 6f 66 2d 69 65 6e 74 2f 25 73 3f 61 63 74 69 6f 6e } //1 /sof-ient/%s?action
		$a_81_5 = {6e 6f 20 6c 6f 61 64 20 75 72 6c 6d 6f 6e 2e 64 6c 6c 00 } //1
		$a_81_6 = {69 6e 73 74 61 6c 6c 5f 69 65 00 } //1
		$a_81_7 = {74 30 30 6c 73 5f 59 5b 53 } //2 t00ls_Y[S
		$a_01_8 = {74 30 30 6c 00 48 4f 4d } //2 ぴ氰䠀䵏
		$a_81_9 = {78 61 2e 78 69 6e 67 63 6c 6f 75 64 2e 63 6f 6d 2f 76 34 2f 73 6f 66 2d 65 76 65 72 79 74 68 69 6e 67 2f } //2 xa.xingcloud.com/v4/sof-everything/
		$a_01_10 = {5c 53 53 46 4b 5c 52 65 6c 65 61 73 65 5c 53 53 46 4b 2e 70 64 62 } //2 \SSFK\Release\SSFK.pdb
		$a_81_11 = {5c 73 75 70 73 6f 66 74 5c 57 50 4d 32 2e 30 5c 52 65 6c 65 61 73 65 5c 52 65 70 6f 72 74 44 6c 6c 2e 70 64 62 } //2 \supsoft\WPM2.0\Release\ReportDll.pdb
		$a_81_12 = {2f 73 6f 66 2d 65 76 65 72 79 74 68 69 6e 67 2f 25 73 3f 61 63 74 69 6f 6e } //1 /sof-everything/%s?action
	condition:
		((#a_81_0  & 1)*2+(#a_81_1  & 1)*2+(#a_81_2  & 1)*2+(#a_81_3  & 1)*2+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*2+(#a_01_8  & 1)*2+(#a_81_9  & 1)*2+(#a_01_10  & 1)*2+(#a_81_11  & 1)*2+(#a_81_12  & 1)*1) >=6
 
}
rule BrowserModifier_Win32_SupTab_13{
	meta:
		description = "BrowserModifier:Win32/SupTab,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_00_0 = {45 00 76 00 65 00 72 00 79 00 74 00 68 00 69 00 6e 00 67 00 2e 00 65 00 78 00 65 00 } //1 Everything.exe
		$a_01_1 = {54 00 68 00 65 00 72 00 61 00 64 00 54 00 61 00 73 00 6b 00 3a 00 3a 00 53 00 74 00 6f 00 70 00 3a 00 25 00 64 00 3a 00 25 00 64 00 3a 00 25 00 64 00 } //1 TheradTask::Stop:%d:%d:%d
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 74 00 68 00 65 00 66 00 61 00 63 00 65 00 62 00 6f 00 6f 00 6b 00 73 00 69 00 6e 00 66 00 6f 00 2e 00 63 00 6f 00 6d 00 2f 00 50 00 75 00 62 00 6c 00 69 00 63 00 2f 00 73 00 6f 00 66 00 74 00 73 00 2f 00 66 00 72 00 65 00 65 00 66 00 69 00 6e 00 64 00 65 00 72 00 2f 00 46 00 72 00 65 00 65 00 46 00 69 00 6e 00 64 00 65 00 72 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 4e 00 65 00 77 00 2e 00 7a 00 69 00 70 00 } //1 http://www.thefacebooksinfo.com/Public/softs/freefinder/FreeFinderResourcesNew.zip
		$a_01_3 = {5c 00 6e 00 65 00 74 00 5f 00 73 00 65 00 61 00 72 00 63 00 68 00 5c 00 } //1 \net_search\
		$a_01_4 = {2f 00 65 00 76 00 65 00 72 00 79 00 74 00 68 00 69 00 6e 00 67 00 2f 00 75 00 70 00 3f 00 70 00 74 00 69 00 64 00 3d 00 25 00 73 00 26 00 73 00 69 00 64 00 3d 00 25 00 73 00 26 00 6c 00 6e 00 3d 00 25 00 73 00 5f 00 25 00 73 00 26 00 76 00 65 00 72 00 3d 00 25 00 73 00 26 00 75 00 69 00 64 00 3d 00 25 00 73 00 } //1 /everything/up?ptid=%s&sid=%s&ln=%s_%s&ver=%s&uid=%s
		$a_01_5 = {53 00 46 00 4b 00 45 00 58 00 36 00 34 00 2e 00 65 00 78 00 65 00 } //1 SFKEX64.exe
		$a_01_6 = {53 00 46 00 4b 00 45 00 58 00 2e 00 65 00 78 00 65 00 } //1 SFKEX.exe
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
rule BrowserModifier_Win32_SupTab_14{
	meta:
		description = "BrowserModifier:Win32/SupTab,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 22 00 00 "
		
	strings :
		$a_81_0 = {2d 73 69 6c 65 6e 63 65 00 } //1
		$a_81_1 = {2d 70 74 69 64 3d 25 73 00 } //1
		$a_81_2 = {2f 73 6f 66 2d 69 6e 73 74 61 6c 6c 65 72 2f 25 73 3f 61 63 74 69 6f 6e 3d 25 73 } //1 /sof-installer/%s?action=%s
		$a_81_3 = {00 5c 63 6f 6e 66 00 } //1
		$a_81_4 = {2d 66 6f 72 63 65 20 20 2d 74 79 70 65 3d 25 64 20 2d 69 6e 6e 65 72 70 74 69 64 3d 25 73 20 2d 6d 76 65 72 3d 25 73 20 20 25 73 } //2 -force  -type=%d -innerptid=%s -mver=%s  %s
		$a_81_5 = {2d 66 6f 72 63 65 20 20 2d 74 79 70 65 3d 25 73 20 2d 69 6e 6e 65 72 70 74 69 64 3d 25 73 20 2d 6d 76 65 72 3d 25 73 20 20 25 73 } //2 -force  -type=%s -innerptid=%s -mver=%s  %s
		$a_00_6 = {46 42 46 44 45 38 36 33 2d 33 43 31 37 2d 34 42 38 32 2d 41 35 44 31 2d 39 42 38 45 44 35 42 45 36 42 34 30 2e 74 6d 70 } //1 FBFDE863-3C17-4B82-A5D1-9B8ED5BE6B40.tmp
		$a_01_7 = {2d 00 66 00 6f 00 72 00 63 00 65 00 20 00 2d 00 74 00 79 00 70 00 65 00 3d 00 00 00 } //1
		$a_81_8 = {3f 61 63 74 69 6f 6e 3d 25 73 2e 64 6c 7a 69 70 31 2e 25 73 2e 66 69 6e 69 73 68 2c 25 64 } //2 ?action=%s.dlzip1.%s.finish,%d
		$a_81_9 = {31 36 30 44 44 35 30 33 2d 45 31 33 39 2d 34 45 37 38 2d 41 42 32 39 2d 37 39 41 38 33 39 45 34 30 34 42 45 } //2 160DD503-E139-4E78-AB29-79A839E404BE
		$a_81_10 = {2d 69 6e 6e 65 72 70 74 69 64 3d 25 73 20 20 2d 6d 76 65 72 3d 25 73 } //2 -innerptid=%s  -mver=%s
		$a_81_11 = {5a 65 72 6f 2d 74 6d 70 00 } //1
		$a_01_12 = {8a 0c 37 8a d1 80 e2 01 c0 e2 02 8a c1 24 02 02 d0 c0 e2 02 8a c1 24 04 02 d0 c0 e2 02 8a c1 c0 f8 06 24 01 02 d0 8a c1 c0 f8 04 24 02 02 d0 8a c1 c0 f8 02 24 04 02 d0 8a c1 24 80 02 d0 80 e1 08 02 d1 88 14 37 } //3
		$a_01_13 = {2f 00 25 00 73 00 2f 00 31 00 00 00 2f 00 25 00 73 00 2f 00 32 00 00 00 } //2
		$a_03_14 = {8b d7 83 e2 03 c1 e2 06 83 e0 3f 0b c2 8b 55 90 01 01 8a 92 90 01 04 8b d9 c1 fb 04 80 e3 03 c0 e2 02 0a da 8b 55 90 01 01 88 1c 16 8b df c1 fb 02 80 e3 0f c0 e1 04 0a d9 90 00 } //2
		$a_01_15 = {2f 25 73 2f 31 00 00 00 2f 25 73 2f 32 00 } //2
		$a_01_16 = {31 00 32 00 33 00 62 00 2e 00 7a 00 69 00 70 00 00 00 } //1
		$a_01_17 = {34 00 35 00 36 00 62 00 2e 00 7a 00 69 00 70 00 00 00 } //1
		$a_80_18 = {38 34 39 45 39 33 44 36 2d 34 44 33 33 2d 34 41 41 44 2d 41 34 46 44 2d 34 32 41 31 34 46 31 33 46 41 30 30 } //849E93D6-4D33-4AAD-A4FD-42A14F13FA00  2
		$a_81_19 = {55 70 67 72 61 64 65 20 57 69 7a 61 72 20 64 00 } //2
		$a_81_20 = {51 44 6f 36 48 52 46 44 46 30 4d 68 51 32 64 54 00 } //1
		$a_01_21 = {8a 55 08 53 8a da 80 e3 01 c0 e3 02 8a c2 24 02 02 d8 c0 e3 02 8a c2 24 04 02 d8 8a c2 c0 f8 06 24 01 c0 e3 02 02 d8 8a c2 } //2
		$a_03_22 = {0f b6 04 1e 8b 4d 90 01 01 50 e8 90 01 04 88 04 1e 46 3b f7 7c eb 90 00 } //2
		$a_03_23 = {8b f0 83 7e 14 10 72 02 8b 36 85 f6 74 90 01 01 68 04 01 00 00 8d 44 24 48 50 6a 00 ff 15 90 00 } //1
		$a_01_24 = {53 74 61 72 74 41 73 46 72 61 6d 65 50 72 6f 63 65 73 73 00 } //1 瑓牡䅴䙳慲敭牐捯獥s
		$a_01_25 = {2e 2e 5c 44 61 74 61 42 61 73 65 00 44 6f 57 6f 72 6b 00 } //2
		$a_03_26 = {04 06 32 d2 32 db 80 c7 04 83 c7 04 ff 4d 90 01 01 88 45 90 01 01 0f 85 90 01 02 ff ff 90 00 } //2
		$a_81_27 = {75 6e 69 6e 73 74 61 6c 6c 44 6c 67 32 2e 78 6d 6c 00 } //2 湵湩瑳污䑬杬⸲浸l
		$a_01_28 = {4c 57 5a 76 63 6d 4e 6c 49 43 41 74 64 48 6c 77 5a 54 30 78 49 43 31 70 62 6d 35 6c 63 6e 42 30 61 57 51 39 } //2 LWZvcmNlICAtdHlwZT0xIC1pbm5lcnB0aWQ9
		$a_01_29 = {2e 2e 5c 74 65 73 74 00 44 6f 57 6f 72 6b 00 } //2
		$a_01_30 = {2e 2e 5c 6d 61 69 6e 75 70 00 00 00 44 6f 57 6f 72 6b 00 } //2
		$a_00_31 = {8b 41 10 0f b7 50 06 6b d2 28 03 50 54 52 6a 00 ff 71 08 e8 } //1
		$a_01_32 = {49 20 73 20 74 20 68 65 20 4c 61 74 65 73 74 20 56 65 72 73 69 6f 6e 21 00 } //2
		$a_01_33 = {2e 2e 5c 44 61 74 61 42 61 73 65 00 44 6f 00 00 57 6f 00 00 72 6b 00 } //2
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*2+(#a_81_5  & 1)*2+(#a_00_6  & 1)*1+(#a_01_7  & 1)*1+(#a_81_8  & 1)*2+(#a_81_9  & 1)*2+(#a_81_10  & 1)*2+(#a_81_11  & 1)*1+(#a_01_12  & 1)*3+(#a_01_13  & 1)*2+(#a_03_14  & 1)*2+(#a_01_15  & 1)*2+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_80_18  & 1)*2+(#a_81_19  & 1)*2+(#a_81_20  & 1)*1+(#a_01_21  & 1)*2+(#a_03_22  & 1)*2+(#a_03_23  & 1)*1+(#a_01_24  & 1)*1+(#a_01_25  & 1)*2+(#a_03_26  & 1)*2+(#a_81_27  & 1)*2+(#a_01_28  & 1)*2+(#a_01_29  & 1)*2+(#a_01_30  & 1)*2+(#a_00_31  & 1)*1+(#a_01_32  & 1)*2+(#a_01_33  & 1)*2) >=4
 
}