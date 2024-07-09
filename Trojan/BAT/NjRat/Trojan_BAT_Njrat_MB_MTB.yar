
rule Trojan_BAT_Njrat_MB_MTB{
	meta:
		description = "Trojan:BAT/Njrat.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 "
		
	strings :
		$a_03_0 = {0b 09 09 6f ?? ?? ?? 0a 1b 6a da 6f ?? ?? ?? 0a 00 09 07 16 1a 6f ?? ?? ?? 0a 26 07 16 28 ?? ?? ?? 0a 13 04 09 16 6a 6f ?? ?? ?? 0a 00 11 04 17 da 17 d6 17 da 17 d6 8d ?? ?? ?? 01 0a 08 06 16 11 04 6f ?? ?? ?? 0a 26 08 6f ?? ?? ?? 0a 00 09 6f ?? ?? ?? 0a 00 06 13 05 2b 00 11 05 2a } //1
		$a_01_1 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 } //1 shutdowncomputer
		$a_01_2 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 43 00 4d 00 44 00 } //1 DisableCMD
		$a_01_3 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 } //1 DisableTaskMgr
		$a_01_4 = {47 65 74 54 65 6d 70 50 61 74 68 } //1 GetTempPath
		$a_01_5 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_6 = {53 6c 65 65 70 } //1 Sleep
		$a_01_7 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 46 00 20 00 2f 00 49 00 4d 00 20 00 50 00 49 00 4e 00 47 00 2e 00 45 00 58 00 45 00 } //1 taskkill /F /IM PING.EXE
		$a_01_8 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //1 DownloadFile
		$a_01_9 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_01_10 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 6b 00 20 00 70 00 69 00 6e 00 67 00 20 00 30 00 20 00 26 00 20 00 64 00 65 00 6c 00 } //1 cmd.exe /k ping 0 & del
		$a_01_11 = {6e 00 65 00 74 00 73 00 68 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 61 00 6c 00 6c 00 6f 00 77 00 65 00 64 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 } //1 netsh firewall delete allowedprogram
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=12
 
}