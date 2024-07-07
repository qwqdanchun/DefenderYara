
rule VirTool_Win32_UACBypassExp_gen_B{
	meta:
		description = "VirTool:Win32/UACBypassExp.gen!B,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 16 00 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_1 = {5c 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_2 = {5c 00 63 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_3 = {5c 00 77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_4 = {5c 00 6d 00 73 00 68 00 74 00 61 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_5 = {5c 00 73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_6 = {5c 00 72 00 65 00 67 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_7 = {5c 00 72 00 65 00 67 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_8 = {5c 00 72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_9 = {5c 00 72 00 65 00 67 00 73 00 76 00 72 00 33 00 32 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_10 = {5c 00 70 00 63 00 61 00 6c 00 75 00 61 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_11 = {5c 00 70 00 79 00 74 00 68 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_12 = {5c 00 70 00 79 00 74 00 68 00 6f 00 6e 00 77 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_13 = {64 00 64 00 62 00 66 00 39 00 62 00 30 00 35 00 2d 00 66 00 63 00 62 00 30 00 2d 00 34 00 66 00 63 00 65 00 2d 00 39 00 34 00 39 00 65 00 2d 00 61 00 36 00 61 00 65 00 38 00 39 00 39 00 61 00 62 00 32 00 37 00 33 00 } //65526 ddbf9b05-fcb0-4fce-949e-a6ae899ab273
		$a_00_14 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 20 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 20 00 54 00 68 00 72 00 65 00 61 00 74 00 20 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 5c 00 } //65526 C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\
		$a_00_15 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 } //65526 C:\Program Files
		$a_00_16 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 63 00 63 00 6d 00 63 00 61 00 63 00 68 00 65 00 5c 00 } //65526 C:\WINDOWS\ccmcache\
		$a_00_17 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 43 00 43 00 4d 00 5c 00 } //65526 C:\WINDOWS\CCM\
		$a_00_18 = {5c 00 53 00 79 00 73 00 56 00 6f 00 6c 00 5c 00 } //65526 \SysVol\
		$a_00_19 = {5c 00 6e 00 65 00 74 00 6c 00 6f 00 67 00 6f 00 6e 00 5c 00 } //65526 \netlogon\
		$a_00_20 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 41 00 54 00 50 00 4f 00 6e 00 62 00 6f 00 61 00 72 00 64 00 69 00 6e 00 67 00 53 00 63 00 72 00 69 00 70 00 74 00 } //65526 \WindowsDefenderATPOnboardingScript
		$a_00_21 = {20 00 2d 00 4e 00 6f 00 6e 00 69 00 6e 00 74 00 65 00 72 00 61 00 63 00 74 00 69 00 76 00 65 00 20 00 } //65526  -Noninteractive 
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*65526+(#a_00_14  & 1)*65526+(#a_00_15  & 1)*65526+(#a_00_16  & 1)*65526+(#a_00_17  & 1)*65526+(#a_00_18  & 1)*65526+(#a_00_19  & 1)*65526+(#a_00_20  & 1)*65526+(#a_00_21  & 1)*65526) >=1
 
}