
rule Trojan_Win32_Malgent_CSG_MSR{
	meta:
		description = "Trojan:Win32/Malgent.CSG!MSR,SIGNATURE_TYPE_PEHSTR_EXT,33 01 31 01 0a 00 00 64 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5c 00 41 00 75 00 74 00 6f 00 55 00 70 00 64 00 61 00 74 00 65 00 2e 00 64 00 6c 00 6c 00 } //64 00  Software\Microsoft\Windows\Defender\AutoUpdate.dll
		$a_01_1 = {64 65 6c 20 22 43 3a 5c 44 6f 63 75 6d 65 6e 74 73 20 61 6e 64 20 53 65 74 74 69 6e 67 73 5c 41 6c 6c 20 55 73 65 72 73 } //64 00  del "C:\Documents and Settings\All Users
		$a_01_2 = {74 00 65 00 6d 00 70 00 2e 00 62 00 61 00 74 00 } //01 00  temp.bat
		$a_80_3 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 } //URLDownloadToFile  01 00 
		$a_80_4 = {4c 6f 61 64 4c 69 62 72 61 72 79 } //LoadLibrary  01 00 
		$a_80_5 = {57 72 69 74 65 46 69 6c 65 } //WriteFile  01 00 
		$a_80_6 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //VirtualProtect  01 00 
		$a_02_7 = {64 72 6f 70 70 65 72 2d 72 65 67 73 76 72 33 32 90 02 05 2e 64 6c 6c 90 00 } //01 00 
		$a_80_8 = {66 75 6e 63 31 } //func1  01 00 
		$a_80_9 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //DllRegisterServer  00 00 
	condition:
		any of ($a_*)
 
}