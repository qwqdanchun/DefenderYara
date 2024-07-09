
rule Trojan_BAT_StealerLoader_MAK_MTB{
	meta:
		description = "Trojan:BAT/StealerLoader.MAK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0c 00 00 "
		
	strings :
		$a_81_0 = {53 62 69 65 44 6c 6c 2e 64 6c 6c } //1 SbieDll.dll
		$a_81_1 = {53 65 72 69 61 6c 4e 75 6d 62 65 72 } //1 SerialNumber
		$a_81_2 = {76 6d 77 61 72 65 } //1 vmware
		$a_81_3 = {64 6e 73 70 79 } //1 dnspy
		$a_81_4 = {73 65 6c 65 63 74 20 2a 20 66 72 6f 6d 20 57 69 6e 33 32 5f 42 49 4f 53 } //1 select * from Win32_BIOS
		$a_81_5 = {4d 69 63 72 6f 73 6f 66 74 7c 56 4d 57 61 72 65 7c 56 69 72 74 75 61 6c } //1 Microsoft|VMWare|Virtual
		$a_81_6 = {6d 61 6e 75 66 61 63 74 75 72 65 72 } //1 manufacturer
		$a_81_7 = {73 65 6c 65 63 74 20 2a 20 66 72 6f 6d 20 57 69 6e 33 32 5f 43 6f 6d 70 75 74 65 72 53 79 73 74 65 6d } //1 select * from Win32_ComputerSystem
		$a_02_8 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 20 00 41 00 64 00 64 00 2d 00 4d 00 70 00 50 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 20 00 2d 00 45 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 50 00 61 00 74 00 68 00 [0-30] 2e 00 76 00 62 00 73 00 } //1
		$a_02_9 = {70 6f 77 65 72 73 68 65 6c 6c 20 41 64 64 2d 4d 70 50 72 65 66 65 72 65 6e 63 65 20 2d 45 78 63 6c 75 73 69 6f 6e 50 61 74 68 [0-30] 2e 76 62 73 } //1
		$a_81_10 = {43 6f 6d 6d 61 6e 64 4c 69 6e 65 20 22 72 6d 64 69 72 20 27 43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 44 65 66 65 6e 64 65 72 27 20 2d 52 65 63 75 72 73 65 22 } //1 CommandLine "rmdir 'C:\ProgramData\Microsoft\Windows Defender' -Recurse"
		$a_81_11 = {43 6f 6d 6d 61 6e 64 4c 69 6e 65 20 22 73 74 6f 70 20 57 69 6e 44 65 66 65 6e 64 22 } //1 CommandLine "stop WinDefend"
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_02_8  & 1)*1+(#a_02_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1) >=10
 
}