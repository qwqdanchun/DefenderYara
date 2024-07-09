
rule Trojan_WinNT_Cutwail_C_sys{
	meta:
		description = "Trojan:WinNT/Cutwail.C!sys,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 0f 00 00 "
		
	strings :
		$a_00_0 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 6d 00 35 00 } //1 \Device\m5
		$a_00_1 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 6d 00 61 00 69 00 6e 00 33 00 35 00 } //1 \Device\main35
		$a_00_2 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 6d 00 35 00 } //1 \DosDevices\m5
		$a_00_3 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 6d 00 61 00 69 00 6e 00 33 00 35 00 } //1 \DosDevices\main35
		$a_02_4 = {63 3a 5c 30 62 75 6c 6b 6e 65 74 5c 62 75 69 6c 64 5f 72 6f 6f 74 5c 72 2d 6c 6f 61 64 65 72 2e ?? ?? 5c 72 6f 6f 74 5c 69 33 38 36 5c 6d 61 69 6e 2e 70 64 62 } //1
		$a_00_5 = {6d 61 69 6e 2e 73 79 73 } //1 main.sys
		$a_00_6 = {5c 00 3f 00 3f 00 5c 00 43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 77 00 73 00 79 00 73 00 2e 00 64 00 6c 00 6c 00 } //1 \??\C:\WINDOWS\system32\wsys.dll
		$a_00_7 = {5c 00 3f 00 3f 00 5c 00 43 00 3a 00 5c 00 57 00 49 00 4e 00 4e 00 54 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 77 00 73 00 79 00 73 00 2e 00 64 00 6c 00 6c 00 } //1 \??\C:\WINNT\system32\wsys.dll
		$a_01_8 = {5c 53 79 73 74 65 6d 52 6f 6f 74 5c 73 79 73 74 65 6d 33 32 5c 77 73 79 73 2e 64 6c 6c } //1 \SystemRoot\system32\wsys.dll
		$a_01_9 = {68 2e 64 6c 6c 68 77 73 79 73 54 } //1 h.dllhwsysT
		$a_01_10 = {49 6f 44 65 6c 65 74 65 53 79 6d 62 6f 6c 69 63 4c 69 6e 6b } //1 IoDeleteSymbolicLink
		$a_01_11 = {5a 77 43 72 65 61 74 65 46 69 6c 65 } //1 ZwCreateFile
		$a_01_12 = {4b 65 42 75 67 43 68 65 63 6b 45 78 } //1 KeBugCheckEx
		$a_01_13 = {6e 74 6f 73 6b 72 6e 6c 2e 65 78 65 } //1 ntoskrnl.exe
		$a_01_14 = {5a 77 57 72 69 74 65 46 69 6c 65 } //1 ZwWriteFile
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1) >=9
 
}