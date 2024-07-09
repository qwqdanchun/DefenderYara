
rule VirTool_Win32_CobaltStrike_C{
	meta:
		description = "VirTool:Win32/CobaltStrike.C,SIGNATURE_TYPE_PEHSTR_EXT,34 00 34 00 1b 00 00 "
		
	strings :
		$a_03_0 = {5b bc 4a 6a 0f 85 ?? 00 00 00 8b } //10
		$a_03_1 = {8e 4e 0e ec 74 [0-03] aa fc 0d 7c 74 [0-03] 54 ca af 91 75 } //10
		$a_01_2 = {b8 0a 4c 53 75 } //10
		$a_03_3 = {68 00 30 00 00 90 0a 0a 00 6a 40 90 0a 10 00 8b ?? 3c } //10
		$a_01_4 = {52 65 66 6c 65 63 74 69 76 65 4c 6f 61 64 65 72 } //10 ReflectiveLoader
		$a_01_5 = {5c 5c 2e 5c 70 69 70 65 5c 62 79 70 61 73 73 75 61 63 } //1 \\.\pipe\bypassuac
		$a_01_6 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 63 00 6c 00 69 00 63 00 6f 00 6e 00 66 00 67 00 2e 00 65 00 78 00 65 00 } //1 \System32\cliconfg.exe
		$a_01_7 = {5b 2d 5d 20 49 43 6f 72 52 75 6e 74 69 6d 65 48 6f 73 74 3a 3a 47 65 74 44 65 66 61 75 6c 74 44 6f 6d 61 69 6e } //1 [-] ICorRuntimeHost::GetDefaultDomain
		$a_01_8 = {5b 2d 5d 20 49 6e 76 6f 6b 65 5f 33 20 } //1 [-] Invoke_3 
		$a_01_9 = {74 00 61 00 73 00 6b 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 00 00 72 00 75 00 6e 00 61 00 73 00 00 00 } //1
		$a_01_10 = {43 6f 6e 73 65 6e 74 50 72 6f 6d 70 74 42 65 68 61 76 69 6f 72 41 64 6d 69 6e 00 } //1
		$a_01_11 = {5c 5c 2e 5c 70 69 70 65 5c 6b 65 79 6c 6f 67 67 65 72 } //1 \\.\pipe\keylogger
		$a_01_12 = {5b 75 6e 6b 6e 6f 77 6e 3a 20 25 30 32 58 5d } //1 [unknown: %02X]
		$a_01_13 = {2f 73 65 6e 64 25 73 00 50 4f 53 54 } //1 猯湥╤s佐呓
		$a_01_14 = {72 63 61 70 3a 2f 2f 00 45 72 72 6f 72 } //1
		$a_01_15 = {5c 5c 2e 5c 70 69 70 65 5c 6e 65 74 76 69 65 77 } //1 \\.\pipe\netview
		$a_01_16 = {20 25 2d 32 32 73 20 25 2d 32 30 73 20 25 2d 31 34 73 20 25 73 } //1  %-22s %-20s %-14s %s
		$a_01_17 = {5c 5c 2e 5c 70 69 70 65 5c 70 6f 77 65 72 73 68 65 6c 6c } //1 \\.\pipe\powershell
		$a_01_18 = {49 43 4c 52 52 75 6e 74 69 6d 65 49 6e 66 6f 3a 3a 49 73 4c 6f 61 64 61 62 6c 65 } //1 ICLRRuntimeInfo::IsLoadable
		$a_01_19 = {5c 5c 2e 5c 70 69 70 65 5c 73 63 72 65 65 6e 73 68 6f 74 } //1 \\.\pipe\screenshot
		$a_01_20 = {00 4a 50 45 47 4d 45 4d 00 } //1
		$a_01_21 = {5c 5c 2e 5c 70 69 70 65 5c 65 6c 65 76 61 74 65 } //1 \\.\pipe\elevate
		$a_01_22 = {5b 2a 5d 20 25 73 20 6c 6f 61 64 65 64 20 69 6e 20 75 73 65 72 73 70 61 63 65 } //1 [*] %s loaded in userspace
		$a_01_23 = {5c 5c 2e 5c 70 69 70 65 5c 68 61 73 68 64 75 6d 70 } //1 \\.\pipe\hashdump
		$a_01_24 = {47 6c 6f 62 61 6c 5c 53 41 4d } //1 Global\SAM
		$a_01_25 = {5c 5c 2e 5c 70 69 70 65 5c 70 6f 72 74 73 63 61 6e } //1 \\.\pipe\portscan
		$a_01_26 = {5c 5c 25 73 5c 69 70 63 24 00 } //1 屜猥楜捰$
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_01_2  & 1)*10+(#a_03_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_01_21  & 1)*1+(#a_01_22  & 1)*1+(#a_01_23  & 1)*1+(#a_01_24  & 1)*1+(#a_01_25  & 1)*1+(#a_01_26  & 1)*1) >=52
 
}