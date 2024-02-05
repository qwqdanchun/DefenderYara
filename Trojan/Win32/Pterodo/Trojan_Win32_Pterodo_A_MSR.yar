
rule Trojan_Win32_Pterodo_A_MSR{
	meta:
		description = "Trojan:Win32/Pterodo.A!MSR,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_80_0 = {52 75 6e 50 72 6f 67 72 61 6d 3d 22 68 69 64 63 6f 6e 3a 63 6d 64 2e 65 78 65 20 2f 63 20 70 69 6e 67 20 38 2e 38 2e 38 2e 38 } //RunProgram="hidcon:cmd.exe /c ping 8.8.8.8  01 00 
		$a_02_1 = {52 00 75 00 6e 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 3d 00 22 00 68 00 69 00 64 00 63 00 6f 00 6e 00 3a 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 2f 00 62 00 20 00 25 00 55 00 53 00 45 00 52 00 50 00 52 00 4f 00 46 00 49 00 4c 00 45 00 25 00 5c 00 5c 00 90 02 10 2e 00 76 00 62 00 73 00 90 00 } //01 00 
		$a_02_2 = {52 75 6e 50 72 6f 67 72 61 6d 3d 22 68 69 64 63 6f 6e 3a 63 6d 64 2e 65 78 65 20 2f 63 20 73 74 61 72 74 20 2f 62 20 25 55 53 45 52 50 52 4f 46 49 4c 45 25 5c 5c 90 02 10 2e 76 62 73 90 00 } //01 00 
		$a_80_3 = {47 55 49 4d 6f 64 65 3d 22 32 22 } //GUIMode="2"  01 00 
		$a_80_4 = {49 6e 73 74 61 6c 6c 50 61 74 68 3d 22 25 54 45 4d 50 25 22 } //InstallPath="%TEMP%"  01 00 
		$a_80_5 = {53 65 6c 66 44 65 6c 65 74 65 3d 22 31 22 } //SelfDelete="1"  01 00 
		$a_80_6 = {22 49 45 39 75 49 45 56 79 63 6d 39 79 49 46 4a 6c 63 33 56 74 5a 53 42 4f 5a 58 68 30 44 51 6f 67 44 51 70 } //"IE9uIEVycm9yIFJlc3VtZSBOZXh0DQogDQp  00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Pterodo_A_MSR_2{
	meta:
		description = "Trojan:Win32/Pterodo.A!MSR,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 0a 00 00 01 00 "
		
	strings :
		$a_80_0 = {52 75 6e 50 72 6f 67 72 61 6d 3d 22 68 69 64 63 6f 6e 3a 63 6d 64 2e 65 78 65 20 2f 63 20 65 63 68 6f 20 2e 3e 25 54 45 4d 50 25 5c 5c 6c 6f 67 2e 74 78 74 22 } //RunProgram="hidcon:cmd.exe /c echo .>%TEMP%\\log.txt"  01 00 
		$a_02_1 = {52 00 75 00 6e 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 3d 00 22 00 68 00 69 00 64 00 63 00 6f 00 6e 00 3a 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 63 00 6f 00 70 00 79 00 20 00 2f 00 79 00 20 00 25 00 54 00 45 00 4d 00 50 00 25 00 5c 00 5c 00 90 02 04 2e 00 6c 00 6f 00 67 00 20 00 25 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 25 00 22 00 90 00 } //01 00 
		$a_02_2 = {52 75 6e 50 72 6f 67 72 61 6d 3d 22 68 69 64 63 6f 6e 3a 63 6d 64 2e 65 78 65 20 2f 63 20 63 6f 70 79 20 2f 79 20 25 54 45 4d 50 25 5c 5c 90 02 04 2e 6c 6f 67 20 25 41 50 50 44 41 54 41 25 22 90 00 } //01 00 
		$a_02_3 = {52 00 75 00 6e 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 3d 00 22 00 68 00 69 00 64 00 63 00 6f 00 6e 00 3a 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 63 00 6f 00 70 00 79 00 20 00 2f 00 79 00 20 00 25 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 25 00 5c 00 5c 00 90 02 04 2e 00 6c 00 6f 00 67 00 20 00 90 02 04 2e 00 6c 00 6f 00 67 00 2e 00 76 00 62 00 73 00 22 00 90 00 } //01 00 
		$a_02_4 = {52 75 6e 50 72 6f 67 72 61 6d 3d 22 68 69 64 63 6f 6e 3a 63 6d 64 2e 65 78 65 20 2f 63 20 63 6f 70 79 20 2f 79 20 25 41 50 50 44 41 54 41 25 5c 5c 90 02 04 2e 6c 6f 67 20 90 02 04 2e 6c 6f 67 2e 76 62 73 22 90 00 } //01 00 
		$a_02_5 = {52 00 75 00 6e 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 3d 00 22 00 68 00 69 00 64 00 63 00 6f 00 6e 00 3a 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 2f 00 62 00 20 00 25 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 25 00 5c 00 5c 00 90 02 04 2e 00 6c 00 6f 00 67 00 2e 00 76 00 62 00 73 00 22 00 90 00 } //01 00 
		$a_02_6 = {52 75 6e 50 72 6f 67 72 61 6d 3d 22 68 69 64 63 6f 6e 3a 63 6d 64 2e 65 78 65 20 2f 63 20 73 74 61 72 74 20 2f 62 20 25 41 50 50 44 41 54 41 25 5c 5c 90 02 04 2e 6c 6f 67 2e 76 62 73 22 90 00 } //01 00 
		$a_80_7 = {47 55 49 4d 6f 64 65 3d 22 32 22 } //GUIMode="2"  01 00 
		$a_80_8 = {49 6e 73 74 61 6c 6c 50 61 74 68 3d 22 25 54 45 4d 50 25 22 } //InstallPath="%TEMP%"  01 00 
		$a_80_9 = {53 65 6c 66 44 65 6c 65 74 65 3d 22 31 22 } //SelfDelete="1"  00 00 
	condition:
		any of ($a_*)
 
}