
rule TrojanDropper_Win32_QQpass_gen_B{
	meta:
		description = "TrojanDropper:Win32/QQpass.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,4e 00 44 00 28 00 00 05 00 "
		
	strings :
		$a_00_0 = {73 33 db 6a 00 e8 ee ff ff ff 83 f8 07 75 1c 6a 01 e8 e2 ff ff ff } //05 00 
		$a_00_1 = {70 83 7d 0c 01 1b c0 40 83 e0 7f 70 8b 65 08 70 } //05 00 
		$a_00_2 = {61 64 76 61 70 69 33 32 2e 64 6c 6c 00 00 00 00 71 75 65 72 79 73 65 72 76 69 63 65 63 6f 6e 66 69 67 32 61 00 00 00 00 71 75 65 72 79 73 65 72 76 69 63 65 63 6f 6e 66 69 67 32 77 00 00 00 00 63 68 61 6e 67 65 73 65 72 76 69 63 65 63 6f 6e 66 69 67 32 61 00 00 00 63 68 61 6e 67 65 73 65 72 76 69 63 65 63 6f 6e 66 69 67 32 } //02 00 
		$a_00_3 = {b0 01 5b c3 00 00 6b 65 72 6e 65 6c 33 32 2e 64 6c 6c 00 00 00 00 63 72 65 61 74 65 74 6f 6f 6c } //02 00 
		$a_00_4 = {ff ff ff ff 07 00 00 00 68 74 74 70 3a 2f 2f 00 } //02 00 
		$a_00_5 = {47 45 54 20 00 00 00 00 ff ff ff ff 0b 00 00 00 20 48 54 54 50 2f 31 2e 30 0d 0a 00 ff } //02 00 
		$a_00_6 = {61 63 63 65 70 74 3a 20 69 6d 61 67 65 2f 67 69 66 2c 20 69 6d 61 67 65 2f 78 2d 78 62 69 74 6d 61 70 2c 20 69 6d 61 67 65 2f 6a 70 65 67 2c 20 69 6d 61 67 65 2f 70 6a 70 65 67 2c 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 73 68 6f 63 6b 77 61 76 65 2d 66 6c 61 73 68 2c 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 76 6e 64 2e 6d 73 2d 70 6f 77 65 72 70 6f 69 6e 74 2c 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 76 6e 64 2e 6d 73 2d 65 78 63 65 6c 2c 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 6d 73 77 6f 72 64 2c 20 2a 2f 2a } //02 00  accept: image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, application/x-shockwave-flash, application/vnd.ms-powerpoint, application/vnd.ms-excel, application/msword, */*
		$a_00_7 = {0d 0a 00 00 ff ff ff ff 18 00 00 00 41 63 63 65 70 74 2d 4c 61 6e 67 75 61 67 65 3a 20 7a 68 2d 63 6e 0d 0a 00 00 00 00 ff ff ff ff 40 } //02 00 
		$a_00_8 = {55 72 6c 4d 6f 6e } //02 00  UrlMon
		$a_00_9 = {55 55 6e 69 74 5f 53 65 6e 64 4d 61 69 6c } //02 00  UUnit_SendMail
		$a_00_10 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //02 00  SOFTWARE\Borland\Delphi\RTL
		$a_00_11 = {43 68 61 6e 67 65 53 65 72 76 69 63 65 43 6f 6e 66 69 67 32 41 } //02 00  ChangeServiceConfig2A
		$a_00_12 = {50 72 6f 63 65 73 73 33 32 4e 65 78 74 } //05 00  Process32Next
		$a_00_13 = {53 74 61 72 74 48 6f 6f 6b 00 53 74 6f 70 48 6f 6f 6b } //02 00  瑓牡䡴潯k瑓灯潈歯
		$a_00_14 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //02 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_00_15 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 73 65 72 76 69 63 65 73 } //02 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Runservices
		$a_00_16 = {64 6c 6c 66 69 6c 65 } //02 00  dllfile
		$a_00_17 = {53 68 65 6c 6c } //02 00  Shell
		$a_00_18 = {73 79 73 74 65 6d 2e 69 6e 69 } //02 00  system.ini
		$a_00_19 = {45 78 70 6c 6f 72 65 72 2e 65 78 65 20 } //02 00  Explorer.exe 
		$a_00_20 = {50 72 6f 78 79 2d 43 6f 6e 6e 65 63 74 69 6f 6e 3a 20 4b 65 65 70 2d 41 6c 69 76 65 } //05 00  Proxy-Connection: Keep-Alive
		$a_00_21 = {3f 77 69 6e 6e 74 53 65 72 76 69 63 65 } //0a 00  ?winntService
		$a_01_22 = {5a 4c 54 48 4f 4f 4b } //05 00  ZLTHOOK
		$a_01_23 = {7a 6c 74 68 6f 6f 6b } //05 00  zlthook
		$a_00_24 = {7a 6c 74 68 6f 6f 6b 2e 64 6c 6c } //14 00  zlthook.dll
		$a_00_25 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 68 65 6c 70 5c 51 51 5a 4c 54 2e 43 48 49 } //05 00  C:\WINDOWS\help\QQZLT.CHI
		$a_00_26 = {71 55 6e 69 74 48 6f 6f 6b 44 6c 6c } //0a 00  qUnitHookDll
		$a_00_27 = {71 71 74 6c 7a 21 } //0a 00  qqtlz!
		$a_00_28 = {3f 71 71 6d 61 69 6c 3d } //0a 00  ?qqmail=
		$a_00_29 = {6c 73 2e 6e 65 74 2f 71 32 71 } //0a 00  ls.net/q2q
		$a_00_30 = {68 74 74 70 3a 2f 2f 77 77 77 2e 64 6e 61 6e 67 65 6c 73 2e 6e 65 74 2f 71 32 71 2f 71 71 6c 6f 6e 67 2e 61 73 70 } //02 00  http://www.dnangels.net/q2q/qqlong.asp
		$a_00_31 = {48 45 4c 4f 20 } //02 00  HELO 
		$a_00_32 = {45 48 4c 4f 20 } //02 00  EHLO 
		$a_00_33 = {41 55 54 48 20 4c 4f 47 49 4e } //02 00  AUTH LOGIN
		$a_00_34 = {4d 41 49 4c 20 46 52 4f 4d 3a 20 3c } //01 00  MAIL FROM: <
		$a_00_35 = {52 43 50 54 20 54 4f 3a 20 3c } //01 00  RCPT TO: <
		$a_00_36 = {46 72 6f 6d 3a 20 3c } //01 00  From: <
		$a_00_37 = {54 6f 3a 20 3c } //01 00  To: <
		$a_00_38 = {53 75 62 6a 65 63 74 3a 20 } //05 00  Subject: 
		$a_00_39 = {64 61 74 61 0d 0a 00 00 ff ff ff ff 90 01 01 00 00 00 66 72 6f 6d 3a 20 3c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}