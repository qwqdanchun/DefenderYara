
rule Trojan_Win32_Alureon_gen_B{
	meta:
		description = "Trojan:Win32/Alureon.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,30 00 2c 00 28 00 00 03 00 "
		
	strings :
		$a_00_0 = {50 45 47 46 53 44 47 48 58 43 42 47 54 52 23 } //03 00  PEGFSDGHXCBGTR#
		$a_00_1 = {4b 45 42 44 48 4f 52 44 43 5a 47 4c 54 41 23 } //03 00  KEBDHORDCZGLTA#
		$a_00_2 = {45 45 47 53 44 48 53 46 47 4a 4c } //03 00  EEGSDHSFGJL
		$a_00_3 = {47 48 58 43 42 47 54 52 } //03 00  GHXCBGTR
		$a_00_4 = {4f 52 44 43 5a 47 4c 54 41 } //03 00  ORDCZGLTA
		$a_00_5 = {2f 63 6e 74 2e 6a 70 67 } //03 00  /cnt.jpg
		$a_00_6 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 25 73 3b 25 73 3b 25 78 3b 25 78 3b 25 78 } //03 00  Content-Type: %s;%s;%x;%x;%x
		$a_00_7 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 25 73 } //03 00  User-Agent: %s
		$a_00_8 = {25 73 5c 25 63 25 63 25 63 25 63 25 63 2e 25 73 } //01 00  %s\%c%c%c%c%c.%s
		$a_01_9 = {45 78 70 6c 6f 72 65 72 2e 65 78 65 } //01 00  Explorer.exe
		$a_00_10 = {73 69 64 63 6c 73 } //01 00  sidcls
		$a_00_11 = {63 6c 73 69 64 } //01 00  clsid
		$a_00_12 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e } //01 00  Software\Microsoft\Windows\CurrentVersion
		$a_01_13 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 } //01 00  explorer.exe
		$a_00_14 = {68 74 74 70 3a 2f 2f 38 35 } //01 00  http://85
		$a_00_15 = {4d 69 63 72 6f 73 6f 66 74 20 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 } //01 00  Microsoft Internet Explorer
		$a_00_16 = {43 72 65 61 74 65 45 76 65 6e 74 41 } //01 00  CreateEventA
		$a_00_17 = {53 65 74 45 6e 64 4f 66 46 69 6c 65 } //01 00  SetEndOfFile
		$a_00_18 = {53 65 74 46 69 6c 65 50 6f 69 6e 74 65 72 } //01 00  SetFilePointer
		$a_00_19 = {57 72 69 74 65 46 69 6c 65 } //01 00  WriteFile
		$a_00_20 = {43 72 65 61 74 65 46 69 6c 65 41 } //01 00  CreateFileA
		$a_00_21 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 41 } //01 00  CreateProcessA
		$a_01_22 = {47 65 74 53 79 73 74 65 6d 44 69 72 65 63 74 6f 72 79 41 } //01 00  GetSystemDirectoryA
		$a_01_23 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_00_24 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 45 78 } //01 00  VirtualProtectEx
		$a_00_25 = {44 75 70 6c 69 63 61 74 65 48 61 6e 64 6c 65 } //01 00  DuplicateHandle
		$a_00_26 = {52 65 6d 6f 76 65 44 69 72 65 63 74 6f 72 79 41 } //01 00  RemoveDirectoryA
		$a_00_27 = {47 65 74 54 69 63 6b 43 6f 75 6e 74 } //01 00  GetTickCount
		$a_00_28 = {49 6e 69 74 69 61 6c 69 7a 65 53 65 63 75 72 69 74 79 44 65 73 63 72 69 70 74 6f 72 } //01 00  InitializeSecurityDescriptor
		$a_00_29 = {53 65 74 53 65 63 75 72 69 74 79 44 65 73 63 72 69 70 74 6f 72 44 61 63 6c } //01 00  SetSecurityDescriptorDacl
		$a_00_30 = {55 75 69 64 54 6f 53 74 72 69 6e 67 41 } //01 00  UuidToStringA
		$a_01_31 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 } //01 00  InternetOpenA
		$a_00_32 = {49 6e 74 65 72 6e 65 74 43 61 6e 6f 6e 69 63 61 6c 69 7a 65 55 72 6c 41 } //01 00  InternetCanonicalizeUrlA
		$a_00_33 = {48 74 74 70 4f 70 65 6e 52 65 71 75 65 73 74 41 } //01 00  HttpOpenRequestA
		$a_00_34 = {48 74 74 70 41 64 64 52 65 71 75 65 73 74 48 65 61 64 65 72 73 41 } //01 00  HttpAddRequestHeadersA
		$a_01_35 = {48 74 74 70 53 65 6e 64 52 65 71 75 65 73 74 41 } //01 00  HttpSendRequestA
		$a_01_36 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //01 00  InternetReadFile
		$a_01_37 = {49 6e 74 65 72 6e 65 74 43 6c 6f 73 65 48 61 6e 64 6c 65 } //01 00  InternetCloseHandle
		$a_00_38 = {49 6e 74 65 72 6e 65 74 43 72 61 63 6b 55 72 6c 41 } //01 00  InternetCrackUrlA
		$a_00_39 = {49 6e 74 65 72 6e 65 74 43 6f 6e 6e 65 63 74 41 } //00 00  InternetConnectA
	condition:
		any of ($a_*)
 
}