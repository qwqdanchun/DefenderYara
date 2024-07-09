
rule Rogue_Win32_PrivacyCenter{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {28 70 61 72 73 65 49 6e 74 } //1 (parseInt
		$a_03_1 = {ba 86 01 00 00 e8 ?? ?? ?? ?? 8b c3 ba 78 01 00 00 } //1
		$a_03_2 = {ba 76 02 00 00 8b c3 e8 ?? ?? ?? ?? ba 5f 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=2
 
}
rule Rogue_Win32_PrivacyCenter_2{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {ba 07 00 00 00 e8 ?? ?? ?? ?? c3 e9 ?? ?? ?? ?? eb eb 5b e8 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 0d 00 00 00 75 6e 69 6e 73 74 61 6c 6c 2e 65 78 65 00 00 00 53 61 66 65 74 79 20 43 65 6e 74 65 72 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Rogue_Win32_PrivacyCenter_3{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {49 6e 73 74 61 6c 6c 61 74 69 6f 6e 00 ?? ?? ?? 00 63 68 65 63 6b 2e 65 78 65 } //2
		$a_01_1 = {2e 65 78 65 00 64 6f 77 6e 6c 6f 61 64 00 68 74 74 70 3a } //1
		$a_01_2 = {6d 35 73 6f 66 74 2f 69 6e 73 74 61 6c 6c } //1 m5soft/install
		$a_01_3 = {72 32 73 6f 66 74 2f 69 6e 73 74 61 6c 6c 2d } //1 r2soft/install-
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Rogue_Win32_PrivacyCenter_4{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_01_0 = {41 70 70 6c 79 6e 67 20 74 68 65 20 6c 61 73 74 65 73 74 } //1 Applyng the lastest
		$a_01_1 = {66 72 6f 6d 43 68 61 72 43 6f 64 65 28 70 61 72 73 65 49 6e 74 } //1 fromCharCode(parseInt
		$a_01_2 = {b9 98 00 00 00 ba 40 00 00 00 } //1
		$a_01_3 = {b9 26 01 00 00 ba dd 01 00 00 } //1
		$a_01_4 = {50 72 69 76 61 63 79 20 43 65 6e 74 65 72 } //1 Privacy Center
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=3
 
}
rule Rogue_Win32_PrivacyCenter_5{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {19 1d 1f 20 29 33 2e 2f 34 34 36 3b 35 01 01 a3 94 8f 8f 8f 8f 8f 8f 8f 93 93 8a 8e 8e 97 96 a2 } //1
		$a_01_1 = {d6 dc d9 da d9 d7 dc d3 d3 df d0 d4 e9 d2 dc f8 dc e7 ff dd e7 ff db da df e2 d9 d8 79 b5 9b 93 } //1
		$a_03_2 = {ba fd 00 00 00 e8 ?? ?? ?? ?? 8b c3 ba 14 00 00 00 } //3
		$a_01_3 = {74 68 65 20 6c 61 73 74 65 73 74 } //3 the lastest
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*3+(#a_01_3  & 1)*3) >=4
 
}
rule Rogue_Win32_PrivacyCenter_6{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {56 69 72 75 73 20 61 6c 65 72 74 73 } //1 Virus alerts
		$a_01_1 = {43 6f 6f 6b 69 65 67 75 61 72 64 65 72 31 } //1 Cookieguarder1
		$a_01_2 = {4d 65 6d 6f 72 79 77 69 7a 61 72 64 31 } //1 Memorywizard1
		$a_01_3 = {76 69 73 69 74 69 6e 67 20 70 6f 72 6e 6f 20 73 69 74 65 73 29 20 61 6e 64 20 73 65 63 75 72 69 74 79 } //1 visiting porno sites) and security
		$a_01_4 = {5c 50 72 69 76 61 63 79 20 63 65 6e 74 65 72 5c } //1 \Privacy center\
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Rogue_Win32_PrivacyCenter_7{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {74 65 6d 70 2e 65 78 65 20 2d 69 6e 73 74 61 6c 6c } //1 temp.exe -install
		$a_00_1 = {39 31 2e 32 30 37 2e 31 31 36 2e 34 34 } //1 91.207.116.44
		$a_00_2 = {54 61 68 6f 6d 61 } //1 Tahoma
		$a_03_3 = {ba 8d 02 00 00 e8 ?? ?? ff ff a1 ?? ?? 40 00 ba c7 01 00 00 e8 ?? ?? ff ff a1 ?? ?? 40 00 e8 ?? ?? ff ff a1 ?? ?? 40 00 b2 01 } //1
		$a_01_4 = {08 97 c1 00 00 00 50 8b 87 35 01 00 00 29 c8 50 57 8d bf 29 01 00 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Rogue_Win32_PrivacyCenter_8{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 53 61 66 65 74 79 43 65 6e 74 65 72 } //1 SOFTWARE\SafetyCenter
		$a_01_1 = {66 75 63 6b 62 6f 6f 6b 2e 63 6f 6d 00 } //1
		$a_01_2 = {70 75 67 61 6c 6b 61 2e 64 6c 6c } //1 pugalka.dll
		$a_01_3 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 2f 00 52 00 75 00 6e 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 22 00 20 00 74 00 61 00 72 00 67 00 65 00 74 00 3d 00 22 00 5f 00 73 00 65 00 6c 00 66 00 } //2 127.0.0.1/RunAntivirus" target="_self
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2) >=3
 
}
rule Rogue_Win32_PrivacyCenter_9{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {72 65 73 75 6c 74 20 66 72 6f 6d 20 76 69 73 69 74 69 6e 67 20 70 6f 72 6e 20 73 69 74 65 73 } //1 result from visiting porn sites
		$a_01_1 = {6d 61 69 6c 74 6f 3a 20 73 75 70 70 6f 72 74 40 70 72 69 76 61 63 79 2d 63 65 6e 74 65 72 2e 63 6f 6d } //1 mailto: support@privacy-center.com
		$a_01_2 = {75 6e 73 75 70 70 6f 72 74 65 64 20 73 6f 66 74 77 61 72 65 20 6c 69 63 65 6e 73 65 73 2e 20 56 69 65 77 20 74 68 65 20 73 79 73 74 65 6d 20 72 65 70 6f 72 74 73 20 6e 6f 77 2e } //1 unsupported software licenses. View the system reports now.
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule Rogue_Win32_PrivacyCenter_10{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0b 00 00 "
		
	strings :
		$a_01_0 = {43 6f 63 6b 69 65 } //2 Cockie
		$a_01_1 = {68 6c 79 20 75 6e 72 65 63 6f 6d 6d 65 6e 64 65 } //2 hly unrecommende
		$a_01_2 = {53 6f 63 6b 73 20 62 6f 74 } //1 Socks bot
		$a_03_3 = {8b 80 20 02 00 00 8b 10 ff 52 44 8d 55 dc 90 09 06 00 8b 83 ?? ?? 00 00 } //3
		$a_01_4 = {74 26 68 01 00 02 00 6a 00 a1 } //1
		$a_01_5 = {70 75 67 61 6c 6b 61 2e 64 6c 6c 00 44 6c 6c 43 } //3
		$a_01_6 = {50 72 69 76 61 63 79 43 65 6e 74 65 72 } //1 PrivacyCenter
		$a_01_7 = {2e 00 31 00 2f 00 52 00 75 00 6e 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 } //1 .1/RunAntivirus
		$a_01_8 = {83 f8 02 7e 02 b3 01 83 c7 04 4e 75 e9 84 db 74 0f 8b 45 f8 ba } //2
		$a_00_9 = {4d 61 6b 65 20 66 75 6c 6c 20 73 63 61 6e 00 } //1
		$a_00_10 = {53 4f 46 54 57 41 52 45 5c 53 61 66 65 74 79 43 65 6e 74 65 72 } //1 SOFTWARE\SafetyCenter
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_03_3  & 1)*3+(#a_01_4  & 1)*1+(#a_01_5  & 1)*3+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*2+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1) >=5
 
}
rule Rogue_Win32_PrivacyCenter_11{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0b 00 00 "
		
	strings :
		$a_01_0 = {5c 53 61 66 65 74 79 43 65 6e 74 65 72 } //1 \SafetyCenter
		$a_00_1 = {54 68 69 73 20 54 72 6f 6a 61 6e 20 73 65 6e 64 73 20 65 6d 61 69 6c 20 73 70 61 6d 20 74 6f 20 79 6f 75 72 20 61 64 64 72 65 73 73 20 62 6f 6f 6b 20 63 6f 6e 74 61 63 74 73 2e } //1 This Trojan sends email spam to your address book contacts.
		$a_00_2 = {4d 61 6b 65 20 61 20 66 75 6c 6c 20 73 63 61 6e 20 6f 66 20 79 6f 75 72 20 63 6f 6d 70 75 74 65 72 } //1 Make a full scan of your computer
		$a_00_3 = {6d 6f 76 69 6e 67 20 74 6f 6f 6c 20 2d 20 67 72 61 6e 74 73 20 70 72 6f 76 61 63 79 20 74 6f 20 79 6f 75 72 } //1 moving tool - grants provacy to your
		$a_01_4 = {53 70 79 46 61 6c 63 6f 6e 2c 20 61 6e 64 20 74 68 6f 75 73 61 6e 64 73 } //1 SpyFalcon, and thousands
		$a_03_5 = {5c 73 6f 75 6e 64 2e 77 61 76 [0-10] 5c 6e 65 77 2e 65 78 65 [0-10] 53 74 61 72 74 75 70 } //1
		$a_01_6 = {4d 47 20 53 52 43 3d 22 68 74 74 70 3a 2f 2f 39 34 2e 37 35 2e } //1 MG SRC="http://94.75.
		$a_01_7 = {5c 75 49 45 5f 42 48 4f 2e 70 61 73 00 } //2
		$a_00_8 = {70 75 67 61 6c 6b 61 2e 64 6c 6c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 } //2
		$a_03_9 = {83 3e 4f 0f 8e ?? ?? ?? ?? 83 3e 65 0f 8d } //1
		$a_03_10 = {3d e2 00 00 00 7f 54 0f 84 ?? ?? ?? ?? 83 f8 6c 7f 2b 0f 84 ?? ?? ?? ?? 83 e8 66 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*2+(#a_00_8  & 1)*2+(#a_03_9  & 1)*1+(#a_03_10  & 1)*1) >=6
 
}
rule Rogue_Win32_PrivacyCenter_12{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_1 = {74 00 69 00 6e 00 67 00 73 00 2e 00 69 00 6e 00 69 00 } //1 tings.ini
		$a_01_2 = {49 00 66 00 20 00 65 00 78 00 69 00 73 00 74 00 20 00 22 00 25 00 73 00 22 00 20 00 47 00 6f 00 74 00 6f 00 20 00 31 00 } //1 If exist "%s" Goto 1
		$a_01_3 = {43 00 65 00 6e 00 74 00 65 00 72 00 20 00 64 00 69 00 64 00 20 00 6e 00 6f 00 74 00 20 00 66 00 69 00 6e 00 64 00 20 00 61 00 6e 00 79 00 20 00 61 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 20 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 20 00 6f 00 6e 00 20 00 74 00 68 00 69 00 73 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 21 00 } //1 Center did not find any antivirus software on this computer!
		$a_01_4 = {54 00 72 00 61 00 63 00 65 00 73 00 20 00 6f 00 66 00 20 00 64 00 69 00 73 00 63 00 72 00 65 00 64 00 69 00 74 00 61 00 62 00 6c 00 65 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 28 00 66 00 6f 00 72 00 20 00 65 00 78 00 61 00 6d 00 70 00 6c 00 65 00 2c 00 20 00 74 00 68 00 65 00 20 00 68 00 69 00 73 00 74 00 6f 00 72 00 79 00 20 00 6f 00 66 00 20 00 76 00 69 00 73 00 69 00 74 00 69 00 6e 00 67 00 20 00 61 00 64 00 75 00 6c 00 74 00 20 00 73 00 69 00 74 00 65 00 73 00 29 00 20 00 61 00 6e 00 64 00 20 00 73 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 20 00 65 00 78 00 70 00 6f 00 73 00 75 00 72 00 65 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 66 00 6f 00 75 00 6e 00 64 00 } //1 Traces of discreditable files (for example, the history of visiting adult sites) and security exposure have been found
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Rogue_Win32_PrivacyCenter_13{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 15 00 00 "
		
	strings :
		$a_00_0 = {53 61 66 65 74 79 43 65 6e 74 65 72 20 73 6f 66 74 77 61 72 65 } //2 SafetyCenter software
		$a_00_1 = {2f 73 65 63 75 72 65 2f 69 6e 64 65 78 5f 6e 65 77 2e 70 68 70 3f 69 64 3d 00 } //2
		$a_00_2 = {4f 75 72 20 4d 75 6c 74 69 2d 44 69 6d 65 6e 73 69 6f 6e 61 6c 20 50 43 20 53 65 63 75 72 69 74 79 20 53 63 61 6e 6e 69 6e 67 20 } //2 Our Multi-Dimensional PC Security Scanning 
		$a_01_3 = {4d 61 69 6e 20 3e 20 53 75 72 66 69 6e 67 20 70 72 6f 74 65 63 74 69 6f 6e } //1 Main > Surfing protection
		$a_00_4 = {5c 53 4f 46 54 57 41 52 45 5c 53 61 66 65 74 79 43 65 6e 74 65 72 00 } //1
		$a_01_5 = {44 6f 6e 27 74 20 70 61 6e 69 63 21 0a 0d 53 61 66 65 74 79 43 65 6e 74 65 72 } //1 潄❮⁴慰楮Ⅳഊ慓敦祴敃瑮牥
		$a_00_6 = {4d 61 6b 65 20 66 75 6c 6c 20 73 63 61 6e 00 } //1
		$a_00_7 = {4d 61 6b 65 20 61 20 66 75 6c 6c 20 73 63 61 6e 20 6f 66 20 79 6f 75 72 20 63 6f 6d 70 75 74 65 72 } //1 Make a full scan of your computer
		$a_00_8 = {4d 61 69 6e 20 3e 20 43 6f 6f 6b 69 65 73 20 72 65 6d 6f 76 65 72 } //1 Main > Cookies remover
		$a_01_9 = {70 75 67 61 6c 6b 61 2e 64 6c 6c 00 44 6c 6c 43 } //3
		$a_01_10 = {4c 69 63 65 00 00 00 00 ff ff ff ff 04 00 00 00 6e 73 65 64 00 } //2
		$a_00_11 = {75 49 45 5f 42 48 4f 2e 70 61 73 00 } //1 䥵彅䡂⹏慰s
		$a_00_12 = {6f 70 65 72 61 74 69 6f 6e 20 63 61 6e 20 6e 6f 74 20 62 65 20 65 78 65 63 75 74 65 64 20 69 6e 20 74 72 69 61 6c 20 76 65 72 73 69 6f 6e 21 } //1 operation can not be executed in trial version!
		$a_00_13 = {4d 61 69 6e 20 3e 20 52 65 67 69 73 74 72 79 20 64 6f 63 74 6f 72 } //1 Main > Registry doctor
		$a_02_14 = {66 3d 22 68 74 74 70 3a 2f 2f 31 (32 37 2e 30 2e 30|39 32 2e 31 36 38 2e 31) 2e 31 2f 53 63 61 6e 6e 65 72 22 20 74 } //2
		$a_00_15 = {63 6f 6d 70 6c 65 74 65 5f 73 63 61 6e 00 } //1 潣灭敬整獟慣n
		$a_00_16 = {63 6f 6f 6b 69 65 5f 66 69 6c 74 65 72 00 } //1 潣歯敩晟汩整r
		$a_00_17 = {73 75 72 66 69 6e 67 5f 66 69 6c 74 65 72 00 } //1
		$a_01_18 = {61 64 75 6c 74 66 72 69 65 6e 64 66 69 6e 64 65 72 2e 63 6f 6d 00 00 00 ff ff ff ff 09 00 00 00 62 61 64 6f 6f 2e 63 6f 6d 00 } //1
		$a_00_19 = {4e 6f 77 20 79 6f 75 20 68 61 76 65 20 61 63 63 65 73 73 20 74 6f 20 74 68 65 20 6c 61 74 65 73 74 20 75 70 64 61 74 65 73 20 66 72 6f 6d 20 6f 75 72 20 64 61 74 61 62 61 73 65 2e } //1 Now you have access to the latest updates from our database.
		$a_00_20 = {54 68 69 73 20 54 72 6f 6a 61 6e 20 73 65 6e 64 73 20 65 6d 61 69 6c 20 73 70 61 6d 20 74 6f 20 79 6f 75 72 20 61 64 64 72 65 73 73 20 62 6f 6f 6b 20 63 6f 6e 74 61 63 74 73 2e } //1 This Trojan sends email spam to your address book contacts.
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1+(#a_01_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_01_9  & 1)*3+(#a_01_10  & 1)*2+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_02_14  & 1)*2+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_01_18  & 1)*1+(#a_00_19  & 1)*1+(#a_00_20  & 1)*1) >=5
 
}
rule Rogue_Win32_PrivacyCenter_14{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR_EXT,66 00 66 00 26 00 00 "
		
	strings :
		$a_02_0 = {5c 50 43 00 49 6e 73 74 61 6c 6c 00 ?? ?? ?? 00 70 63 2e 65 78 65 00 61 67 65 6e 74 2e 65 78 65 00 } //100
		$a_03_1 = {5c 50 43 00 49 6e 73 74 61 6c 6c 00 ?? ?? ?? 00 ?? ?? ?? 5c 73 65 74 74 69 6e 67 73 2e 69 6e 69 00 70 63 2e 65 78 65 00 61 67 65 6e 74 2e 65 78 65 00 } //100
		$a_03_2 = {63 63 6d 61 69 6e 2e 65 78 65 00 63 63 61 67 65 6e 74 2e 65 78 65 00 ?? ?? ?? 5c 73 65 74 74 69 6e 67 73 2e 69 6e 69 } //100
		$a_03_3 = {5c 43 43 00 49 6e 73 74 61 6c 6c 00 ?? ?? ?? 00 63 63 2e 65 78 65 00 [0-02] 61 67 65 6e 74 2e 65 78 65 00 } //100
		$a_03_4 = {63 63 61 67 65 6e 74 2e 65 78 65 00 63 63 6d 61 69 6e 2e 65 78 65 00 ?? ?? ?? 5c 73 65 74 74 69 6e 67 73 2e 69 6e 69 } //100
		$a_02_5 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 50 72 69 76 61 63 79 [0-01] 43 65 6e 74 65 72 } //1
		$a_02_6 = {5c 50 72 69 76 61 63 79 [0-01] 43 65 6e 74 65 72 2e 6c 6e 6b } //1
		$a_01_7 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 50 2d 43 65 6e 74 65 72 } //1 \Uninstall\P-Center
		$a_01_8 = {5c 50 2d 43 65 6e 74 65 72 2e 6c 6e 6b } //1 \P-Center.lnk
		$a_01_9 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 50 43 65 6e 74 65 72 } //1 \Uninstall\PCenter
		$a_01_10 = {5c 50 43 65 6e 74 65 72 2e 6c 6e 6b } //1 \PCenter.lnk
		$a_03_11 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 50 72 69 76 61 63 79 [0-01] 43 6f 6d 70 6f 6e 65 6e 74 73 } //1
		$a_03_12 = {5c 50 72 69 76 61 63 79 [0-01] 43 6f 6d 70 6f 6e 65 6e 74 73 2e 6c 6e 6b } //1
		$a_01_13 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 50 43 6f 6d 70 6f 6e 65 6e 74 73 } //1 \Uninstall\PComponents
		$a_01_14 = {5c 50 43 6f 6d 70 6f 6e 65 6e 74 73 2e 6c 6e 6b } //1 \PComponents.lnk
		$a_03_15 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 50 72 69 76 61 63 79 [0-01] 54 6f 6f 6c 73 } //1
		$a_03_16 = {5c 50 72 69 76 61 63 79 [0-01] 54 6f 6f 6c 73 2e 6c 6e 6b } //1
		$a_01_17 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 50 54 6f 6f 6c 73 } //1 \Uninstall\PTools
		$a_01_18 = {5c 50 54 6f 6f 6c 73 2e 6c 6e 6b } //1 \PTools.lnk
		$a_03_19 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 43 [0-01] 43 65 6e 74 65 72 } //1
		$a_01_20 = {5c 43 43 65 6e 74 65 72 2e 6c 6e 6b } //1 \CCenter.lnk
		$a_02_21 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 43 6f 6e 74 72 6f 6c [0-01] 63 65 6e 74 65 72 } //1
		$a_02_22 = {5c 43 6f 6e 74 72 6f 6c [0-01] 63 65 6e 74 65 72 2e 6c 6e 6b } //1
		$a_01_23 = {5c 43 2d 43 65 6e 74 65 72 2e 6c 6e 6b } //1 \C-Center.lnk
		$a_03_24 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 43 74 72 6c [0-01] 43 65 6e 74 65 72 } //1
		$a_03_25 = {5c 43 74 72 6c [0-01] 43 65 6e 74 65 72 2e 6c 6e 6b } //1
		$a_03_26 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 43 6f 6e 74 72 6f 6c [0-01] 4d 61 6e 61 67 65 72 } //1
		$a_03_27 = {5c 43 6f 6e 74 72 6f 6c [0-01] 4d 61 6e 61 67 65 72 2e 6c 6e 6b } //1
		$a_01_28 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 50 43 54 6f 6f 6c 73 } //1 \Uninstall\PCTools
		$a_01_29 = {5c 50 43 54 6f 6f 6c 73 2e 6c 6e 6b } //1 \PCTools.lnk
		$a_02_30 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 43 6f 6e 74 72 6f 6c [0-01] 43 6f 6d 70 6f 6e 65 6e 74 73 } //1
		$a_02_31 = {5c 43 6f 6e 74 72 6f 6c [0-01] 43 6f 6d 70 6f 6e 65 6e 74 73 2e 6c 6e 6b } //1
		$a_01_32 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 43 74 72 6c 43 6f 6d 70 6f 6e 65 6e 74 73 } //1 \Uninstall\CtrlComponents
		$a_01_33 = {5c 43 74 72 6c 43 6f 6d 70 6f 6e 65 6e 74 73 2e 6c 6e 6b } //1 \CtrlComponents.lnk
		$a_01_34 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 43 6f 6e 74 72 6f 6c 43 6e 74 } //1 \Uninstall\ControlCnt
		$a_01_35 = {5c 43 6f 6e 74 72 6f 6c 43 6e 74 2e 6c 6e 6b } //1 \ControlCnt.lnk
		$a_01_36 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 41 43 6f 6d 6d 61 6e 64 65 72 } //1 \Uninstall\ACommander
		$a_01_37 = {5c 41 43 6f 6d 6d 61 6e 64 65 72 2e 6c 6e 6b } //1 \ACommander.lnk
	condition:
		((#a_02_0  & 1)*100+(#a_03_1  & 1)*100+(#a_03_2  & 1)*100+(#a_03_3  & 1)*100+(#a_03_4  & 1)*100+(#a_02_5  & 1)*1+(#a_02_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_03_11  & 1)*1+(#a_03_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_03_15  & 1)*1+(#a_03_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_03_19  & 1)*1+(#a_01_20  & 1)*1+(#a_02_21  & 1)*1+(#a_02_22  & 1)*1+(#a_01_23  & 1)*1+(#a_03_24  & 1)*1+(#a_03_25  & 1)*1+(#a_03_26  & 1)*1+(#a_03_27  & 1)*1+(#a_01_28  & 1)*1+(#a_01_29  & 1)*1+(#a_02_30  & 1)*1+(#a_02_31  & 1)*1+(#a_01_32  & 1)*1+(#a_01_33  & 1)*1+(#a_01_34  & 1)*1+(#a_01_35  & 1)*1+(#a_01_36  & 1)*1+(#a_01_37  & 1)*1) >=102
 
}
rule Rogue_Win32_PrivacyCenter_15{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 1c 00 00 "
		
	strings :
		$a_03_0 = {6a ff 6a 1a 68 ?? ?? ?? ?? 6a 00 e8 ?? ?? ?? ?? 8d 45 ?? ba ?? ?? ?? ?? b9 05 01 00 00 e8 } //2
		$a_03_1 = {6a ff 6a 1a 8d 85 ?? ?? ff ff 50 6a 00 e8 ?? ?? ?? ?? 8d 85 ?? ?? ff ff 8d 95 ?? ?? ff ff b9 05 01 00 00 e8 } //2
		$a_03_2 = {6a 00 6a 1a a1 ?? ?? ?? ?? 50 6a 00 e8 ?? ?? ?? ?? 46 33 c0 a3 ?? ?? ?? ?? 33 d2 b8 02 00 00 00 e8 } //2
		$a_01_3 = {61 67 65 6e 74 2e 65 78 65 00 } //2
		$a_00_4 = {50 72 69 76 61 63 79 20 63 6f 6d 70 6f 6e 65 6e 74 73 00 } //2
		$a_00_5 = {50 72 69 76 61 63 79 20 63 65 6e 74 65 72 00 } //2
		$a_00_6 = {74 68 65 20 68 69 73 74 6f 72 79 20 6f 66 20 76 69 73 69 74 69 6e 67 20 70 6f 72 6e 6f 20 73 69 74 65 73 } //1 the history of visiting porno sites
		$a_00_7 = {53 75 72 66 70 72 6f 74 65 63 74 6f 72 31 43 6c 69 63 6b 00 } //1 畓晲牰瑯捥潴ㅲ汃捩k
		$a_00_8 = {43 6f 6f 6b 69 65 67 75 61 72 64 65 72 31 43 6c 69 63 6b 00 } //1 潃歯敩畧牡敤ㅲ汃捩k
		$a_00_9 = {52 65 67 69 73 74 72 79 63 6c 65 61 6e 65 72 31 43 6c 69 63 6b 00 } //1 敒楧瑳祲汣慥敮ㅲ汃捩k
		$a_00_10 = {53 79 73 74 65 6d 6d 6f 6e 69 74 6f 72 31 43 6c 69 63 6b 00 } //1 祓瑳浥潭楮潴ㅲ汃捩k
		$a_00_11 = {4f 70 65 6e 58 4c 47 75 61 72 64 65 72 31 00 } //1
		$a_00_12 = {2d 2d 70 72 6f 74 6f 20 75 64 70 20 2d 2d 72 65 6d 6f 74 65 20 31 39 34 2e 31 36 35 2e 34 2e 33 39 20 2d 2d 70 6f 72 74 20 31 31 39 34 } //2 --proto udp --remote 194.165.4.39 --port 1194
		$a_00_13 = {6b 65 79 73 00 00 00 00 ff ff ff ff 06 00 00 00 64 62 61 73 65 73 00 } //2
		$a_00_14 = {62 61 73 65 00 00 00 00 ff ff ff ff 08 00 00 00 61 64 76 61 6e 63 65 64 00 } //3
		$a_02_15 = {63 61 6e 20 72 65 73 75 6c 74 20 66 72 6f 6d 20 76 69 73 69 74 69 6e 67 20 (70 6f 72 6e|61 64 75 6c 74) 20 73 69 74 65 73 } //1
		$a_00_16 = {53 6f 72 72 79 2c 20 6c 69 76 65 20 73 75 70 70 6f 72 74 20 69 73 20 6f 6e 6c 79 20 61 76 69 61 62 6c 65 20 66 6f 72 20 6c 69 63 65 6e 73 65 64 20 73 6f 66 74 77 61 72 65 20 63 75 73 74 6f 6d 65 72 73 2e } //1 Sorry, live support is only aviable for licensed software customers.
		$a_01_17 = {66 61 71 5c 67 75 69 64 65 2e 68 74 6d 6c 00 } //1
		$a_02_18 = {41 74 74 65 6e 74 69 6f 6e 21 20 54 68 65 20 67 69 76 65 6e 20 61 63 74 69 6f 6e 20 69 73 20 [0-09] 6e 6f 74 20 72 65 63 6f 6d 6d 65 6e 64 65 64 } //1
		$a_00_19 = {41 74 74 65 6e 74 69 6f 6e 21 20 54 68 69 73 20 61 63 74 69 6f 6e 20 69 73 20 6e 6f 74 20 72 65 63 6f 6d 6d 65 6e 64 65 64 2e } //1 Attention! This action is not recommended.
		$a_00_20 = {4c 69 63 65 6e 73 65 20 65 72 72 6f 72 21 20 4c 69 63 65 6e 73 65 20 6d 61 6e 61 67 65 72 20 68 61 73 20 64 65 74 65 63 74 65 64 20 6f 75 74 64 61 74 65 64 20 73 6f 66 74 77 61 72 65 20 6c 69 63 65 6e 73 65 2e } //1 License error! License manager has detected outdated software license.
		$a_00_21 = {4e 65 63 65 73 73 61 72 79 20 61 63 74 69 6f 6e 73 20 68 61 76 65 20 62 65 65 6e 20 63 61 72 72 69 65 64 20 6f 75 74 3b 20 79 6f 75 72 20 73 79 73 74 65 6d 20 69 73 20 6e 6f 77 20 70 72 6f 74 65 63 74 65 64 2e } //2 Necessary actions have been carried out; your system is now protected.
		$a_00_22 = {54 68 65 20 63 6f 6d 70 6f 6e 65 6e 74 20 68 61 73 20 63 6f 6d 70 6c 65 74 65 64 20 69 74 73 20 77 6f 72 6b 2e } //1 The component has completed its work.
		$a_00_23 = {59 6f 75 20 63 61 6e 20 63 6f 6e 74 69 6e 75 65 20 74 68 65 20 77 6f 72 6b 2e 00 } //1
		$a_00_24 = {54 68 65 20 63 6f 6d 70 6f 6e 65 6e 74 73 20 70 72 6f 76 69 64 69 6e 67 20 73 65 63 75 72 69 74 79 20 68 61 76 65 20 72 65 70 6f 72 74 65 64 20 61 20 63 72 69 74 69 63 61 6c 6c 79 20 6c 6f 77 20 6c 65 76 65 6c 20 6f 66 20 73 79 73 74 65 6d 20 70 72 6f 74 65 63 74 69 6f 6e } //1 The components providing security have reported a critically low level of system protection
		$a_00_25 = {54 68 65 20 43 65 6e 74 65 72 20 66 6f 72 20 4c 69 63 65 6e 73 65 20 43 6f 6e 74 72 6f 6c 20 68 61 73 20 64 65 74 65 63 74 65 64 20 6f 75 74 64 61 74 65 64 20 6f 72 20 } //1 The Center for License Control has detected outdated or 
		$a_00_26 = {77 61 72 6e 6c 6e 6b 30 00 } //1
		$a_00_27 = {41 74 74 65 6e 74 69 6f 6e 21 20 53 65 63 75 72 69 74 79 20 6d 6f 64 75 6c 65 20 68 61 73 20 6e 6f 74 20 63 6f 6d 70 6c 65 74 65 64 20 72 65 6d 6f 76 61 6c 20 6f 66 20 75 6e 73 61 66 65 20 66 69 6c 65 73 2e } //1 Attention! Security module has not completed removal of unsafe files.
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_01_3  & 1)*2+(#a_00_4  & 1)*2+(#a_00_5  & 1)*2+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*2+(#a_00_13  & 1)*2+(#a_00_14  & 1)*3+(#a_02_15  & 1)*1+(#a_00_16  & 1)*1+(#a_01_17  & 1)*1+(#a_02_18  & 1)*1+(#a_00_19  & 1)*1+(#a_00_20  & 1)*1+(#a_00_21  & 1)*2+(#a_00_22  & 1)*1+(#a_00_23  & 1)*1+(#a_00_24  & 1)*1+(#a_00_25  & 1)*1+(#a_00_26  & 1)*1+(#a_00_27  & 1)*1) >=5
 
}
rule Rogue_Win32_PrivacyCenter_16{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 25 00 00 "
		
	strings :
		$a_00_0 = {50 00 72 00 69 00 76 00 61 00 63 00 79 00 20 00 43 00 65 00 6e 00 74 00 65 00 72 00 } //2 Privacy Center
		$a_03_1 = {50 00 6f 00 72 00 6e 00 20 00 63 00 61 00 63 00 68 00 65 00 00 [0-10] 44 00 61 00 6e 00 67 00 65 00 72 00 6f 00 75 00 73 00 00 [0-10] 43 00 72 00 69 00 74 00 69 00 63 00 61 00 6c 00 00 } //1
		$a_01_2 = {43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 20 00 74 00 68 00 61 00 74 00 20 00 63 00 61 00 6e 00 20 00 63 00 6f 00 70 00 79 00 20 00 69 00 74 00 73 00 65 00 6c 00 66 00 } //1 Computer programs that can copy itself
		$a_01_3 = {66 00 75 00 6c 00 6c 00 20 00 70 00 72 00 6f 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 22 00 20 00 6d 00 6f 00 64 00 65 00 20 00 61 00 6e 00 64 00 20 00 75 00 73 00 65 00 20 00 61 00 6c 00 6c 00 20 00 69 00 74 00 27 00 73 00 20 00 61 00 62 00 69 00 6c 00 69 00 74 00 69 00 65 00 73 00 } //1 full protection" mode and use all it's abilities
		$a_01_4 = {70 00 68 00 70 00 2e 00 77 00 65 00 6e 00 5f 00 78 00 65 00 64 00 6e 00 69 00 2f 00 65 00 72 00 75 00 63 00 65 00 73 00 2f 00 } //1 php.wen_xedni/eruces/
		$a_01_5 = {4c 00 6f 00 6f 00 6b 00 73 00 20 00 6c 00 69 00 6b 00 65 00 20 00 75 00 6e 00 64 00 65 00 73 00 69 00 72 00 61 00 62 00 6c 00 65 00 20 00 63 00 61 00 63 00 68 00 65 00 } //1 Looks like undesirable cache
		$a_01_6 = {43 00 6f 00 6f 00 6b 00 69 00 65 00 20 00 69 00 73 00 20 00 75 00 6e 00 73 00 61 00 66 00 65 00 20 00 6f 00 72 00 20 00 63 00 6f 00 72 00 72 00 75 00 70 00 74 00 65 00 64 00 } //1 Cookie is unsafe or corrupted
		$a_01_7 = {70 00 72 00 6f 00 62 00 6c 00 65 00 6d 00 73 00 21 00 20 00 54 00 72 00 61 00 63 00 65 00 73 00 20 00 6f 00 66 00 20 00 64 00 69 00 73 00 63 00 72 00 65 00 64 00 69 00 74 00 61 00 62 00 6c 00 65 00 20 00 66 00 69 00 6c 00 65 00 73 00 } //1 problems! Traces of discreditable files
		$a_01_8 = {61 00 64 00 75 00 6c 00 74 00 20 00 73 00 69 00 74 00 65 00 73 00 29 00 20 00 61 00 6e 00 64 00 20 00 73 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 20 00 76 00 75 00 6c 00 6e 00 65 00 72 00 61 00 62 00 69 00 6c 00 69 00 74 00 79 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 66 00 6f 00 75 00 6e 00 64 00 2e 00 20 00 43 00 6c 00 69 00 63 00 6b 00 } //1 adult sites) and security vulnerability have been found. Click
		$a_01_9 = {65 00 78 00 65 00 2e 00 63 00 70 00 00 00 00 00 6f 00 70 00 65 00 6e 00 00 00 } //1
		$a_03_10 = {64 00 65 00 74 00 72 00 6f 00 70 00 65 00 72 00 20 00 73 00 74 00 6e 00 65 00 6e 00 6f 00 70 00 6d 00 6f 00 63 00 20 00 [0-16] 6c 00 61 00 72 00 65 00 76 00 65 00 73 00 } //2
		$a_01_11 = {43 00 6f 00 6f 00 6b 00 69 00 65 00 20 00 69 00 6e 00 76 00 61 00 64 00 65 00 20 00 79 00 6f 00 75 00 72 00 20 00 70 00 72 00 69 00 76 00 61 00 63 00 79 00 } //1 Cookie invade your privacy
		$a_03_12 = {6a 00 6a 00 6a 00 53 8b d8 33 c0 55 68 ?? ?? ?? ?? 64 ff 30 64 89 20 6a 05 6a 00 6a 00 } //1
		$a_01_13 = {73 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 2e 00 69 00 6e 00 69 00 00 00 } //2
		$a_01_14 = {2e 00 73 00 67 00 6e 00 69 00 74 00 74 00 65 00 73 00 00 00 } //2
		$a_01_15 = {55 00 6e 00 64 00 65 00 73 00 69 00 72 00 61 00 62 00 6c 00 65 00 20 00 64 00 61 00 74 00 61 00 20 00 69 00 6e 00 20 00 74 00 68 00 65 00 20 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 63 00 61 00 63 00 68 00 65 00 } //1 Undesirable data in the Internet cache
		$a_01_16 = {50 00 72 00 69 00 76 00 61 00 63 00 79 00 20 00 63 00 6f 00 6d 00 70 00 6f 00 6e 00 65 00 6e 00 74 00 73 00 00 00 } //1
		$a_00_17 = {59 00 6f 00 75 00 72 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 69 00 73 00 20 00 73 00 74 00 69 00 6c 00 6c 00 20 00 69 00 6e 00 20 00 64 00 61 00 6e 00 67 00 65 00 72 00 2e 00 } //1 Your computer is still in danger.
		$a_01_18 = {61 00 64 00 75 00 6c 00 74 00 20 00 73 00 69 00 74 00 65 00 73 00 29 00 20 00 61 00 6e 00 64 00 20 00 73 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 20 00 65 00 78 00 70 00 6f 00 73 00 75 00 72 00 65 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 66 00 6f 00 75 00 6e 00 64 00 2e 00 20 00 43 00 6c 00 69 00 63 00 6b 00 } //1 adult sites) and security exposure have been found. Click
		$a_01_19 = {54 00 72 00 61 00 63 00 65 00 73 00 20 00 6f 00 66 00 20 00 64 00 69 00 73 00 63 00 72 00 65 00 64 00 69 00 74 00 61 00 62 00 6c 00 65 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 28 00 66 00 6f 00 72 00 20 00 65 00 78 00 61 00 6d 00 70 00 6c 00 65 00 2c 00 20 00 74 00 68 00 65 00 20 00 68 00 69 00 73 00 74 00 6f 00 72 00 79 00 20 00 6f 00 66 00 20 00 76 00 69 00 73 00 69 00 74 00 69 00 6e 00 67 00 20 00 61 00 64 00 75 00 6c 00 74 00 20 00 73 00 69 00 74 00 65 00 73 00 29 00 } //1 Traces of discreditable files (for example, the history of visiting adult sites)
		$a_00_20 = {43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 20 00 63 00 65 00 6e 00 74 00 65 00 72 00 00 00 } //1
		$a_03_21 = {73 00 67 00 6e 00 69 00 74 00 74 00 65 00 73 00 00 00 00 00 ?? ?? ?? ?? ff ff ff ff 04 00 00 00 2e 00 69 00 6e 00 69 00 00 00 } //2
		$a_01_22 = {2f 00 65 00 72 00 75 00 63 00 65 00 73 00 2f 00 } //1 /eruces/
		$a_01_23 = {6e 00 69 00 61 00 6d 00 63 00 63 00 00 00 } //2
		$a_03_24 = {73 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 00 00 00 00 ?? ?? ?? ?? ff ff ff ff 04 00 00 00 2e 00 69 00 6e 00 69 00 00 00 } //2
		$a_01_25 = {70 00 61 00 72 00 61 00 6d 00 30 00 00 00 } //1
		$a_01_26 = {43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 2d 00 43 00 65 00 6e 00 74 00 65 00 72 00 00 00 } //1
		$a_01_27 = {74 00 6f 00 20 00 65 00 6c 00 69 00 6d 00 69 00 6e 00 61 00 74 00 65 00 20 00 76 00 75 00 6c 00 6e 00 65 00 72 00 61 00 62 00 69 00 6c 00 69 00 74 00 79 00 20 00 69 00 6d 00 6d 00 65 00 64 00 69 00 61 00 74 00 65 00 6c 00 79 00 21 00 } //1 to eliminate vulnerability immediately!
		$a_00_28 = {2f 00 72 00 32 00 68 00 69 00 74 00 2f 00 31 00 2f 00 00 00 } //2
		$a_00_29 = {00 00 6e 00 69 00 61 00 6d 00 00 00 } //1
		$a_02_30 = {21 00 79 00 6c 00 65 00 74 00 61 00 69 00 64 00 65 00 6d 00 6d 00 69 00 20 00 [0-02] 65 00 74 00 61 00 6e 00 69 00 6d 00 69 00 6c 00 65 00 20 00 [0-02] 6f 00 74 00 20 00 [0-02] 6e 00 6f 00 69 00 74 00 61 00 63 00 69 00 66 00 69 00 74 00 6f 00 6e 00 20 00 73 00 69 00 68 00 74 00 } //2
		$a_00_31 = {00 00 2f 00 74 00 69 00 68 00 32 00 72 00 2f 00 } //2
		$a_02_32 = {00 6e 00 69 00 61 00 6d 00 00 ?? ?? ?? ?? ?? [0-50] 00 61 00 66 00 69 00 64 00 00 } //1
		$a_01_33 = {72 00 32 00 6e 00 65 00 77 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 } //2 r2newinstall
		$a_03_34 = {63 00 63 00 00 [0-16] 6d 00 61 00 69 00 6e 00 2e 00 65 00 78 00 65 00 00 } //1
		$a_03_35 = {74 00 65 00 73 00 00 [0-15] 74 00 69 00 6e 00 67 00 73 00 2e 00 69 00 6e 00 69 00 00 } //1
		$a_01_36 = {6c 00 6c 00 61 00 74 00 73 00 6e 00 69 00 77 00 65 00 6e 00 32 00 72 00 } //2 llatsniwen2r
	condition:
		((#a_00_0  & 1)*2+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_03_10  & 1)*2+(#a_01_11  & 1)*1+(#a_03_12  & 1)*1+(#a_01_13  & 1)*2+(#a_01_14  & 1)*2+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_00_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_00_20  & 1)*1+(#a_03_21  & 1)*2+(#a_01_22  & 1)*1+(#a_01_23  & 1)*2+(#a_03_24  & 1)*2+(#a_01_25  & 1)*1+(#a_01_26  & 1)*1+(#a_01_27  & 1)*1+(#a_00_28  & 1)*2+(#a_00_29  & 1)*1+(#a_02_30  & 1)*2+(#a_00_31  & 1)*2+(#a_02_32  & 1)*1+(#a_01_33  & 1)*2+(#a_03_34  & 1)*1+(#a_03_35  & 1)*1+(#a_01_36  & 1)*2) >=4
 
}
rule Rogue_Win32_PrivacyCenter_17{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {23 5c 43 43 65 6e 74 65 72 00 } //1 尣䍃湥整r
		$a_01_1 = {61 70 2e 65 78 65 00 73 70 2e 65 78 65 00 73 65 74 74 69 6e 67 73 2e 69 6e 69 } //1
		$a_01_2 = {2f 6e 65 77 69 6e 73 74 61 6c 6c 2f } //1 /newinstall/
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule Rogue_Win32_PrivacyCenter_18{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {72 75 6e 00 ff ff ff ff 09 00 00 00 41 6e 74 69 76 69 72 75 73 00 00 00 ff ff ff ff 15 00 00 00 53 4f 46 54 57 41 52 45 5c 53 61 66 65 74 79 43 65 6e 74 65 72 00 } //1
		$a_01_1 = {5c 75 49 45 5f 42 48 4f 2e 70 61 73 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Rogue_Win32_PrivacyCenter_19{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {40 70 72 69 76 61 63 79 2d 63 65 6e 74 65 72 2e 6f 72 67 } //1 @privacy-center.org
		$a_01_1 = {76 69 73 69 74 69 6e 67 20 61 64 75 6c 74 20 73 69 74 65 73 20 6f 72 20 76 69 72 75 73 20 61 63 74 69 76 69 74 79 20 6f 6e 20 79 6f 75 72 20 63 6f 6d 70 75 74 65 72 2e } //1 visiting adult sites or virus activity on your computer.
		$a_01_2 = {53 65 63 75 72 69 74 79 20 74 68 72 65 61 74 21 } //1 Security threat!
		$a_01_3 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e } //1 Software\Microsoft\Windows NT\CurrentVersion\Winlogon
		$a_01_4 = {20 59 6f 75 72 20 73 65 63 75 72 69 74 79 20 69 73 20 75 6e 64 65 72 20 74 68 72 65 61 74 } //1  Your security is under threat
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Rogue_Win32_PrivacyCenter_20{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2f 00 73 00 65 00 63 00 75 00 72 00 65 00 2f 00 69 00 6e 00 64 00 65 00 78 00 5f 00 6e 00 65 00 77 00 2e 00 70 00 68 00 70 00 3f 00 69 00 64 00 3d 00 } //1 /secure/index_new.php?id=
		$a_01_1 = {59 00 6f 00 75 00 72 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 69 00 73 00 20 00 73 00 74 00 69 00 6c 00 6c 00 20 00 69 00 6e 00 20 00 64 00 61 00 6e 00 67 00 65 00 72 00 2e 00 } //1 Your computer is still in danger.
		$a_01_2 = {44 00 6f 00 20 00 79 00 6f 00 75 00 20 00 77 00 61 00 6e 00 74 00 20 00 74 00 6f 00 20 00 63 00 6f 00 6e 00 74 00 69 00 6e 00 75 00 65 00 20 00 77 00 69 00 74 00 68 00 6f 00 75 00 74 00 20 00 61 00 6e 00 79 00 20 00 63 00 68 00 61 00 6e 00 67 00 65 00 73 00 3f 00 } //1 Do you want to continue without any changes?
		$a_01_3 = {6d 00 61 00 69 00 6c 00 74 00 6f 00 3a 00 20 00 73 00 75 00 70 00 70 00 6f 00 72 00 74 00 40 00 72 00 65 00 61 00 6c 00 67 00 6f 00 6c 00 64 00 73 00 6f 00 66 00 74 00 2e 00 63 00 6f 00 6d 00 } //1 mailto: support@realgoldsoft.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Rogue_Win32_PrivacyCenter_21{
	meta:
		description = "Rogue:Win32/PrivacyCenter,SIGNATURE_TYPE_PEHSTR,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {50 00 72 00 69 00 76 00 61 00 63 00 79 00 20 00 63 00 65 00 6e 00 74 00 65 00 72 00 00 00 } //2
		$a_01_1 = {43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 20 00 74 00 68 00 61 00 74 00 20 00 63 00 61 00 6e 00 20 00 63 00 6f 00 70 00 79 00 20 00 69 00 74 00 73 00 65 00 6c 00 66 00 20 00 61 00 6e 00 64 00 20 00 69 00 6e 00 66 00 65 00 63 00 74 00 20 00 61 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 00 00 } //2
		$a_01_2 = {4c 00 6f 00 6f 00 6b 00 73 00 20 00 6c 00 69 00 6b 00 65 00 20 00 70 00 6f 00 72 00 6e 00 20 00 63 00 61 00 63 00 68 00 65 00 00 00 } //1
		$a_01_3 = {43 00 6f 00 6f 00 6b 00 69 00 65 00 20 00 63 00 61 00 6e 00 20 00 63 00 6f 00 6e 00 74 00 61 00 69 00 6e 00 20 00 79 00 6f 00 75 00 72 00 20 00 70 00 72 00 69 00 76 00 61 00 74 00 65 00 20 00 69 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}