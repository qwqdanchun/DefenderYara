
rule TrojanDownloader_Win32_Pokier{
	meta:
		description = "TrojanDownloader:Win32/Pokier,SIGNATURE_TYPE_PEHSTR_EXT,2e 00 2c 00 3c 00 00 01 00 "
		
	strings :
		$a_00_0 = {4b 65 65 70 2d 41 6c 69 76 65 } //01 00  Keep-Alive
		$a_00_1 = {25 73 3a 20 62 61 73 69 63 } //01 00  %s: basic
		$a_00_2 = {41 75 74 68 6f 72 69 7a 61 74 69 6f 6e } //01 00  Authorization
		$a_00_3 = {50 72 6f 78 79 2d 41 75 74 68 6f 72 69 7a 61 74 69 6f 6e } //01 00  Proxy-Authorization
		$a_00_4 = {25 73 3a 20 4b 65 65 70 2d 41 6c 69 76 65 } //01 00  %s: Keep-Alive
		$a_00_5 = {50 72 6f 78 79 2d 43 6f 6e 6e 65 63 74 69 6f 6e } //01 00  Proxy-Connection
		$a_00_6 = {63 6f 6e 74 65 6e 74 2d 6c 65 6e 67 74 68 } //01 00  content-length
		$a_00_7 = {68 74 74 70 3a 2f 2f 25 73 25 73 } //01 00  http://%s%s
		$a_00_8 = {48 54 54 50 2f 31 2e 30 20 34 30 34 20 4e 6f 74 20 46 6f 75 6e 64 } //01 00  HTTP/1.0 404 Not Found
		$a_00_9 = {50 72 6f 78 79 2d 43 6f 6e 6e 65 63 74 69 6f 6e 3a 20 63 6c 6f 73 65 } //01 00  Proxy-Connection: close
		$a_00_10 = {43 6f 6e 74 65 6e 74 2d 74 79 70 65 3a 20 74 65 78 74 2f 68 74 6d 6c 3b 20 75 6e 73 69 67 6e 65 64 20 63 68 61 72 73 65 74 3d 75 73 2d 61 73 63 69 69 } //01 00  Content-type: text/html; unsigned charset=us-ascii
		$a_00_11 = {3c 68 74 6d 6c 3e 3c 68 65 61 64 3e 3c 74 69 74 6c 65 3e 34 30 34 20 4e 6f 74 20 46 6f 75 6e 64 3c 2f 74 69 74 6c 65 3e 3c 2f 68 65 61 64 3e } //01 00  <html><head><title>404 Not Found</title></head>
		$a_00_12 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 74 65 78 74 2f 68 74 6d 6c } //01 00  Content-Type: text/html
		$a_00_13 = {48 54 54 50 2f 31 2e 30 20 32 30 30 20 43 6f 6e 6e 65 63 74 69 6f 6e 20 65 73 74 61 62 6c 69 73 68 65 64 } //01 00  HTTP/1.0 200 Connection established
		$a_00_14 = {48 54 54 50 2f 31 2e 30 20 34 30 37 20 50 72 6f 78 79 20 41 75 74 68 65 6e 74 69 63 61 74 69 6f 6e 20 52 65 71 75 69 72 65 64 } //01 00  HTTP/1.0 407 Proxy Authentication Required
		$a_00_15 = {50 72 6f 78 79 2d 41 75 74 68 65 6e 74 69 63 61 74 65 3a 20 42 61 73 69 63 20 72 65 61 6c 6d 3d 22 70 72 6f 78 79 22 } //01 00  Proxy-Authenticate: Basic realm="proxy"
		$a_00_16 = {48 54 54 50 2f 31 2e 30 20 35 30 30 20 49 6e 74 65 72 6e 61 6c 20 45 72 72 6f 72 } //01 00  HTTP/1.0 500 Internal Error
		$a_00_17 = {48 54 54 50 2f 31 2e 30 20 35 30 33 20 53 65 72 76 69 63 65 20 55 6e 61 76 61 69 6c 61 62 6c 65 } //01 00  HTTP/1.0 503 Service Unavailable
		$a_00_18 = {4e 4f 4e 5f 45 4c 49 54 45 } //01 00  NON_ELITE
		$a_00_19 = {45 4c 49 54 45 } //01 00  ELITE
		$a_00_20 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_00_21 = {25 73 77 75 25 73 2e 65 78 65 } //01 00  %swu%s.exe
		$a_00_22 = {41 6c 6c 6f 77 20 61 6c 6c 20 61 63 74 69 76 69 74 69 65 73 20 66 6f 72 20 74 68 69 73 20 61 70 70 6c 69 63 61 74 69 6f 6e } //01 00  Allow all activities for this application
		$a_00_23 = {26 55 6e 62 6c 6f 63 6b } //01 00  &Unblock
		$a_00_24 = {57 69 6e 64 6f 77 73 20 53 65 63 75 72 69 74 79 20 41 6c 65 72 74 } //01 00  Windows Security Alert
		$a_00_25 = {48 69 64 64 65 6e 20 50 72 6f 63 65 73 73 20 52 65 71 75 65 73 74 73 20 4e 65 74 77 6f 72 6b 20 41 63 63 65 73 73 } //01 00  Hidden Process Requests Network Access
		$a_00_26 = {57 61 72 6e 69 6e 67 3a 20 43 6f 6d 70 6f 6e 65 6e 74 73 20 48 61 76 65 20 43 68 61 6e 67 65 64 } //01 00  Warning: Components Have Changed
		$a_00_27 = {43 72 65 61 74 65 20 72 75 6c 65 20 66 6f 72 20 20 25 73 } //01 00  Create rule for  %s
		$a_00_28 = {25 73 3f 69 70 3d 25 73 26 70 31 3d 25 75 26 70 32 3d 25 75 26 49 44 3d 25 73 26 76 65 72 3d 25 73 26 6e 65 74 3d 25 73 26 73 70 65 65 64 3d 25 64 2e 31 26 6f 73 3d 25 73 26 74 79 70 65 3d 25 73 } //01 00  %s?ip=%s&p1=%u&p2=%u&ID=%s&ver=%s&net=%s&speed=%d.1&os=%s&type=%s
		$a_00_29 = {25 74 65 6d 70 25 5c } //01 00  %temp%\
		$a_00_30 = {4d 6f 7a 69 6c 6c 61 2f 35 2e 30 } //01 00  Mozilla/5.0
		$a_00_31 = {4d 69 63 72 6f 73 6f 66 74 5f 57 69 6e 33 32 73 5f } //01 00  Microsoft_Win32s_
		$a_00_32 = {4d 69 63 72 6f 73 6f 66 74 5f 57 69 6e 64 6f 77 73 5f 4d 69 6c 6c 65 6e 6e 69 75 6d 5f 45 64 69 74 69 6f 6e 5f } //01 00  Microsoft_Windows_Millennium_Edition_
		$a_00_33 = {4d 69 63 72 6f 73 6f 66 74 5f 57 69 6e 64 6f 77 73 5f 39 38 5f } //01 00  Microsoft_Windows_98_
		$a_00_34 = {4d 69 63 72 6f 73 6f 66 74 5f 57 69 6e 64 6f 77 73 5f 39 35 5f } //01 00  Microsoft_Windows_95_
		$a_00_35 = {53 65 72 76 69 63 65 5f 50 61 63 6b 5f 36 } //01 00  Service_Pack_6
		$a_00_36 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 48 6f 74 66 69 78 } //01 00  SOFTWARE\Microsoft\Windows NT\CurrentVersion\Hotfix
		$a_00_37 = {53 45 52 56 45 52 4e 54 } //01 00  SERVERNT
		$a_00_38 = {4c 41 4e 4d 41 4e 4e 54 } //01 00  LANMANNT
		$a_00_39 = {57 6f 72 6b 73 74 61 74 69 6f 6e 5f } //01 00  Workstation_
		$a_00_40 = {50 72 6f 64 75 63 74 54 79 70 65 } //01 00  ProductType
		$a_00_41 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 43 6f 6e 74 72 6f 6c 5c 50 72 6f 64 75 63 74 4f 70 74 69 6f 6e 73 } //01 00  SYSTEM\CurrentControlSet\Control\ProductOptions
		$a_00_42 = {53 65 72 76 65 72 5f 34 2e 30 5f } //01 00  Server_4.0_
		$a_00_43 = {41 64 76 61 6e 63 65 64 5f 53 65 72 76 65 72 5f } //01 00  Advanced_Server_
		$a_00_44 = {44 61 74 61 63 65 6e 74 65 72 5f 53 65 72 76 65 72 5f } //01 00  Datacenter_Server_
		$a_00_45 = {53 74 61 6e 64 61 72 64 5f 45 64 69 74 69 6f 6e 5f } //01 00  Standard_Edition_
		$a_00_46 = {57 65 62 5f 45 64 69 74 69 6f 6e 5f } //01 00  Web_Edition_
		$a_00_47 = {50 72 6f 66 65 73 73 69 6f 6e 61 6c 5f } //01 00  Professional_
		$a_00_48 = {48 6f 6d 65 5f 45 64 69 74 69 6f 6e 5f } //01 00  Home_Edition_
		$a_00_49 = {4d 69 63 72 6f 73 6f 66 74 5f 57 69 6e 64 6f 77 73 5f 4e 54 5f } //01 00  Microsoft_Windows_NT_
		$a_00_50 = {4d 69 63 72 6f 73 6f 66 74 5f 57 69 6e 64 6f 77 73 5f 32 30 30 30 5f } //01 00  Microsoft_Windows_2000_
		$a_00_51 = {4d 69 63 72 6f 73 6f 66 74 5f 57 69 6e 64 6f 77 73 5f 58 50 5f } //01 00  Microsoft_Windows_XP_
		$a_00_52 = {4d 69 63 72 6f 73 6f 66 74 5f 57 69 6e 64 6f 77 73 2e 4e 45 54 28 53 65 72 76 65 72 32 30 30 33 20 66 61 6d 69 6c 79 29 5f } //01 00  Microsoft_Windows.NET(Server2003 family)_
		$a_01_53 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //01 00  SeDebugPrivilege
		$a_00_54 = {5c 4d 69 63 72 6f 73 6f 66 74 5c } //01 00  \Microsoft\
		$a_00_55 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 20 46 6f 6c 64 65 72 73 } //01 00  Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders
		$a_00_56 = {41 70 70 44 61 74 61 } //01 00  AppData
		$a_00_57 = {25 73 78 74 65 6d 70 78 2e 78 78 78 } //01 00  %sxtempx.xxx
		$a_00_58 = {5c 52 65 6c 65 61 73 65 73 5c } //01 00  \Releases\
		$a_00_59 = {73 6f 63 6b 73 5f 77 65 62 5f 72 65 70 6f 72 74 5c } //00 00  socks_web_report\
	condition:
		any of ($a_*)
 
}