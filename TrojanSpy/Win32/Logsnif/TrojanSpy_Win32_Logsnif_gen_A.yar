
rule TrojanSpy_Win32_Logsnif_gen_A{
	meta:
		description = "TrojanSpy:Win32/Logsnif.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,ffffffdc 00 ffffffd2 00 17 00 00 ffffff96 00 "
		
	strings :
		$a_00_0 = {53 54 55 50 49 44 20 4b 41 56 } //19 00  STUPID KAV
		$a_00_1 = {63 3a 5c 6d 65 2e 6d 70 33 } //19 00  c:\me.mp3
		$a_00_2 = {43 3a 5c 61 6c 69 2e 68 74 6d 6c } //05 00  C:\ali.html
		$a_00_3 = {41 6e 74 69 53 70 79 77 61 72 65 } //05 00  AntiSpyware
		$a_00_4 = {41 6e 74 69 53 70 79 77 61 72 65 2e 65 78 65 } //05 00  AntiSpyware.exe
		$a_00_5 = {73 70 79 77 61 72 65 64 6f 63 74 6f 72 2e 64 6c 6c } //05 00  spywaredoctor.dll
		$a_00_6 = {53 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 73 73 6c } //05 00  System32\drivers\ssl
		$a_00_7 = {53 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 73 73 6c 5c 30 36 } //01 00  System32\drivers\ssl\06
		$a_00_8 = {6d 61 64 54 6f 6f 6c 73 } //01 00  madTools
		$a_00_9 = {6d 61 64 44 69 73 41 73 6d } //01 00  madDisAsm
		$a_00_10 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 70 79 77 61 72 65 64 6f 63 74 6f 72 2e 64 6c 6c } //01 00  C:\WINDOWS\spywaredoctor.dll
		$a_00_11 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 73 73 6c } //01 00  C:\WINDOWS\System32\drivers\ssl
		$a_00_12 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 73 73 6c 5c 30 36 } //01 00  C:\WINDOWS\System32\drivers\ssl\06
		$a_00_13 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //01 00  VirtualAllocEx
		$a_00_14 = {46 69 6e 64 45 78 65 63 75 74 61 62 6c 65 41 } //01 00  FindExecutableA
		$a_01_15 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  ReadProcessMemory
		$a_01_16 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_01_17 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //01 00  CreateRemoteThread
		$a_00_18 = {4e 74 4f 70 65 6e 53 65 63 74 69 6f 6e } //01 00  NtOpenSection
		$a_00_19 = {4e 74 4d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e } //01 00  NtMapViewOfSection
		$a_00_20 = {4e 74 55 6e 6d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e } //01 00  NtUnmapViewOfSection
		$a_01_21 = {4e 74 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //01 00  NtQuerySystemInformation
		$a_01_22 = {4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 } //00 00  KeServiceDescriptorTable
	condition:
		any of ($a_*)
 
}